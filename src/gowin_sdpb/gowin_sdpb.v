//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//Tool Version: V1.9.9.01
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Sat Sep  5 18:57:15 2026

module Gowin_SDPB (dout, clka, cea, reseta, clkb, ceb, resetb, oce, ada, din, adb);

output [17:0] dout;
input clka;
input cea;
input reseta;
input clkb;
input ceb;
input resetb;
input oce;
input [9:0] ada;
input [17:0] din;
input [9:0] adb;

wire [17:0] sdpx9b_inst_0_dout_w;
wire gw_vcc;
wire gw_gnd;

assign gw_vcc = 1'b1;
assign gw_gnd = 1'b0;

SDPX9B sdpx9b_inst_0 (
    .DO({sdpx9b_inst_0_dout_w[17:0],dout[17:0]}),
    .CLKA(clka),
    .CEA(cea),
    .RESETA(reseta),
    .CLKB(clkb),
    .CEB(ceb),
    .RESETB(resetb),
    .OCE(oce),
    .BLKSELA({gw_gnd,gw_gnd,gw_gnd}),
    .BLKSELB({gw_gnd,gw_gnd,gw_gnd}),
    .ADA({ada[9:0],gw_gnd,gw_gnd,gw_vcc,gw_vcc}),
    .DI({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,din[17:0]}),
    .ADB({adb[9:0],gw_gnd,gw_gnd,gw_gnd,gw_gnd})
);

defparam sdpx9b_inst_0.READ_MODE = 1'b0;
defparam sdpx9b_inst_0.BIT_WIDTH_0 = 18;
defparam sdpx9b_inst_0.BIT_WIDTH_1 = 18;
defparam sdpx9b_inst_0.BLK_SEL_0 = 3'b000;
defparam sdpx9b_inst_0.BLK_SEL_1 = 3'b000;
defparam sdpx9b_inst_0.RESET_MODE = "SYNC";

endmodule //Gowin_SDPB
