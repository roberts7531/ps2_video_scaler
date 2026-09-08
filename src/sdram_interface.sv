module sdram_interface (
    input clk,
    output reg [31:0] rgbOut,
    output reg [10:0]  xPosOut,
    output reg    vramWrEn,
    
    input [9:0] lineRequested,
    input       sdramReadReq,
    output reg     sdramReadAck,


    input [9:0] ps2LineToCommit,
    input       ps2CommitReq,
    output reg  ps2CommitAck,
    
    output reg fifoRdEn,
    input [31:0] fifoDataIn,
    output reg [9:0] writeXptr,
    output reg fifoRst,
    output O_sdram_clk,
    output O_sdram_cke,
    output O_sdram_cs_n,
    output O_sdram_cas_n,
    output O_sdram_ras_n,
    output O_sdram_wen_n,
    output [3:0] O_sdram_dqm,
    output [10:0] O_sdram_addr,
    output [1:0] O_sdram_ba, 
    inout [31:0] IO_sdram_dq

);
logic readReqSync, readReqSync2;
logic writeReqSync, writeReqSync2;
always @(posedge clk) begin 
    readReqSync2 <= sdramReadReq;
    readReqSync <= readReqSync2;

    writeReqSync2 <= ps2CommitReq;
    writeReqSync <= writeReqSync2;
end


