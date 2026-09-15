module screen_bram_module(
    input readClk,
    input writeClk,

    input [9:0] lcdReadAddr,

    input activeBuffer,
    input wrEn,
    input [10:0] writeAddr,
    input [31:0] dataIn,

    output [15:0] pixel00,
    output [15:0] pixel01,
    output [15:0] pixel10,
    output [15:0] pixel11

); 

screen_line screen_line(
        .dout(pixel00), //output [15:0] dout
        .clka(writeClk), //input clka
        .cea(wrEn && !activeBuffer), //input cea
        .reseta(1'b0), //input reseta
        .clkb(readClk), //input clkb
        .ceb(1'b1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(writeAddr), //input [8:0] ada
        .din(dataIn), //input [31:0] din
        .adb(lcdReadAddr) //input [9:0] adb
    );

screen_line screen_line_xp1(
        .dout(pixel01), //output [15:0] dout
        .clka(writeClk), //input clka
        .cea(wrEn && !activeBuffer), //input cea
        .reseta(1'b0), //input reseta
        .clkb(readClk), //input clkb
        .ceb(1'b1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(writeAddr), //input [8:0] ada
        .din(dataIn), //input [31:0] din
        .adb(lcdReadAddr + 10'd1 ) //input [9:0] adb
    );

screen_line screen_line_yp1(
        .dout(pixel10), //output [15:0] dout
        .clka(writeClk), //input clka
        .cea(wrEn && activeBuffer), //input cea
        .reseta(1'b0), //input reseta
        .clkb(readClk), //input clkb
        .ceb(1'b1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(writeAddr), //input [8:0] ada
        .din(dataIn), //input [31:0] din
        .adb(lcdReadAddr) //input [9:0] adb
    );

screen_line screen_line_xp1_yp1(
        .dout(pixel11), //output [15:0] dout
        .clka(writeClk), //input clka
        .cea(wrEn && activeBuffer), //input cea
        .reseta(1'b0), //input reseta
        .clkb(readClk), //input clkb
        .ceb(1'b1), //input ceb
        .resetb(1'b0), //input resetb
        .oce(1'b1), //input oce
        .ada(writeAddr), //input [8:0] ada
        .din(dataIn), //input [31:0] din
        .adb(lcdReadAddr + 10'd1 ) //input [9:0] adb
    );


endmodule