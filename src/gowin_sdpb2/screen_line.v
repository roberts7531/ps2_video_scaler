//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//Tool Version: V1.9.9.01
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Sat Sep  5 23:53:21 2026

module screen_line (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [15:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [8:0] ada;
input [31:0] din;
input [9:0] adb;

wire [15:0] sdpb_inst_0_dout_w;
wire gw_vcc;
wire gw_gnd;

assign gw_vcc = 1'b1;
assign gw_gnd = 1'b0;

SDPB sdpb_inst_0 (
    .DO({sdpb_inst_0_dout_w[15:0],dout[15:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,gw_gnd}),
    .BLKSELB({gw_gnd,gw_gnd,gw_gnd}),
    .ADA({ada[8:0],gw_gnd,gw_vcc,gw_vcc,gw_vcc,gw_vcc}),
    .DI({din[31:16],din[15:0]}),
    .ADB({adb[9:0],gw_gnd,gw_gnd,gw_gnd,gw_gnd})
);

defparam sdpb_inst_0.READ_MODE = 1'b0;
defparam sdpb_inst_0.BIT_WIDTH_0 = 32;
defparam sdpb_inst_0.BIT_WIDTH_1 = 16;
defparam sdpb_inst_0.BLK_SEL_0 = 3'b000;
defparam sdpb_inst_0.BLK_SEL_1 = 3'b000;
defparam sdpb_inst_0.RESET_MODE = "SYNC";

endmodule //screen_line
