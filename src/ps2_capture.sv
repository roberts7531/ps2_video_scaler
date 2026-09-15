module ps2_capture(
    input clk,
    input clockEnable,

    input [5:0] ps2_r,
    input [5:0] ps2_g,
    input [5:0] ps2_b,

    input ps2_hsync,
    input ps2_vsync,


    input        lineSaveClk,
    output logic lineSaveReq,
    output logic [9:0] lineToSaveYpos,
    input        lineSaveAck,
    input [9:0]  lineSaveReadAddr,
    output [31:0] lineSaveReadData,
    input        lineSaveRdEn,

    input [2:0] activeMode,
    input [15:0] frontPorch,
    input [15:0] activePixels,

    output logic [9:0] ySize,
    output logic [31:0] y_step

); 

logic oldHs, oldVs;
wire hs_rising = ps2_hsync && !oldHs;
wire hs_falling = !ps2_hsync && oldHs;
wire vs_rising = ps2_vsync && !oldVs;
wire vs_falling = !ps2_vsync && oldVs;
always @(posedge clk) begin 
    oldHs <= ps2_hsync;
    oldVs <= ps2_vsync;
end

wire pixelActive = (ps2_r || ps2_g || ps2_b);


reg        video_de;
reg [10:0] pixel_x;
reg [9:0]  pixel_y;
reg [15:0] h_count;
reg [15:0] v_count;
reg[9:0] yOffset;
reg shouldRecheckYOffset;
reg[9:0] lastActiveLine;
reg[9:0] actualYLast;
reg updatedStartModeChange;
reg updatedEndModeChange;
reg [2:0] oldMode;
reg [2:0] frameDelay = 3'd5;
always @(posedge clk) begin
    oldMode <= activeMode;
    
    if(oldMode != activeMode) begin 
        updatedStartModeChange <= 0;
        updatedEndModeChange <= 0;
        frameDelay <= 3'd7;
        lastActiveLine <= 100;
    end

    if (clockEnable) begin

        // New line
        if (hs_rising) begin
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
                if (pixelActive) lastActiveLine <= pixel_y;
            end
            else begin
                video_de <= 1'b0;
            end
        end

        // New frame
        if (vs_rising) begin
            if(frameDelay > 0) frameDelay <= frameDelay - 3'd1;
            pixel_y <= 0;
            shouldRecheckYOffset <= 1;
            if (!updatedEndModeChange && (frameDelay == 3'd0) ) begin 
                updatedEndModeChange <= 1;
                ySize <= 0;
            end else if (((lastActiveLine - yOffset) > ySize) && (lastActiveLine >= yOffset)) begin 
                ySize <= lastActiveLine - yOffset; 
                y_step <= ((lastActiveLine - yOffset) * 1024) / 600;
            end
            actualYLast <= lastActiveLine;
        end

        if(shouldRecheckYOffset&& (pixelActive)) begin 
            if(!updatedStartModeChange ) begin 
                yOffset <= pixel_y;
                updatedStartModeChange <= 1;
            end
            if (pixel_y < yOffset) yOffset <= pixel_y;
            //yOffset <= (pixel_y > yStartMax) ? yStartMax: pixel_y;
            shouldRecheckYOffset <= 0;
        end 

    end
end


ps2_line_ram line_ram_ps2(
        .dout(lineSaveReadData), //output [17:0] dout
        .clka(clk), //input clka
        .cea(video_de && clockEnable  && pixel_x <1024), //input cea
        .reseta(!ps2_vsync), //input reseta
        .clkb(lineSaveClk), //input clkb  
        .ceb(lineSaveRdEn), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(pixel_x), //input [9:0] ada
        .din({ps2_r[5:1],ps2_g,ps2_b[5:1]}),//input [17:0] din
        .adb(lineSaveReadAddr) //input [9:0] adb
    );


logic lineSaveAckSync, lineSaveAckSync2;
always @(posedge clk) begin
    lineSaveAckSync2 <= lineSaveAck;
    lineSaveAckSync <= lineSaveAckSync2;

    if (hs_falling) begin 
        lineSaveReq <= 1;
        lineToSaveYpos <= pixel_y -yOffset + 10'd1;
    end

    if (lineSaveAckSync) begin 
        lineSaveReq <=0;
    end


end


endmodule 