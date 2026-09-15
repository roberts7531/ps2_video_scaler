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
    output reg        LCD_BL,

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
reg [7:0] rx_byte;
reg [3:0] rx_bit_count;
reg       byteRxDone;
reg [7:0] latchedByte;
wire [9:0] ySize;

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
localparam reg [6:0] backlightLev = 7'd3;

backlight_control backlight (
    .clk(LCD_PCLK),
    .backlightLevel(backlightLev),
    .backlightPwm(LCD_BL)
)

pll_lcd lcd_pll(
        .clkout(LCD_PCLK), //output clkout
        .clkin(clk27) //input clkin
    );


reg [9:0] lineRequested;
reg sdramReadReq;
wire sdramReadAck;
typedef enum logic [3:0] {
    IDLE, //1
    READ1_ACK, //3 
    READ2,//4
    READ2_ACK, //5
    WRITE_LINE, //6
    WAIT_WRITE_DONE,
    END_WRITE_LINE

} line_requester_state_t;

line_requester_state_t lreq_state;
logic ackSync2, ackSync;
logic activeBuffer;
always @(posedge LCD_PCLK) begin 
    oldDe <= LCD_DE;
    
    ackSync2 <= sdramReadAck;
    ackSync <= ackSync2;

    case(lreq_state) 
        IDLE: begin 
            if (h_pos == 800) begin 
                activeBuffer <= 0;
                lineRequested <= y_acc[31:10] - 1;

                sdramReadReq <= 1;
                lreq_state <= READ1_ACK;
            end
        end
        READ1_ACK: begin 
            if(ackSync) begin 
                sdramReadReq <= 0;

                lreq_state <= READ2;
            end
        end
        READ2: begin 
            if(!ackSync) begin 
                sdramReadReq <= 1;
                activeBuffer <= 1;
                lineRequested <= lineRequested + 10'd1;
                lreq_state <= READ2_ACK;
            end
        end
        READ2_ACK: begin 
            if(ackSync) begin 
                sdramReadReq <= 0;
                lreq_state <= IDLE;
            end
        end

    endcase

end

reg osd_pixel;

wire osd_active =
    (h_pos >= 11'd880) && (h_pos < 11'd1008) &&
    (v_pos >= 10'd520) && (v_pos < 10'd584);

wire [6:0] osd_x = h_pos[6:0];
wire [5:0] osd_y = v_pos[5:0];

always @(*) begin
    if (osd_active)
        osd_pixel = vram[{osd_y[5:3], 7'b0} + osd_x][osd_y[2:0]];
    else
        osd_pixel = 1'b0;
end

wire [5:0] r_final;
wire [5:0] g_final;
wire [5:0] b_final;
always @(posedge LCD_PCLK) begin
    if (LCD_DE) begin
        if (osd_pixel) begin
            LCD_R <= 6'h3f;
            LCD_G <= 6'h3f;
            LCD_B <= 6'h3f;
        end else begin
            LCD_R <= r_final;
            LCD_G <= g_final;
            LCD_B <= b_final;
        end
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


reg [31:0] x_acc;
reg [31:0] y_acc;
wire [31:0] y_step;
always @(posedge LCD_PCLK) begin 
    if (!LCD_DE) x_acc <= 0;
    else x_acc <= x_acc + activePixels;

    if (h_pos == 1343) begin
    if (v_pos == 634)
        y_acc <= 0;
    else
        y_acc <= y_acc + y_step;

    
end
end

reg [9:0] frac_d;
wire [9:0] y_frac_d = y_acc[9:0];


always @(posedge LCD_PCLK) begin
    frac_d   <= x_acc[9:0];
end

wire [9:0] lcdReadAddr = x_acc[31:10];//(LCD_DE ? h_pos + 2 : 0);// * activePixels)/1024;
wire [15:0] pixel00;
wire [15:0] pixel01;
wire [15:0] pixel10;
wire [15:0] pixel11;
screen_bram_module screen_bram_module(
    .readClk(LCD_PCLK),
    .writeClk(sdram_clk),

    .lcdReadAddr,

    .activeBuffer,
    .wrEn(vramWrEn),
    .writeAddr(xPosOut),
    .dataIn(rgbOut),

    .pixel00,
    .pixel01,
    .pixel10,
    .pixel11
);

bilinear_scaler scaler(
    .pixel00,
    .pixel01,
    .pixel10,
    .pixel11,
    .xFrac(frac_d),
    .yFrac(y_frac_d),

    .rOut(r_final),
    .gOut(g_final),
    .bOut(b_final)
); 

wire [9:0] lineToSaveYpos;
wire [31:0] lineSaveReadData;
wire lineSaveReq;
wire lineSaveAck;
wire lineSaveRdEn;
wire [8:0] lineSaveReadAddr;
sdram_interface sdr_interface (
    .clk(sdram_clk),
    //output port
    .lineRequested,
    .sdramReadReq,
    .sdramReadAck,
    .rgbOut,
    .xPosOut,
    .vramWrEn,

    //input port
    .lineToSaveYpos,
    .lineSaveReq,
    .lineSaveAck,
    .lineSaveRdEn,
    .lineSaveReadData,
    .lineSaveReadAddr,

    //sdram interface
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
wire [11:0] frontPorch;
wire [11:0] activePixels;
wire [9:0] yStartMax;
wire [9:0] yStopMin;
wire [2:0] activeMode;
mode_detector modedetect(
    .clk(PS2_PCLK),
    
    .hsync(PS2_HSYNC),
    .vsync(PS2_VSYNC),
    
    .activeMode,
    .clockEnable,
    .frontPorch,
    .activePixels,
    .yStartMax,
    .yStopMin
);
ps2_capture ps2_capture(
    clk(PS2_PCLK),
    .clockEnable,

    .ps2_r(PS2_R),
    .ps2_g(PS2_G),
    .ps2_b(PS2_B),

    .ps2_hsync(PS2_HSYNC),
    .ps2_vsync(PS2_VSYNC),


    .lineSaveClk(sdram_clk),
    .lineSaveReq,
    .lineToSaveYpos,
    .lineSaveAck,
    .lineSaveReadAddr,
    .lineSaveReadData,
    .lineSaveRdEn,

    .activeMode,
    .frontPorch,
    .activePixels,

    .ySize,
    .y_step

); 




endmodule