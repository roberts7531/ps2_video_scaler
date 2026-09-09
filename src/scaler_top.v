module scaler_top (
    // Clock
    input  wire        clk27,

    // PS2 input video
    input  wire        PS2_SCL,
    input  wire        PS2_SDA,

    input  wire [5:0]  PS2_R,
    input  wire [5:0]  PS2_G,
    input  wire [5:0]  PS2_B,

    input  wire        PS2_HSYNC,
    input  wire        PS2_VSYNC, 
    input  wire        PS2_PCLK,
    // LCD output
    output reg [5:0]  LCD_R,
    output reg [5:0]  LCD_G,
    output reg [5:0]  LCD_B,

    output wire        LCD_HSYNC,
    output wire        LCD_VSYNC,
    output wire        LCD_DE,
    output wire        LCD_PCLK,
    output wire        LCD_BL,

    // SPI bus
    input wire        SPI_CS,
    input wire        SPI_CLK,
    input wire        SPI_MOSI,
    output  reg       SPI_MISO,


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
reg [7:0] tx_byte;
reg [7:0] rx_byte;
reg [3:0] rx_bit_count;
reg       byteRxDone;
reg [7:0] latchedByte;
wire [7:0] response = rx_byte + 8'h01;
reg[9:0] ySize;

always @(posedge SPI_CLK or posedge SPI_CS) begin
    if (SPI_CS) begin
        rx_bit_count <= 0;
        byteRxDone   <= 0;
    end else begin
        byteRxDone <= 0;

        rx_byte <= {rx_byte[6:0], SPI_MOSI};

        if (rx_bit_count == 4'h7) begin
            rx_bit_count <= 0;
            byteRxDone   <= 1;
            latchedByte <= {rx_byte[6:0], SPI_MOSI};
        end else begin
            rx_bit_count <= rx_bit_count + 4'd1;
        end
    end
end

typedef enum logic [1:0] {
    STATE_IDLE,
    STATE_ADDR_HI,
    STATE_ADDR_LO,
    STATE_WRITE
} state_t;

state_t state;
reg       write_req;
reg [9:0] write_addr;
reg [9:0] vram_addr;
reg [7:0] write_data;

always @(negedge SPI_CLK or posedge SPI_CS) begin 
    if (SPI_CS) begin 
        state <= STATE_IDLE;
    end else if (byteRxDone) begin

        case (state)

            STATE_IDLE: begin
                case (latchedByte)
                    8'hDE: state <= STATE_ADDR_HI;
                    8'hAD: state <= STATE_WRITE;
                    default: state <= STATE_IDLE;
                endcase
            end

            STATE_ADDR_HI: begin
                vram_addr[9:8] <= latchedByte[1:0];
                state <= STATE_ADDR_LO;
            end

            STATE_ADDR_LO: begin
                vram_addr[7:0] <= latchedByte;
                state <= STATE_IDLE;
            end

            STATE_WRITE: begin
                write_addr <= vram_addr;
                write_data <= latchedByte;
                write_req  <= ~write_req;

                vram_addr <= vram_addr + 1'b1;
                state <= STATE_IDLE;
            end

        endcase

    end
end
wire [10:0] h_pos;
wire [9:0] v_pos;
lcd_timing lcdtiming (
    .clk(LCD_PCLK),
    .LCD_HSYNC,
    .LCD_VSYNC,
    .LCD_DE,

    .h_pos,
    .v_pos


); 
reg write_req_sync1;
reg write_req_sync2;
reg write_req_seen;
reg [7:0] vram [0:1023];
always @(posedge LCD_PCLK) begin
    write_req_sync1 <= write_req;
    write_req_sync2 <= write_req_sync1;

    if (write_req_sync2 != write_req_seen) begin
        write_req_seen <= write_req_sync2;

        vram[write_addr] <= write_data;
    end
end

assign LCD_BL = 1;

pll_lcd lcd_pll(
        .clkout(LCD_PCLK), //output clkout
        .clkin(clk27) //input clkin
    );


reg oldDe;
reg [9:0] lineRequested;
reg sdramReadReq;
wire sdramReadAck;
always @(posedge LCD_PCLK) begin 
    oldDe <= LCD_DE;

    if (oldDe && !LCD_DE) begin 
        lineRequested <= ((v_pos + 10'd1) * (ySize + 1))/600;
        sdramReadReq <= 1;
    end
    if (sdramReadAck) begin 
        sdramReadReq <= 0;
    end


end


reg osd_pixel;
reg [5:0] osd_y;
reg [3:0] y_scale;

wire [6:0] osd_x = h_pos[9:3];

always @(posedge LCD_PCLK) begin
    if (v_pos == 12 && h_pos == 0) begin
        osd_y   <= 0;
        y_scale <= 0;
    end
    else if (h_pos == 0 && v_pos > 12 && v_pos < 588) begin
        if (y_scale == 8) begin
            y_scale <= 0;
            osd_y   <= osd_y + 1'b1;
        end
        else begin
            y_scale <= y_scale + 1'b1;
        end
    end
end

always @(*) begin
    if ((v_pos >= 12) && (v_pos < 588))
        osd_pixel = vram[{osd_y[5:3], 7'b0} + osd_x][osd_y[2:0]];
    else
        osd_pixel = 1'b0; 
end
always @(posedge LCD_PCLK) begin
    if (LCD_DE) begin
        LCD_R <= osd_pixel ? 6'h3f : {screenData[15:11], 1'b0};
        LCD_G <= osd_pixel ? 6'h3f : screenData[10:5];
        LCD_B <= osd_pixel ? 6'h3f : {screenData[4:0], 1'b0};
    end
end
reg [15:0] h_total;
reg [15:0] v_total;

reg [15:0] h_count;
reg [15:0] v_count;

reg prev_hs;
reg prev_vs;
reg halfpclk;
/*
pix_clk_480p pixClk480p(
        .clkout(PS2_480P_CLK), //output clkout
        .hclkin(PS2_PCLK), //input hclkin
        .resetn(1) //input resetn
    );
*/


reg        video_de;
reg [10:0] pixel_x;
reg [9:0]  pixel_y;
reg [5:0] line_ram [0:703];
reg oldHs;
wire ps2CommitAck;
reg ps2CommitReq;
reg [9:0] ps2LineToCommit;
always @(posedge PS2_PCLK) begin
    oldHs <= PS2_HSYNC;
    if (oldHs && !PS2_HSYNC) begin 
        ps2CommitReq <= 1;
        ps2LineToCommit <= pixel_y -yOffset + 10'd1;
    end
    if (ps2CommitAck) begin 
        ps2CommitReq <=0;
    end


end

sdram_pll sdr_pll(
        .clkout(sdram_clk), //output clkout
        .lock(lock_o), //output lock
        .clkin(clk27) //input clkin
    );

wire [31:0] rgbOut;
wire [10:0] xPosOut;
wire vramWrEn; 

wire [15:0] screenData;
screen_line screen_line(
        .dout(screenData), //output [15:0] dout
        .clka(sdram_clk), //input clka
        .cea(vramWrEn), //input cea
        .reseta(1'b0), //input reseta
        .clkb(LCD_PCLK), //input clkb
        .ceb(1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(xPosOut), //input [8:0] ada
        .din(rgbOut), //input [31:0] din
        .adb(((LCD_DE ? h_pos + 2 : 0) * activePixels)/1024 ) //input [9:0] adb
    );



wire [31:0] fifoDataIn;
wire fifoRdEn;
wire [8:0] writeXptr;
sdram_interface sdr_interface (
    .clk(sdram_clk),

    .lineRequested,
    .sdramReadReq,
    .sdramReadAck,

    .ps2LineToCommit,
    .ps2CommitReq,
    .ps2CommitAck,
        
    .rgbOut,
    .xPosOut,
    .vramWrEn,
    .fifoRdEn,
    .fifoDataIn,
    .writeXptr,
    .O_sdram_clk,
    .O_sdram_cke,
    .O_sdram_cs_n,
    .O_sdram_cas_n,
    .O_sdram_ras_n,
    .O_sdram_wen_n,
    .O_sdram_dqm,
    .O_sdram_addr,
    .O_sdram_ba,
    .IO_sdram_dq
);

 wire clockEnable;

ps2_line_ram line_ram_ps2(
        .dout(fifoDataIn), //output [17:0] dout
        .clka(PS2_PCLK), //input clka
        .cea(video_de && clockEnable  && pixel_x <1024), //input cea
        .reseta(!PS2_VSYNC), //input reseta
        .clkb(sdram_clk), //input clkb  
        .ceb(fifoRdEn), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(pixel_x), //input [9:0] ada
        .din({PS2_R[5:1],PS2_G,PS2_B[5:1]}),//PS2_G,PS2_B[5:1]}), //input [17:0] din
        //.din(pixel_x),
        .adb(writeXptr) //input [9:0] adb
    );
wire [11:0] frontPorch;
wire [11:0] activePixels;
mode_detector modedetect(
    .clk(PS2_PCLK),
    
    .hsync(PS2_HSYNC),
    .vsync(PS2_VSYNC),
    
    //.activeMode,
    .clockEnable,
    .frontPorch,
    .activePixels
);
reg[9:0] yOffset;
reg shouldRecheckYOffset;
reg[9:0] lastActiveLine;
always @(posedge PS2_PCLK) begin
    halfpclk <= ~halfpclk;

    if (clockEnable) begin

        // New line
        if (!prev_hs && PS2_HSYNC) begin
            h_count <= 0;
            pixel_x <= 0;
            pixel_y <= pixel_y + 1'b1;
            video_de <= 0;
        end
        else begin
            h_count <= h_count + 1'b1;

            // 62 clocks of back porch, then 704 active pixels
            if ((h_count >= frontPorch) && (h_count < frontPorch + activePixels)) begin
                video_de <= 1'b1;
                pixel_x <= h_count - frontPorch;
                if (PS2_R || PS2_G || PS2_B) lastActiveLine <= pixel_y;
            end
            else begin
                video_de <= 1'b0;
            end
        end

        // New frame
        if (!prev_vs && PS2_VSYNC) begin
            pixel_y <= 0;
            shouldRecheckYOffset <= 1;
            ySize <= lastActiveLine - yOffset;
        end

        if(shouldRecheckYOffset&& (PS2_R || PS2_G || PS2_B)) begin 
            yOffset <= pixel_y;
            shouldRecheckYOffset <= 0;
        end 

        prev_hs <= PS2_HSYNC;
        prev_vs <= PS2_VSYNC;
    end
end



endmodule