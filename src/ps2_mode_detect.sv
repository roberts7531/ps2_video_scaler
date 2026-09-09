package video_modes;
    localparam logic [2:0] MODE_480I = 3'd0;
    localparam logic [2:0] MODE_576I = 3'd1;
    localparam logic [2:0] MODE_480P = 3'd2;
    localparam logic [2:0] MODE_576P = 3'd3;
    localparam logic [2:0] MODE_720P = 3'd4;
    localparam logic [2:0] MODE_UNKNOWN = 3'd5;
endpackage

module mode_detector (
    input clk,
    
    input hsync,
    input vsync,
    
    output logic [2:0] activeMode,
    output logic clockEnable,
    output logic [11:0] frontPorch,
    output logic [11:0] activePixels
); 



import video_modes::*;

/*
524 = 480p
624 = 576p
749 = 720p
262 = 480i
312 = 576i
*/
logic oldHs;
logic oldVs;
logic [11:0] lineCount;
logic [11:0] totalLines;
logic [1:0] ceCnt;
logic ceEvery2;
logic ceEvery4;

//assign clockEnable = (activeMode == MODE_480P || activeMode == MODE_576P) ? ceEvery2 :
//                     (activeMode == MODE_480I || activeMode == MODE_576I) ? ceEvery4 : 
//                     (activeMode == MODE_720P) ? 1'b1 : 1'b0;


always_comb begin 
    case (activeMode) 
    MODE_480P: begin 
        clockEnable = ceEvery2;
        frontPorch = 12'd61;
        activePixels = 12'd704;
    end
    MODE_576P: begin
        clockEnable = ceEvery2;
        frontPorch = 12'd68;
        activePixels = 12'd704;
    end
    MODE_480I: begin 
        clockEnable = ceEvery4;
        frontPorch = 12'd63;
        activePixels = 12'd704;
    end
    MODE_576I: begin 
        clockEnable = ceEvery4;
        frontPorch = 12'd68;
        activePixels = 12'd704;
    end
    MODE_720P: begin 
        clockEnable = 1'b1;
        frontPorch = 12'd210 + 12'd110; // cropping to fit into 1024 wide
        activePixels = 12'd1024;
    end
    default: begin 
        clockEnable = 1'b0;
        frontPorch = 12'd61;
        activePixels = 12'd704;
    end

    endcase
end

always @(posedge clk) begin 
    oldHs <= hsync;
    oldVs <= vsync;
    ceCnt <= ceCnt + 2'd1;
    ceEvery4 <= ~|ceCnt;
    ceEvery2 <= ~ceCnt[0];
    if(oldHs && !hsync) begin
        lineCount <= lineCount + 12'd1;
        //hsync falling
    end

    if(oldVs && !vsync) begin
        totalLines <= lineCount;
        lineCount <= 12'd0;
        //vsync falling
    end

    if(totalLines > 255 && totalLines < 270) activeMode <= MODE_480I;
    else if(totalLines > 300 && totalLines < 320) activeMode <= MODE_576I;
    else if(totalLines > 520 && totalLines < 527) activeMode <= MODE_480P;
    else if(totalLines > 620 && totalLines < 628) activeMode <= MODE_576P;
    else if(totalLines > 745 && totalLines < 755) activeMode <= MODE_720P;
    else activeMode <= MODE_UNKNOWN;

    

end



endmodule