logic [7:0] I_sdrc_data_len;
logic [20:0] I_sdrc_addr;
logic [2:0]  I_sdrc_cmd;
logic I_sdrc_cmd_en;
wire [31:0] O_sdrc_data;
logic [31:0] I_sdrc_data;
SDRAM_Controller_HS_Top sdrc(
		.O_sdram_clk, //output O_sdram_clk
		.O_sdram_cke, //output O_sdram_cke
		.O_sdram_cs_n, //output O_sdram_cs_n
		.O_sdram_cas_n, //output O_sdram_cas_n
		.O_sdram_ras_n, //output O_sdram_ras_n
		.O_sdram_wen_n, //output O_sdram_wen_n
		.O_sdram_dqm, //output [3:0] O_sdram_dqm
		.O_sdram_addr, //output [10:0] O_sdram_addr
		.O_sdram_ba, //output [1:0] O_sdram_ba
		.IO_sdram_dq, //inout [31:0] IO_sdram_dq


		.I_sdrc_rst_n(1), //input I_sdrc_rst_n
		.I_sdrc_clk(clk), //input I_sdrc_clk
		.I_sdram_clk(clk), //input I_sdram_clk
		.I_sdrc_cmd_en(I_sdrc_cmd_en), //input I_sdrc_cmd_en
		.I_sdrc_cmd(I_sdrc_cmd), //input [2:0] I_sdrc_cmd
		.I_sdrc_precharge_ctrl(1'b1), //input I_sdrc_precharge_ctrl
		.I_sdram_power_down(1'b0), //input I_sdram_power_down
		.I_sdram_selfrefresh(1'b0), //input I_sdram_selfrefresh
		.I_sdrc_addr(I_sdrc_addr), //input [20:0] I_sdrc_addr
		.I_sdrc_dqm(4'b0000), //input [3:0] I_sdrc_dqm
		.I_sdrc_data(I_sdrc_data), //input [31:0] I_sdrc_data
		.I_sdrc_data_len(I_sdrc_data_len), //input [7:0] I_sdrc_data_len
		.O_sdrc_data(O_sdrc_data), //output [31:0] O_sdrc_data
		.O_sdrc_init_done(O_sdrc_init_done), //output O_sdrc_init_done
		.O_sdrc_cmd_ack(O_sdrc_cmd_ack) //output O_sdrc_cmd_ack
	);


typedef enum logic [3:0] {
    STARTUP, //0
    IDLE, //1
    ACTIVATE_LINE_READ,//2 
    READ_LINE, //3 
    END_READ_LINE,//4
    ACTIVATE_LINE_WRITE, //5
    WRITE_LINE, //6
    END_WRITE_LINE, //7
    COOLDOWN

} sdram_state_t;

sdram_state_t sdram_fsm_state;
wire reset_n_sync;
assign reset_n_sync = 1;
localparam logic [2:0] NOP_CMD = 3'b111;
localparam logic [2:0] ACT_CMD = 3'b011;
localparam logic [2:0] READ_CMD = 3'b101;
localparam logic [2:0] WRITE_CMD = 3'b100;
localparam logic [2:0] PRECH_CMD = 3'b010;
localparam logic [2:0] REFRESH_CMD=  3'b001;

// timing related
localparam logic [2:0] READ_DELAY = 7;
logic [4:0] readDelay;
logic [7:0] burstLen;
logic [20:0] burstAddr;
logic [5:0] cooldownTimer;

localparam logic [2:0] BURSTS_PER_LINE = 5;
logic [2:0] currentBurst;
always @(posedge clk) begin
                          vramWrEn <= 0;
I_sdrc_cmd_en <= 0;
    fifoRst <= 0;
    if (~reset_n_sync) begin
        sdram_fsm_state <= STARTUP;
    end else begin  
        case (sdram_fsm_state)
            
            STARTUP: begin 
                if (O_sdrc_init_done) sdram_fsm_state <= IDLE;
            end

            IDLE: begin 
               I_sdrc_cmd <= ACT_CMD;

               if(readReqSync) begin 
                    sdram_fsm_state <= ACTIVATE_LINE_READ;
                    I_sdrc_data_len <= 8'hff;
                    I_sdrc_cmd_en <= 1;
                    I_sdrc_addr <= {lineRequested,8'd0};
                    currentBurst <= 0;
               end else if (writeReqSync) begin 
                    sdram_fsm_state <= ACTIVATE_LINE_WRITE;
                    I_sdrc_data_len <= 8'hff;
                    I_sdrc_cmd_en <= 1;
                    I_sdrc_addr <= {ps2LineToCommit,8'd0};
                    currentBurst <= 0;
               end
            end

            ACTIVATE_LINE_READ: begin 
                I_sdrc_cmd_en <= 0;
                if (O_sdrc_cmd_ack) begin 
                    readDelay <= READ_DELAY;
                    I_sdrc_addr <= {lineRequested,8'd0};
                    I_sdrc_cmd <= READ_CMD;
                    I_sdrc_cmd_en <= 1;
                    sdram_fsm_state <= READ_LINE;
                    burstLen <= 0;
                end

            end

            READ_LINE: begin 
                I_sdrc_cmd_en <= 0;
                if (readDelay == 2) begin 
                    xPosOut <= burstLen;
                    vramWrEn <= 1;
                    rgbOut <= O_sdrc_data;
                    if (burstLen == 8'hff) begin 
                        burstLen <= 0;
                        sdram_fsm_state <= END_READ_LINE;
                    end else burstLen <= burstLen + 1'b1;
                end else readDelay <= readDelay - 1'b1; 
            end

            END_READ_LINE: begin 
                //if (currentBurst == BURSTS_PER_LINE) begin 
                    sdramReadAck <= 1;
                    
                    if(~readReqSync) begin 
                        currentBurst <= 0;
                        sdramReadAck <= 0;
                        cooldownTimer <= 5;
                        sdram_fsm_state <= COOLDOWN;
                    end
                //end else begin 
                //    currentBurst <= currentBurst + 1;
                //    sdram_fsm_state <= ACTIVATE_LINE_READ;
                //    I_sdrc_data_len <= 8'hff;
                //    I_sdrc_cmd <= ACT_CMD;
                //    I_sdrc_cmd_en <= 1;
                //    I_sdrc_addr <= {lineRequested,8'd0};
                //end
                
            end
            ACTIVATE_LINE_WRITE: begin 
                I_sdrc_cmd_en <= 0;
                fifoRdEn <=1;
                if (O_sdrc_cmd_ack) begin 
                    I_sdrc_addr <= {ps2LineToCommit,8'd0};//(ps2LineToCommit << 10) + (ps2LineToCommit << 8) + (currentBurst << 8);
                    I_sdrc_cmd <= WRITE_CMD;
                    I_sdrc_data <= fifoDataIn;
                    I_sdrc_cmd_en <= 1;
                    sdram_fsm_state <= WRITE_LINE;
                    burstLen <= 0;
                    fifoRdEn <= 1;
                end
            end
            WRITE_LINE: begin 
                I_sdrc_cmd_en <= 0;
                I_sdrc_data <= fifoDataIn;
                writeXptr <= burstLen;
                if (burstLen == 8'hff) begin 
                    burstLen <= 0; 
                    fifoRdEn <=0;
                    
                    sdram_fsm_state <= END_WRITE_LINE;


                end else burstLen <= burstLen + 1;
            end
            END_WRITE_LINE: begin 
                //if (currentBurst == BURSTS_PER_LINE) begin 
                    ps2CommitAck <= 1;
                    
                    if(~writeReqSync) begin 
                        currentBurst <= 0;
                        ps2CommitAck <= 0;
                        sdram_fsm_state <= COOLDOWN;
                        cooldownTimer <= 5;
                    end
                /*end else begin 
                    currentBurst <= currentBurst + 1;
                    sdram_fsm_state <= ACTIVATE_LINE_WRITE;
                    I_sdrc_data_len <= 8'hff;
                    I_sdrc_cmd <= ACT_CMD;
                    I_sdrc_cmd_en <= 1;
                    I_sdrc_addr <= {ps2LineToCommit,8'd0};

                end*/
            end
            COOLDOWN: begin 
                if(cooldownTimer == 0) begin 
                    sdram_fsm_state <= IDLE;
                end else cooldownTimer <= cooldownTimer -1;
            end
           
        endcase

    end

end 
endmodule