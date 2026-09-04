//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//Tool Version: V1.9.12 (64-bit)
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Fri Sep  4 00:51:29 2026

module Gowin_DPB (douta, doutb, clka, ocea, cea, reseta, wrea, clkb, oceb, ceb, resetb, wreb, ada, dina, adb, dinb);

output [1:0] douta;
output [1:0] doutb;
input clka;
input ocea;
input cea;
input reseta;
input wrea;
input clkb;
input oceb;
input ceb;
input resetb;
input wreb;
input [18:0] ada;
input [1:0] dina;
input [18:0] adb;
input [1:0] dinb;

wire lut_f_0;
wire lut_f_1;
wire lut_f_2;
wire lut_f_3;
wire lut_f_4;
wire lut_f_5;
wire lut_f_6;
wire lut_f_7;
wire lut_f_8;
wire lut_f_9;
wire lut_f_10;
wire lut_f_11;
wire lut_f_12;
wire lut_f_13;
wire lut_f_14;
wire lut_f_15;
wire lut_f_16;
wire lut_f_17;
wire lut_f_18;
wire lut_f_19;
wire lut_f_20;
wire lut_f_21;
wire lut_f_22;
wire lut_f_23;
wire lut_f_24;
wire lut_f_25;
wire lut_f_26;
wire lut_f_27;
wire lut_f_28;
wire lut_f_29;
wire lut_f_30;
wire lut_f_31;
wire lut_f_32;
wire lut_f_33;
wire lut_f_34;
wire lut_f_35;
wire lut_f_36;
wire lut_f_37;
wire lut_f_38;
wire lut_f_39;
wire lut_f_40;
wire lut_f_41;
wire [14:0] dpb_inst_0_douta_w;
wire [0:0] dpb_inst_0_douta;
wire [14:0] dpb_inst_0_doutb_w;
wire [0:0] dpb_inst_0_doutb;
wire [14:0] dpb_inst_1_douta_w;
wire [0:0] dpb_inst_1_douta;
wire [14:0] dpb_inst_1_doutb_w;
wire [0:0] dpb_inst_1_doutb;
wire [14:0] dpb_inst_2_douta_w;
wire [0:0] dpb_inst_2_douta;
wire [14:0] dpb_inst_2_doutb_w;
wire [0:0] dpb_inst_2_doutb;
wire [14:0] dpb_inst_3_douta_w;
wire [0:0] dpb_inst_3_douta;
wire [14:0] dpb_inst_3_doutb_w;
wire [0:0] dpb_inst_3_doutb;
wire [14:0] dpb_inst_4_douta_w;
wire [0:0] dpb_inst_4_douta;
wire [14:0] dpb_inst_4_doutb_w;
wire [0:0] dpb_inst_4_doutb;
wire [14:0] dpb_inst_5_douta_w;
wire [0:0] dpb_inst_5_douta;
wire [14:0] dpb_inst_5_doutb_w;
wire [0:0] dpb_inst_5_doutb;
wire [14:0] dpb_inst_6_douta_w;
wire [0:0] dpb_inst_6_douta;
wire [14:0] dpb_inst_6_doutb_w;
wire [0:0] dpb_inst_6_doutb;
wire [14:0] dpb_inst_7_douta_w;
wire [0:0] dpb_inst_7_douta;
wire [14:0] dpb_inst_7_doutb_w;
wire [0:0] dpb_inst_7_doutb;
wire [14:0] dpb_inst_8_douta_w;
wire [0:0] dpb_inst_8_douta;
wire [14:0] dpb_inst_8_doutb_w;
wire [0:0] dpb_inst_8_doutb;
wire [14:0] dpb_inst_9_douta_w;
wire [0:0] dpb_inst_9_douta;
wire [14:0] dpb_inst_9_doutb_w;
wire [0:0] dpb_inst_9_doutb;
wire [14:0] dpb_inst_10_douta_w;
wire [0:0] dpb_inst_10_douta;
wire [14:0] dpb_inst_10_doutb_w;
wire [0:0] dpb_inst_10_doutb;
wire [14:0] dpb_inst_11_douta_w;
wire [0:0] dpb_inst_11_douta;
wire [14:0] dpb_inst_11_doutb_w;
wire [0:0] dpb_inst_11_doutb;
wire [14:0] dpb_inst_12_douta_w;
wire [0:0] dpb_inst_12_douta;
wire [14:0] dpb_inst_12_doutb_w;
wire [0:0] dpb_inst_12_doutb;
wire [14:0] dpb_inst_13_douta_w;
wire [0:0] dpb_inst_13_douta;
wire [14:0] dpb_inst_13_doutb_w;
wire [0:0] dpb_inst_13_doutb;
wire [14:0] dpb_inst_14_douta_w;
wire [0:0] dpb_inst_14_douta;
wire [14:0] dpb_inst_14_doutb_w;
wire [0:0] dpb_inst_14_doutb;
wire [14:0] dpb_inst_15_douta_w;
wire [0:0] dpb_inst_15_douta;
wire [14:0] dpb_inst_15_doutb_w;
wire [0:0] dpb_inst_15_doutb;
wire [14:0] dpb_inst_16_douta_w;
wire [0:0] dpb_inst_16_douta;
wire [14:0] dpb_inst_16_doutb_w;
wire [0:0] dpb_inst_16_doutb;
wire [14:0] dpb_inst_17_douta_w;
wire [0:0] dpb_inst_17_douta;
wire [14:0] dpb_inst_17_doutb_w;
wire [0:0] dpb_inst_17_doutb;
wire [14:0] dpb_inst_18_douta_w;
wire [0:0] dpb_inst_18_douta;
wire [14:0] dpb_inst_18_doutb_w;
wire [0:0] dpb_inst_18_doutb;
wire [14:0] dpb_inst_19_douta_w;
wire [0:0] dpb_inst_19_douta;
wire [14:0] dpb_inst_19_doutb_w;
wire [0:0] dpb_inst_19_doutb;
wire [14:0] dpb_inst_20_douta_w;
wire [0:0] dpb_inst_20_douta;
wire [14:0] dpb_inst_20_doutb_w;
wire [0:0] dpb_inst_20_doutb;
wire [14:0] dpb_inst_21_douta_w;
wire [1:1] dpb_inst_21_douta;
wire [14:0] dpb_inst_21_doutb_w;
wire [1:1] dpb_inst_21_doutb;
wire [14:0] dpb_inst_22_douta_w;
wire [1:1] dpb_inst_22_douta;
wire [14:0] dpb_inst_22_doutb_w;
wire [1:1] dpb_inst_22_doutb;
wire [14:0] dpb_inst_23_douta_w;
wire [1:1] dpb_inst_23_douta;
wire [14:0] dpb_inst_23_doutb_w;
wire [1:1] dpb_inst_23_doutb;
wire [14:0] dpb_inst_24_douta_w;
wire [1:1] dpb_inst_24_douta;
wire [14:0] dpb_inst_24_doutb_w;
wire [1:1] dpb_inst_24_doutb;
wire [14:0] dpb_inst_25_douta_w;
wire [1:1] dpb_inst_25_douta;
wire [14:0] dpb_inst_25_doutb_w;
wire [1:1] dpb_inst_25_doutb;
wire [14:0] dpb_inst_26_douta_w;
wire [1:1] dpb_inst_26_douta;
wire [14:0] dpb_inst_26_doutb_w;
wire [1:1] dpb_inst_26_doutb;
wire [14:0] dpb_inst_27_douta_w;
wire [1:1] dpb_inst_27_douta;
wire [14:0] dpb_inst_27_doutb_w;
wire [1:1] dpb_inst_27_doutb;
wire [14:0] dpb_inst_28_douta_w;
wire [1:1] dpb_inst_28_douta;
wire [14:0] dpb_inst_28_doutb_w;
wire [1:1] dpb_inst_28_doutb;
wire [14:0] dpb_inst_29_douta_w;
wire [1:1] dpb_inst_29_douta;
wire [14:0] dpb_inst_29_doutb_w;
wire [1:1] dpb_inst_29_doutb;
wire [14:0] dpb_inst_30_douta_w;
wire [1:1] dpb_inst_30_douta;
wire [14:0] dpb_inst_30_doutb_w;
wire [1:1] dpb_inst_30_doutb;
wire [14:0] dpb_inst_31_douta_w;
wire [1:1] dpb_inst_31_douta;
wire [14:0] dpb_inst_31_doutb_w;
wire [1:1] dpb_inst_31_doutb;
wire [14:0] dpb_inst_32_douta_w;
wire [1:1] dpb_inst_32_douta;
wire [14:0] dpb_inst_32_doutb_w;
wire [1:1] dpb_inst_32_doutb;
wire [14:0] dpb_inst_33_douta_w;
wire [1:1] dpb_inst_33_douta;
wire [14:0] dpb_inst_33_doutb_w;
wire [1:1] dpb_inst_33_doutb;
wire [14:0] dpb_inst_34_douta_w;
wire [1:1] dpb_inst_34_douta;
wire [14:0] dpb_inst_34_doutb_w;
wire [1:1] dpb_inst_34_doutb;
wire [14:0] dpb_inst_35_douta_w;
wire [1:1] dpb_inst_35_douta;
wire [14:0] dpb_inst_35_doutb_w;
wire [1:1] dpb_inst_35_doutb;
wire [14:0] dpb_inst_36_douta_w;
wire [1:1] dpb_inst_36_douta;
wire [14:0] dpb_inst_36_doutb_w;
wire [1:1] dpb_inst_36_doutb;
wire [14:0] dpb_inst_37_douta_w;
wire [1:1] dpb_inst_37_douta;
wire [14:0] dpb_inst_37_doutb_w;
wire [1:1] dpb_inst_37_doutb;
wire [14:0] dpb_inst_38_douta_w;
wire [1:1] dpb_inst_38_douta;
wire [14:0] dpb_inst_38_doutb_w;
wire [1:1] dpb_inst_38_doutb;
wire [14:0] dpb_inst_39_douta_w;
wire [1:1] dpb_inst_39_douta;
wire [14:0] dpb_inst_39_doutb_w;
wire [1:1] dpb_inst_39_doutb;
wire [14:0] dpb_inst_40_douta_w;
wire [1:1] dpb_inst_40_douta;
wire [14:0] dpb_inst_40_doutb_w;
wire [1:1] dpb_inst_40_doutb;
wire [14:0] dpb_inst_41_douta_w;
wire [1:1] dpb_inst_41_douta;
wire [14:0] dpb_inst_41_doutb_w;
wire [1:1] dpb_inst_41_doutb;
wire dff_q_0;
wire dff_q_1;
wire dff_q_2;
wire dff_q_3;
wire dff_q_4;
wire dff_q_5;
wire dff_q_6;
wire dff_q_7;
wire dff_q_8;
wire dff_q_9;
wire mux_o_0;
wire mux_o_1;
wire mux_o_2;
wire mux_o_3;
wire mux_o_4;
wire mux_o_5;
wire mux_o_6;
wire mux_o_7;
wire mux_o_8;
wire mux_o_9;
wire mux_o_11;
wire mux_o_12;
wire mux_o_13;
wire mux_o_14;
wire mux_o_15;
wire mux_o_17;
wire mux_o_18;
wire mux_o_19;
wire mux_o_20;
wire mux_o_23;
wire mux_o_24;
wire mux_o_25;
wire mux_o_26;
wire mux_o_27;
wire mux_o_28;
wire mux_o_29;
wire mux_o_30;
wire mux_o_31;
wire mux_o_32;
wire mux_o_34;
wire mux_o_35;
wire mux_o_36;
wire mux_o_37;
wire mux_o_38;
wire mux_o_40;
wire mux_o_41;
wire mux_o_42;
wire mux_o_43;
wire mux_o_46;
wire mux_o_47;
wire mux_o_48;
wire mux_o_49;
wire mux_o_50;
wire mux_o_51;
wire mux_o_52;
wire mux_o_53;
wire mux_o_54;
wire mux_o_55;
wire mux_o_57;
wire mux_o_58;
wire mux_o_59;
wire mux_o_60;
wire mux_o_61;
wire mux_o_63;
wire mux_o_64;
wire mux_o_65;
wire mux_o_66;
wire mux_o_69;
wire mux_o_70;
wire mux_o_71;
wire mux_o_72;
wire mux_o_73;
wire mux_o_74;
wire mux_o_75;
wire mux_o_76;
wire mux_o_77;
wire mux_o_78;
wire mux_o_80;
wire mux_o_81;
wire mux_o_82;
wire mux_o_83;
wire mux_o_84;
wire mux_o_86;
wire mux_o_87;
wire mux_o_88;
wire mux_o_89;
wire cea_w;
wire ceb_w;
wire gw_gnd;

assign cea_w = ~wrea & cea;
assign ceb_w = ~wreb & ceb;
assign gw_gnd = 1'b0;

LUT5 lut_inst_0 (
  .F(lut_f_0),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_0.INIT = 32'h00000001;
LUT5 lut_inst_1 (
  .F(lut_f_1),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_1.INIT = 32'h00000002;
LUT5 lut_inst_2 (
  .F(lut_f_2),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_2.INIT = 32'h00000004;
LUT5 lut_inst_3 (
  .F(lut_f_3),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_3.INIT = 32'h00000008;
LUT5 lut_inst_4 (
  .F(lut_f_4),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_4.INIT = 32'h00000010;
LUT5 lut_inst_5 (
  .F(lut_f_5),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_5.INIT = 32'h00000020;
LUT5 lut_inst_6 (
  .F(lut_f_6),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_6.INIT = 32'h00000040;
LUT5 lut_inst_7 (
  .F(lut_f_7),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_7.INIT = 32'h00000080;
LUT5 lut_inst_8 (
  .F(lut_f_8),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_8.INIT = 32'h00000100;
LUT5 lut_inst_9 (
  .F(lut_f_9),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_9.INIT = 32'h00000200;
LUT5 lut_inst_10 (
  .F(lut_f_10),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_10.INIT = 32'h00000400;
LUT5 lut_inst_11 (
  .F(lut_f_11),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_11.INIT = 32'h00000800;
LUT5 lut_inst_12 (
  .F(lut_f_12),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_12.INIT = 32'h00001000;
LUT5 lut_inst_13 (
  .F(lut_f_13),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_13.INIT = 32'h00002000;
LUT5 lut_inst_14 (
  .F(lut_f_14),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_14.INIT = 32'h00004000;
LUT5 lut_inst_15 (
  .F(lut_f_15),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_15.INIT = 32'h00008000;
LUT5 lut_inst_16 (
  .F(lut_f_16),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_16.INIT = 32'h00010000;
LUT5 lut_inst_17 (
  .F(lut_f_17),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_17.INIT = 32'h00020000;
LUT5 lut_inst_18 (
  .F(lut_f_18),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_18.INIT = 32'h00040000;
LUT5 lut_inst_19 (
  .F(lut_f_19),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_19.INIT = 32'h00080000;
LUT5 lut_inst_20 (
  .F(lut_f_20),
  .I0(ada[14]),
  .I1(ada[15]),
  .I2(ada[16]),
  .I3(ada[17]),
  .I4(ada[18])
);
defparam lut_inst_20.INIT = 32'h00100000;
LUT5 lut_inst_21 (
  .F(lut_f_21),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_21.INIT = 32'h00000001;
LUT5 lut_inst_22 (
  .F(lut_f_22),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_22.INIT = 32'h00000002;
LUT5 lut_inst_23 (
  .F(lut_f_23),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_23.INIT = 32'h00000004;
LUT5 lut_inst_24 (
  .F(lut_f_24),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_24.INIT = 32'h00000008;
LUT5 lut_inst_25 (
  .F(lut_f_25),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_25.INIT = 32'h00000010;
LUT5 lut_inst_26 (
  .F(lut_f_26),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_26.INIT = 32'h00000020;
LUT5 lut_inst_27 (
  .F(lut_f_27),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_27.INIT = 32'h00000040;
LUT5 lut_inst_28 (
  .F(lut_f_28),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_28.INIT = 32'h00000080;
LUT5 lut_inst_29 (
  .F(lut_f_29),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_29.INIT = 32'h00000100;
LUT5 lut_inst_30 (
  .F(lut_f_30),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_30.INIT = 32'h00000200;
LUT5 lut_inst_31 (
  .F(lut_f_31),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_31.INIT = 32'h00000400;
LUT5 lut_inst_32 (
  .F(lut_f_32),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_32.INIT = 32'h00000800;
LUT5 lut_inst_33 (
  .F(lut_f_33),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_33.INIT = 32'h00001000;
LUT5 lut_inst_34 (
  .F(lut_f_34),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_34.INIT = 32'h00002000;
LUT5 lut_inst_35 (
  .F(lut_f_35),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_35.INIT = 32'h00004000;
LUT5 lut_inst_36 (
  .F(lut_f_36),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_36.INIT = 32'h00008000;
LUT5 lut_inst_37 (
  .F(lut_f_37),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_37.INIT = 32'h00010000;
LUT5 lut_inst_38 (
  .F(lut_f_38),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_38.INIT = 32'h00020000;
LUT5 lut_inst_39 (
  .F(lut_f_39),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_39.INIT = 32'h00040000;
LUT5 lut_inst_40 (
  .F(lut_f_40),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_40.INIT = 32'h00080000;
LUT5 lut_inst_41 (
  .F(lut_f_41),
  .I0(adb[14]),
  .I1(adb[15]),
  .I2(adb[16]),
  .I3(adb[17]),
  .I4(adb[18])
);
defparam lut_inst_41.INIT = 32'h00100000;
DPB dpb_inst_0 (
    .DOA({dpb_inst_0_douta_w[14:0],dpb_inst_0_douta[0]}),
    .DOB({dpb_inst_0_doutb_w[14:0],dpb_inst_0_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_0.READ_MODE0 = 1'b0;
defparam dpb_inst_0.READ_MODE1 = 1'b0;
defparam dpb_inst_0.WRITE_MODE0 = 2'b00;
defparam dpb_inst_0.WRITE_MODE1 = 2'b00;
defparam dpb_inst_0.BIT_WIDTH_0 = 1;
defparam dpb_inst_0.BIT_WIDTH_1 = 1;
defparam dpb_inst_0.BLK_SEL_0 = 3'b001;
defparam dpb_inst_0.BLK_SEL_1 = 3'b001;
defparam dpb_inst_0.RESET_MODE = "SYNC";

DPB dpb_inst_1 (
    .DOA({dpb_inst_1_douta_w[14:0],dpb_inst_1_douta[0]}),
    .DOB({dpb_inst_1_doutb_w[14:0],dpb_inst_1_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_1.READ_MODE0 = 1'b0;
defparam dpb_inst_1.READ_MODE1 = 1'b0;
defparam dpb_inst_1.WRITE_MODE0 = 2'b00;
defparam dpb_inst_1.WRITE_MODE1 = 2'b00;
defparam dpb_inst_1.BIT_WIDTH_0 = 1;
defparam dpb_inst_1.BIT_WIDTH_1 = 1;
defparam dpb_inst_1.BLK_SEL_0 = 3'b001;
defparam dpb_inst_1.BLK_SEL_1 = 3'b001;
defparam dpb_inst_1.RESET_MODE = "SYNC";

DPB dpb_inst_2 (
    .DOA({dpb_inst_2_douta_w[14:0],dpb_inst_2_douta[0]}),
    .DOB({dpb_inst_2_doutb_w[14:0],dpb_inst_2_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_23}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_2.READ_MODE0 = 1'b0;
defparam dpb_inst_2.READ_MODE1 = 1'b0;
defparam dpb_inst_2.WRITE_MODE0 = 2'b00;
defparam dpb_inst_2.WRITE_MODE1 = 2'b00;
defparam dpb_inst_2.BIT_WIDTH_0 = 1;
defparam dpb_inst_2.BIT_WIDTH_1 = 1;
defparam dpb_inst_2.BLK_SEL_0 = 3'b001;
defparam dpb_inst_2.BLK_SEL_1 = 3'b001;
defparam dpb_inst_2.RESET_MODE = "SYNC";

DPB dpb_inst_3 (
    .DOA({dpb_inst_3_douta_w[14:0],dpb_inst_3_douta[0]}),
    .DOB({dpb_inst_3_doutb_w[14:0],dpb_inst_3_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_24}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_3.READ_MODE0 = 1'b0;
defparam dpb_inst_3.READ_MODE1 = 1'b0;
defparam dpb_inst_3.WRITE_MODE0 = 2'b00;
defparam dpb_inst_3.WRITE_MODE1 = 2'b00;
defparam dpb_inst_3.BIT_WIDTH_0 = 1;
defparam dpb_inst_3.BIT_WIDTH_1 = 1;
defparam dpb_inst_3.BLK_SEL_0 = 3'b001;
defparam dpb_inst_3.BLK_SEL_1 = 3'b001;
defparam dpb_inst_3.RESET_MODE = "SYNC";

DPB dpb_inst_4 (
    .DOA({dpb_inst_4_douta_w[14:0],dpb_inst_4_douta[0]}),
    .DOB({dpb_inst_4_doutb_w[14:0],dpb_inst_4_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_25}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_4.READ_MODE0 = 1'b0;
defparam dpb_inst_4.READ_MODE1 = 1'b0;
defparam dpb_inst_4.WRITE_MODE0 = 2'b00;
defparam dpb_inst_4.WRITE_MODE1 = 2'b00;
defparam dpb_inst_4.BIT_WIDTH_0 = 1;
defparam dpb_inst_4.BIT_WIDTH_1 = 1;
defparam dpb_inst_4.BLK_SEL_0 = 3'b001;
defparam dpb_inst_4.BLK_SEL_1 = 3'b001;
defparam dpb_inst_4.RESET_MODE = "SYNC";

DPB dpb_inst_5 (
    .DOA({dpb_inst_5_douta_w[14:0],dpb_inst_5_douta[0]}),
    .DOB({dpb_inst_5_doutb_w[14:0],dpb_inst_5_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_26}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_5.READ_MODE0 = 1'b0;
defparam dpb_inst_5.READ_MODE1 = 1'b0;
defparam dpb_inst_5.WRITE_MODE0 = 2'b00;
defparam dpb_inst_5.WRITE_MODE1 = 2'b00;
defparam dpb_inst_5.BIT_WIDTH_0 = 1;
defparam dpb_inst_5.BIT_WIDTH_1 = 1;
defparam dpb_inst_5.BLK_SEL_0 = 3'b001;
defparam dpb_inst_5.BLK_SEL_1 = 3'b001;
defparam dpb_inst_5.RESET_MODE = "SYNC";

DPB dpb_inst_6 (
    .DOA({dpb_inst_6_douta_w[14:0],dpb_inst_6_douta[0]}),
    .DOB({dpb_inst_6_doutb_w[14:0],dpb_inst_6_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_27}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_6.READ_MODE0 = 1'b0;
defparam dpb_inst_6.READ_MODE1 = 1'b0;
defparam dpb_inst_6.WRITE_MODE0 = 2'b00;
defparam dpb_inst_6.WRITE_MODE1 = 2'b00;
defparam dpb_inst_6.BIT_WIDTH_0 = 1;
defparam dpb_inst_6.BIT_WIDTH_1 = 1;
defparam dpb_inst_6.BLK_SEL_0 = 3'b001;
defparam dpb_inst_6.BLK_SEL_1 = 3'b001;
defparam dpb_inst_6.RESET_MODE = "SYNC";

DPB dpb_inst_7 (
    .DOA({dpb_inst_7_douta_w[14:0],dpb_inst_7_douta[0]}),
    .DOB({dpb_inst_7_doutb_w[14:0],dpb_inst_7_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_28}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_7.READ_MODE0 = 1'b0;
defparam dpb_inst_7.READ_MODE1 = 1'b0;
defparam dpb_inst_7.WRITE_MODE0 = 2'b00;
defparam dpb_inst_7.WRITE_MODE1 = 2'b00;
defparam dpb_inst_7.BIT_WIDTH_0 = 1;
defparam dpb_inst_7.BIT_WIDTH_1 = 1;
defparam dpb_inst_7.BLK_SEL_0 = 3'b001;
defparam dpb_inst_7.BLK_SEL_1 = 3'b001;
defparam dpb_inst_7.RESET_MODE = "SYNC";

DPB dpb_inst_8 (
    .DOA({dpb_inst_8_douta_w[14:0],dpb_inst_8_douta[0]}),
    .DOB({dpb_inst_8_doutb_w[14:0],dpb_inst_8_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_29}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_8.READ_MODE0 = 1'b0;
defparam dpb_inst_8.READ_MODE1 = 1'b0;
defparam dpb_inst_8.WRITE_MODE0 = 2'b00;
defparam dpb_inst_8.WRITE_MODE1 = 2'b00;
defparam dpb_inst_8.BIT_WIDTH_0 = 1;
defparam dpb_inst_8.BIT_WIDTH_1 = 1;
defparam dpb_inst_8.BLK_SEL_0 = 3'b001;
defparam dpb_inst_8.BLK_SEL_1 = 3'b001;
defparam dpb_inst_8.RESET_MODE = "SYNC";

DPB dpb_inst_9 (
    .DOA({dpb_inst_9_douta_w[14:0],dpb_inst_9_douta[0]}),
    .DOB({dpb_inst_9_doutb_w[14:0],dpb_inst_9_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_30}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_9.READ_MODE0 = 1'b0;
defparam dpb_inst_9.READ_MODE1 = 1'b0;
defparam dpb_inst_9.WRITE_MODE0 = 2'b00;
defparam dpb_inst_9.WRITE_MODE1 = 2'b00;
defparam dpb_inst_9.BIT_WIDTH_0 = 1;
defparam dpb_inst_9.BIT_WIDTH_1 = 1;
defparam dpb_inst_9.BLK_SEL_0 = 3'b001;
defparam dpb_inst_9.BLK_SEL_1 = 3'b001;
defparam dpb_inst_9.RESET_MODE = "SYNC";

DPB dpb_inst_10 (
    .DOA({dpb_inst_10_douta_w[14:0],dpb_inst_10_douta[0]}),
    .DOB({dpb_inst_10_doutb_w[14:0],dpb_inst_10_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_31}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_10.READ_MODE0 = 1'b0;
defparam dpb_inst_10.READ_MODE1 = 1'b0;
defparam dpb_inst_10.WRITE_MODE0 = 2'b00;
defparam dpb_inst_10.WRITE_MODE1 = 2'b00;
defparam dpb_inst_10.BIT_WIDTH_0 = 1;
defparam dpb_inst_10.BIT_WIDTH_1 = 1;
defparam dpb_inst_10.BLK_SEL_0 = 3'b001;
defparam dpb_inst_10.BLK_SEL_1 = 3'b001;
defparam dpb_inst_10.RESET_MODE = "SYNC";

DPB dpb_inst_11 (
    .DOA({dpb_inst_11_douta_w[14:0],dpb_inst_11_douta[0]}),
    .DOB({dpb_inst_11_doutb_w[14:0],dpb_inst_11_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_11}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_32}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_11.READ_MODE0 = 1'b0;
defparam dpb_inst_11.READ_MODE1 = 1'b0;
defparam dpb_inst_11.WRITE_MODE0 = 2'b00;
defparam dpb_inst_11.WRITE_MODE1 = 2'b00;
defparam dpb_inst_11.BIT_WIDTH_0 = 1;
defparam dpb_inst_11.BIT_WIDTH_1 = 1;
defparam dpb_inst_11.BLK_SEL_0 = 3'b001;
defparam dpb_inst_11.BLK_SEL_1 = 3'b001;
defparam dpb_inst_11.RESET_MODE = "SYNC";

DPB dpb_inst_12 (
    .DOA({dpb_inst_12_douta_w[14:0],dpb_inst_12_douta[0]}),
    .DOB({dpb_inst_12_doutb_w[14:0],dpb_inst_12_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_12}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_33}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_12.READ_MODE0 = 1'b0;
defparam dpb_inst_12.READ_MODE1 = 1'b0;
defparam dpb_inst_12.WRITE_MODE0 = 2'b00;
defparam dpb_inst_12.WRITE_MODE1 = 2'b00;
defparam dpb_inst_12.BIT_WIDTH_0 = 1;
defparam dpb_inst_12.BIT_WIDTH_1 = 1;
defparam dpb_inst_12.BLK_SEL_0 = 3'b001;
defparam dpb_inst_12.BLK_SEL_1 = 3'b001;
defparam dpb_inst_12.RESET_MODE = "SYNC";

DPB dpb_inst_13 (
    .DOA({dpb_inst_13_douta_w[14:0],dpb_inst_13_douta[0]}),
    .DOB({dpb_inst_13_doutb_w[14:0],dpb_inst_13_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_13}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_34}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_13.READ_MODE0 = 1'b0;
defparam dpb_inst_13.READ_MODE1 = 1'b0;
defparam dpb_inst_13.WRITE_MODE0 = 2'b00;
defparam dpb_inst_13.WRITE_MODE1 = 2'b00;
defparam dpb_inst_13.BIT_WIDTH_0 = 1;
defparam dpb_inst_13.BIT_WIDTH_1 = 1;
defparam dpb_inst_13.BLK_SEL_0 = 3'b001;
defparam dpb_inst_13.BLK_SEL_1 = 3'b001;
defparam dpb_inst_13.RESET_MODE = "SYNC";

DPB dpb_inst_14 (
    .DOA({dpb_inst_14_douta_w[14:0],dpb_inst_14_douta[0]}),
    .DOB({dpb_inst_14_doutb_w[14:0],dpb_inst_14_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_14}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_35}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_14.READ_MODE0 = 1'b0;
defparam dpb_inst_14.READ_MODE1 = 1'b0;
defparam dpb_inst_14.WRITE_MODE0 = 2'b00;
defparam dpb_inst_14.WRITE_MODE1 = 2'b00;
defparam dpb_inst_14.BIT_WIDTH_0 = 1;
defparam dpb_inst_14.BIT_WIDTH_1 = 1;
defparam dpb_inst_14.BLK_SEL_0 = 3'b001;
defparam dpb_inst_14.BLK_SEL_1 = 3'b001;
defparam dpb_inst_14.RESET_MODE = "SYNC";

DPB dpb_inst_15 (
    .DOA({dpb_inst_15_douta_w[14:0],dpb_inst_15_douta[0]}),
    .DOB({dpb_inst_15_doutb_w[14:0],dpb_inst_15_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_15}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_36}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_15.READ_MODE0 = 1'b0;
defparam dpb_inst_15.READ_MODE1 = 1'b0;
defparam dpb_inst_15.WRITE_MODE0 = 2'b00;
defparam dpb_inst_15.WRITE_MODE1 = 2'b00;
defparam dpb_inst_15.BIT_WIDTH_0 = 1;
defparam dpb_inst_15.BIT_WIDTH_1 = 1;
defparam dpb_inst_15.BLK_SEL_0 = 3'b001;
defparam dpb_inst_15.BLK_SEL_1 = 3'b001;
defparam dpb_inst_15.RESET_MODE = "SYNC";

DPB dpb_inst_16 (
    .DOA({dpb_inst_16_douta_w[14:0],dpb_inst_16_douta[0]}),
    .DOB({dpb_inst_16_doutb_w[14:0],dpb_inst_16_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_16}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_37}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_16.READ_MODE0 = 1'b0;
defparam dpb_inst_16.READ_MODE1 = 1'b0;
defparam dpb_inst_16.WRITE_MODE0 = 2'b00;
defparam dpb_inst_16.WRITE_MODE1 = 2'b00;
defparam dpb_inst_16.BIT_WIDTH_0 = 1;
defparam dpb_inst_16.BIT_WIDTH_1 = 1;
defparam dpb_inst_16.BLK_SEL_0 = 3'b001;
defparam dpb_inst_16.BLK_SEL_1 = 3'b001;
defparam dpb_inst_16.RESET_MODE = "SYNC";

DPB dpb_inst_17 (
    .DOA({dpb_inst_17_douta_w[14:0],dpb_inst_17_douta[0]}),
    .DOB({dpb_inst_17_doutb_w[14:0],dpb_inst_17_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_17}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_38}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_17.READ_MODE0 = 1'b0;
defparam dpb_inst_17.READ_MODE1 = 1'b0;
defparam dpb_inst_17.WRITE_MODE0 = 2'b00;
defparam dpb_inst_17.WRITE_MODE1 = 2'b00;
defparam dpb_inst_17.BIT_WIDTH_0 = 1;
defparam dpb_inst_17.BIT_WIDTH_1 = 1;
defparam dpb_inst_17.BLK_SEL_0 = 3'b001;
defparam dpb_inst_17.BLK_SEL_1 = 3'b001;
defparam dpb_inst_17.RESET_MODE = "SYNC";

DPB dpb_inst_18 (
    .DOA({dpb_inst_18_douta_w[14:0],dpb_inst_18_douta[0]}),
    .DOB({dpb_inst_18_doutb_w[14:0],dpb_inst_18_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_18}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_39}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_18.READ_MODE0 = 1'b0;
defparam dpb_inst_18.READ_MODE1 = 1'b0;
defparam dpb_inst_18.WRITE_MODE0 = 2'b00;
defparam dpb_inst_18.WRITE_MODE1 = 2'b00;
defparam dpb_inst_18.BIT_WIDTH_0 = 1;
defparam dpb_inst_18.BIT_WIDTH_1 = 1;
defparam dpb_inst_18.BLK_SEL_0 = 3'b001;
defparam dpb_inst_18.BLK_SEL_1 = 3'b001;
defparam dpb_inst_18.RESET_MODE = "SYNC";

DPB dpb_inst_19 (
    .DOA({dpb_inst_19_douta_w[14:0],dpb_inst_19_douta[0]}),
    .DOB({dpb_inst_19_doutb_w[14:0],dpb_inst_19_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_19}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_40}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_19.READ_MODE0 = 1'b0;
defparam dpb_inst_19.READ_MODE1 = 1'b0;
defparam dpb_inst_19.WRITE_MODE0 = 2'b00;
defparam dpb_inst_19.WRITE_MODE1 = 2'b00;
defparam dpb_inst_19.BIT_WIDTH_0 = 1;
defparam dpb_inst_19.BIT_WIDTH_1 = 1;
defparam dpb_inst_19.BLK_SEL_0 = 3'b001;
defparam dpb_inst_19.BLK_SEL_1 = 3'b001;
defparam dpb_inst_19.RESET_MODE = "SYNC";

DPB dpb_inst_20 (
    .DOA({dpb_inst_20_douta_w[14:0],dpb_inst_20_douta[0]}),
    .DOB({dpb_inst_20_doutb_w[14:0],dpb_inst_20_doutb[0]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_20}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_41}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[0]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[0]})
);

defparam dpb_inst_20.READ_MODE0 = 1'b0;
defparam dpb_inst_20.READ_MODE1 = 1'b0;
defparam dpb_inst_20.WRITE_MODE0 = 2'b00;
defparam dpb_inst_20.WRITE_MODE1 = 2'b00;
defparam dpb_inst_20.BIT_WIDTH_0 = 1;
defparam dpb_inst_20.BIT_WIDTH_1 = 1;
defparam dpb_inst_20.BLK_SEL_0 = 3'b001;
defparam dpb_inst_20.BLK_SEL_1 = 3'b001;
defparam dpb_inst_20.RESET_MODE = "SYNC";

DPB dpb_inst_21 (
    .DOA({dpb_inst_21_douta_w[14:0],dpb_inst_21_douta[1]}),
    .DOB({dpb_inst_21_doutb_w[14:0],dpb_inst_21_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_0}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_21}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_21.READ_MODE0 = 1'b0;
defparam dpb_inst_21.READ_MODE1 = 1'b0;
defparam dpb_inst_21.WRITE_MODE0 = 2'b00;
defparam dpb_inst_21.WRITE_MODE1 = 2'b00;
defparam dpb_inst_21.BIT_WIDTH_0 = 1;
defparam dpb_inst_21.BIT_WIDTH_1 = 1;
defparam dpb_inst_21.BLK_SEL_0 = 3'b001;
defparam dpb_inst_21.BLK_SEL_1 = 3'b001;
defparam dpb_inst_21.RESET_MODE = "SYNC";

DPB dpb_inst_22 (
    .DOA({dpb_inst_22_douta_w[14:0],dpb_inst_22_douta[1]}),
    .DOB({dpb_inst_22_doutb_w[14:0],dpb_inst_22_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_1}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_22}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_22.READ_MODE0 = 1'b0;
defparam dpb_inst_22.READ_MODE1 = 1'b0;
defparam dpb_inst_22.WRITE_MODE0 = 2'b00;
defparam dpb_inst_22.WRITE_MODE1 = 2'b00;
defparam dpb_inst_22.BIT_WIDTH_0 = 1;
defparam dpb_inst_22.BIT_WIDTH_1 = 1;
defparam dpb_inst_22.BLK_SEL_0 = 3'b001;
defparam dpb_inst_22.BLK_SEL_1 = 3'b001;
defparam dpb_inst_22.RESET_MODE = "SYNC";

DPB dpb_inst_23 (
    .DOA({dpb_inst_23_douta_w[14:0],dpb_inst_23_douta[1]}),
    .DOB({dpb_inst_23_doutb_w[14:0],dpb_inst_23_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_2}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_23}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_23.READ_MODE0 = 1'b0;
defparam dpb_inst_23.READ_MODE1 = 1'b0;
defparam dpb_inst_23.WRITE_MODE0 = 2'b00;
defparam dpb_inst_23.WRITE_MODE1 = 2'b00;
defparam dpb_inst_23.BIT_WIDTH_0 = 1;
defparam dpb_inst_23.BIT_WIDTH_1 = 1;
defparam dpb_inst_23.BLK_SEL_0 = 3'b001;
defparam dpb_inst_23.BLK_SEL_1 = 3'b001;
defparam dpb_inst_23.RESET_MODE = "SYNC";

DPB dpb_inst_24 (
    .DOA({dpb_inst_24_douta_w[14:0],dpb_inst_24_douta[1]}),
    .DOB({dpb_inst_24_doutb_w[14:0],dpb_inst_24_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_3}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_24}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_24.READ_MODE0 = 1'b0;
defparam dpb_inst_24.READ_MODE1 = 1'b0;
defparam dpb_inst_24.WRITE_MODE0 = 2'b00;
defparam dpb_inst_24.WRITE_MODE1 = 2'b00;
defparam dpb_inst_24.BIT_WIDTH_0 = 1;
defparam dpb_inst_24.BIT_WIDTH_1 = 1;
defparam dpb_inst_24.BLK_SEL_0 = 3'b001;
defparam dpb_inst_24.BLK_SEL_1 = 3'b001;
defparam dpb_inst_24.RESET_MODE = "SYNC";

DPB dpb_inst_25 (
    .DOA({dpb_inst_25_douta_w[14:0],dpb_inst_25_douta[1]}),
    .DOB({dpb_inst_25_doutb_w[14:0],dpb_inst_25_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_4}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_25}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_25.READ_MODE0 = 1'b0;
defparam dpb_inst_25.READ_MODE1 = 1'b0;
defparam dpb_inst_25.WRITE_MODE0 = 2'b00;
defparam dpb_inst_25.WRITE_MODE1 = 2'b00;
defparam dpb_inst_25.BIT_WIDTH_0 = 1;
defparam dpb_inst_25.BIT_WIDTH_1 = 1;
defparam dpb_inst_25.BLK_SEL_0 = 3'b001;
defparam dpb_inst_25.BLK_SEL_1 = 3'b001;
defparam dpb_inst_25.RESET_MODE = "SYNC";

DPB dpb_inst_26 (
    .DOA({dpb_inst_26_douta_w[14:0],dpb_inst_26_douta[1]}),
    .DOB({dpb_inst_26_doutb_w[14:0],dpb_inst_26_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_5}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_26}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_26.READ_MODE0 = 1'b0;
defparam dpb_inst_26.READ_MODE1 = 1'b0;
defparam dpb_inst_26.WRITE_MODE0 = 2'b00;
defparam dpb_inst_26.WRITE_MODE1 = 2'b00;
defparam dpb_inst_26.BIT_WIDTH_0 = 1;
defparam dpb_inst_26.BIT_WIDTH_1 = 1;
defparam dpb_inst_26.BLK_SEL_0 = 3'b001;
defparam dpb_inst_26.BLK_SEL_1 = 3'b001;
defparam dpb_inst_26.RESET_MODE = "SYNC";

DPB dpb_inst_27 (
    .DOA({dpb_inst_27_douta_w[14:0],dpb_inst_27_douta[1]}),
    .DOB({dpb_inst_27_doutb_w[14:0],dpb_inst_27_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_6}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_27}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_27.READ_MODE0 = 1'b0;
defparam dpb_inst_27.READ_MODE1 = 1'b0;
defparam dpb_inst_27.WRITE_MODE0 = 2'b00;
defparam dpb_inst_27.WRITE_MODE1 = 2'b00;
defparam dpb_inst_27.BIT_WIDTH_0 = 1;
defparam dpb_inst_27.BIT_WIDTH_1 = 1;
defparam dpb_inst_27.BLK_SEL_0 = 3'b001;
defparam dpb_inst_27.BLK_SEL_1 = 3'b001;
defparam dpb_inst_27.RESET_MODE = "SYNC";

DPB dpb_inst_28 (
    .DOA({dpb_inst_28_douta_w[14:0],dpb_inst_28_douta[1]}),
    .DOB({dpb_inst_28_doutb_w[14:0],dpb_inst_28_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_7}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_28}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_28.READ_MODE0 = 1'b0;
defparam dpb_inst_28.READ_MODE1 = 1'b0;
defparam dpb_inst_28.WRITE_MODE0 = 2'b00;
defparam dpb_inst_28.WRITE_MODE1 = 2'b00;
defparam dpb_inst_28.BIT_WIDTH_0 = 1;
defparam dpb_inst_28.BIT_WIDTH_1 = 1;
defparam dpb_inst_28.BLK_SEL_0 = 3'b001;
defparam dpb_inst_28.BLK_SEL_1 = 3'b001;
defparam dpb_inst_28.RESET_MODE = "SYNC";

DPB dpb_inst_29 (
    .DOA({dpb_inst_29_douta_w[14:0],dpb_inst_29_douta[1]}),
    .DOB({dpb_inst_29_doutb_w[14:0],dpb_inst_29_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_8}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_29}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_29.READ_MODE0 = 1'b0;
defparam dpb_inst_29.READ_MODE1 = 1'b0;
defparam dpb_inst_29.WRITE_MODE0 = 2'b00;
defparam dpb_inst_29.WRITE_MODE1 = 2'b00;
defparam dpb_inst_29.BIT_WIDTH_0 = 1;
defparam dpb_inst_29.BIT_WIDTH_1 = 1;
defparam dpb_inst_29.BLK_SEL_0 = 3'b001;
defparam dpb_inst_29.BLK_SEL_1 = 3'b001;
defparam dpb_inst_29.RESET_MODE = "SYNC";

DPB dpb_inst_30 (
    .DOA({dpb_inst_30_douta_w[14:0],dpb_inst_30_douta[1]}),
    .DOB({dpb_inst_30_doutb_w[14:0],dpb_inst_30_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_9}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_30}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_30.READ_MODE0 = 1'b0;
defparam dpb_inst_30.READ_MODE1 = 1'b0;
defparam dpb_inst_30.WRITE_MODE0 = 2'b00;
defparam dpb_inst_30.WRITE_MODE1 = 2'b00;
defparam dpb_inst_30.BIT_WIDTH_0 = 1;
defparam dpb_inst_30.BIT_WIDTH_1 = 1;
defparam dpb_inst_30.BLK_SEL_0 = 3'b001;
defparam dpb_inst_30.BLK_SEL_1 = 3'b001;
defparam dpb_inst_30.RESET_MODE = "SYNC";

DPB dpb_inst_31 (
    .DOA({dpb_inst_31_douta_w[14:0],dpb_inst_31_douta[1]}),
    .DOB({dpb_inst_31_doutb_w[14:0],dpb_inst_31_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_10}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_31}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_31.READ_MODE0 = 1'b0;
defparam dpb_inst_31.READ_MODE1 = 1'b0;
defparam dpb_inst_31.WRITE_MODE0 = 2'b00;
defparam dpb_inst_31.WRITE_MODE1 = 2'b00;
defparam dpb_inst_31.BIT_WIDTH_0 = 1;
defparam dpb_inst_31.BIT_WIDTH_1 = 1;
defparam dpb_inst_31.BLK_SEL_0 = 3'b001;
defparam dpb_inst_31.BLK_SEL_1 = 3'b001;
defparam dpb_inst_31.RESET_MODE = "SYNC";

DPB dpb_inst_32 (
    .DOA({dpb_inst_32_douta_w[14:0],dpb_inst_32_douta[1]}),
    .DOB({dpb_inst_32_doutb_w[14:0],dpb_inst_32_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_11}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_32}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_32.READ_MODE0 = 1'b0;
defparam dpb_inst_32.READ_MODE1 = 1'b0;
defparam dpb_inst_32.WRITE_MODE0 = 2'b00;
defparam dpb_inst_32.WRITE_MODE1 = 2'b00;
defparam dpb_inst_32.BIT_WIDTH_0 = 1;
defparam dpb_inst_32.BIT_WIDTH_1 = 1;
defparam dpb_inst_32.BLK_SEL_0 = 3'b001;
defparam dpb_inst_32.BLK_SEL_1 = 3'b001;
defparam dpb_inst_32.RESET_MODE = "SYNC";

DPB dpb_inst_33 (
    .DOA({dpb_inst_33_douta_w[14:0],dpb_inst_33_douta[1]}),
    .DOB({dpb_inst_33_doutb_w[14:0],dpb_inst_33_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_12}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_33}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_33.READ_MODE0 = 1'b0;
defparam dpb_inst_33.READ_MODE1 = 1'b0;
defparam dpb_inst_33.WRITE_MODE0 = 2'b00;
defparam dpb_inst_33.WRITE_MODE1 = 2'b00;
defparam dpb_inst_33.BIT_WIDTH_0 = 1;
defparam dpb_inst_33.BIT_WIDTH_1 = 1;
defparam dpb_inst_33.BLK_SEL_0 = 3'b001;
defparam dpb_inst_33.BLK_SEL_1 = 3'b001;
defparam dpb_inst_33.RESET_MODE = "SYNC";

DPB dpb_inst_34 (
    .DOA({dpb_inst_34_douta_w[14:0],dpb_inst_34_douta[1]}),
    .DOB({dpb_inst_34_doutb_w[14:0],dpb_inst_34_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_13}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_34}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_34.READ_MODE0 = 1'b0;
defparam dpb_inst_34.READ_MODE1 = 1'b0;
defparam dpb_inst_34.WRITE_MODE0 = 2'b00;
defparam dpb_inst_34.WRITE_MODE1 = 2'b00;
defparam dpb_inst_34.BIT_WIDTH_0 = 1;
defparam dpb_inst_34.BIT_WIDTH_1 = 1;
defparam dpb_inst_34.BLK_SEL_0 = 3'b001;
defparam dpb_inst_34.BLK_SEL_1 = 3'b001;
defparam dpb_inst_34.RESET_MODE = "SYNC";

DPB dpb_inst_35 (
    .DOA({dpb_inst_35_douta_w[14:0],dpb_inst_35_douta[1]}),
    .DOB({dpb_inst_35_doutb_w[14:0],dpb_inst_35_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_14}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_35}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_35.READ_MODE0 = 1'b0;
defparam dpb_inst_35.READ_MODE1 = 1'b0;
defparam dpb_inst_35.WRITE_MODE0 = 2'b00;
defparam dpb_inst_35.WRITE_MODE1 = 2'b00;
defparam dpb_inst_35.BIT_WIDTH_0 = 1;
defparam dpb_inst_35.BIT_WIDTH_1 = 1;
defparam dpb_inst_35.BLK_SEL_0 = 3'b001;
defparam dpb_inst_35.BLK_SEL_1 = 3'b001;
defparam dpb_inst_35.RESET_MODE = "SYNC";

DPB dpb_inst_36 (
    .DOA({dpb_inst_36_douta_w[14:0],dpb_inst_36_douta[1]}),
    .DOB({dpb_inst_36_doutb_w[14:0],dpb_inst_36_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_15}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_36}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_36.READ_MODE0 = 1'b0;
defparam dpb_inst_36.READ_MODE1 = 1'b0;
defparam dpb_inst_36.WRITE_MODE0 = 2'b00;
defparam dpb_inst_36.WRITE_MODE1 = 2'b00;
defparam dpb_inst_36.BIT_WIDTH_0 = 1;
defparam dpb_inst_36.BIT_WIDTH_1 = 1;
defparam dpb_inst_36.BLK_SEL_0 = 3'b001;
defparam dpb_inst_36.BLK_SEL_1 = 3'b001;
defparam dpb_inst_36.RESET_MODE = "SYNC";

DPB dpb_inst_37 (
    .DOA({dpb_inst_37_douta_w[14:0],dpb_inst_37_douta[1]}),
    .DOB({dpb_inst_37_doutb_w[14:0],dpb_inst_37_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_16}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_37}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_37.READ_MODE0 = 1'b0;
defparam dpb_inst_37.READ_MODE1 = 1'b0;
defparam dpb_inst_37.WRITE_MODE0 = 2'b00;
defparam dpb_inst_37.WRITE_MODE1 = 2'b00;
defparam dpb_inst_37.BIT_WIDTH_0 = 1;
defparam dpb_inst_37.BIT_WIDTH_1 = 1;
defparam dpb_inst_37.BLK_SEL_0 = 3'b001;
defparam dpb_inst_37.BLK_SEL_1 = 3'b001;
defparam dpb_inst_37.RESET_MODE = "SYNC";

DPB dpb_inst_38 (
    .DOA({dpb_inst_38_douta_w[14:0],dpb_inst_38_douta[1]}),
    .DOB({dpb_inst_38_doutb_w[14:0],dpb_inst_38_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_17}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_38}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_38.READ_MODE0 = 1'b0;
defparam dpb_inst_38.READ_MODE1 = 1'b0;
defparam dpb_inst_38.WRITE_MODE0 = 2'b00;
defparam dpb_inst_38.WRITE_MODE1 = 2'b00;
defparam dpb_inst_38.BIT_WIDTH_0 = 1;
defparam dpb_inst_38.BIT_WIDTH_1 = 1;
defparam dpb_inst_38.BLK_SEL_0 = 3'b001;
defparam dpb_inst_38.BLK_SEL_1 = 3'b001;
defparam dpb_inst_38.RESET_MODE = "SYNC";

DPB dpb_inst_39 (
    .DOA({dpb_inst_39_douta_w[14:0],dpb_inst_39_douta[1]}),
    .DOB({dpb_inst_39_doutb_w[14:0],dpb_inst_39_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_18}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_39}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_39.READ_MODE0 = 1'b0;
defparam dpb_inst_39.READ_MODE1 = 1'b0;
defparam dpb_inst_39.WRITE_MODE0 = 2'b00;
defparam dpb_inst_39.WRITE_MODE1 = 2'b00;
defparam dpb_inst_39.BIT_WIDTH_0 = 1;
defparam dpb_inst_39.BIT_WIDTH_1 = 1;
defparam dpb_inst_39.BLK_SEL_0 = 3'b001;
defparam dpb_inst_39.BLK_SEL_1 = 3'b001;
defparam dpb_inst_39.RESET_MODE = "SYNC";

DPB dpb_inst_40 (
    .DOA({dpb_inst_40_douta_w[14:0],dpb_inst_40_douta[1]}),
    .DOB({dpb_inst_40_doutb_w[14:0],dpb_inst_40_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_19}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_40}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_40.READ_MODE0 = 1'b0;
defparam dpb_inst_40.READ_MODE1 = 1'b0;
defparam dpb_inst_40.WRITE_MODE0 = 2'b00;
defparam dpb_inst_40.WRITE_MODE1 = 2'b00;
defparam dpb_inst_40.BIT_WIDTH_0 = 1;
defparam dpb_inst_40.BIT_WIDTH_1 = 1;
defparam dpb_inst_40.BLK_SEL_0 = 3'b001;
defparam dpb_inst_40.BLK_SEL_1 = 3'b001;
defparam dpb_inst_40.RESET_MODE = "SYNC";

DPB dpb_inst_41 (
    .DOA({dpb_inst_41_douta_w[14:0],dpb_inst_41_douta[1]}),
    .DOB({dpb_inst_41_doutb_w[14:0],dpb_inst_41_doutb[1]}),
    .CLKA(clka),
    .OCEA(ocea),
    .CEA(cea),
    .RESETA(reseta),
    .WREA(wrea),
    .CLKB(clkb),
    .OCEB(oceb),
    .CEB(ceb),
    .RESETB(resetb),
    .WREB(wreb),
    .BLKSELA({gw_gnd,gw_gnd,lut_f_20}),
    .BLKSELB({gw_gnd,gw_gnd,lut_f_41}),
    .ADA(ada[13:0]),
    .DIA({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dina[1]}),
    .ADB(adb[13:0]),
    .DIB({gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,gw_gnd,dinb[1]})
);

defparam dpb_inst_41.READ_MODE0 = 1'b0;
defparam dpb_inst_41.READ_MODE1 = 1'b0;
defparam dpb_inst_41.WRITE_MODE0 = 2'b00;
defparam dpb_inst_41.WRITE_MODE1 = 2'b00;
defparam dpb_inst_41.BIT_WIDTH_0 = 1;
defparam dpb_inst_41.BIT_WIDTH_1 = 1;
defparam dpb_inst_41.BLK_SEL_0 = 3'b001;
defparam dpb_inst_41.BLK_SEL_1 = 3'b001;
defparam dpb_inst_41.RESET_MODE = "SYNC";

DFFE dff_inst_0 (
  .Q(dff_q_0),
  .D(ada[18]),
  .CLK(clka),
  .CE(cea_w)
);
DFFE dff_inst_1 (
  .Q(dff_q_1),
  .D(ada[17]),
  .CLK(clka),
  .CE(cea_w)
);
DFFE dff_inst_2 (
  .Q(dff_q_2),
  .D(ada[16]),
  .CLK(clka),
  .CE(cea_w)
);
DFFE dff_inst_3 (
  .Q(dff_q_3),
  .D(ada[15]),
  .CLK(clka),
  .CE(cea_w)
);
DFFE dff_inst_4 (
  .Q(dff_q_4),
  .D(ada[14]),
  .CLK(clka),
  .CE(cea_w)
);
DFFE dff_inst_5 (
  .Q(dff_q_5),
  .D(adb[18]),
  .CLK(clkb),
  .CE(ceb_w)
);
DFFE dff_inst_6 (
  .Q(dff_q_6),
  .D(adb[17]),
  .CLK(clkb),
  .CE(ceb_w)
);
DFFE dff_inst_7 (
  .Q(dff_q_7),
  .D(adb[16]),
  .CLK(clkb),
  .CE(ceb_w)
);
DFFE dff_inst_8 (
  .Q(dff_q_8),
  .D(adb[15]),
  .CLK(clkb),
  .CE(ceb_w)
);
DFFE dff_inst_9 (
  .Q(dff_q_9),
  .D(adb[14]),
  .CLK(clkb),
  .CE(ceb_w)
);
MUX2 mux_inst_0 (
  .O(mux_o_0),
  .I0(dpb_inst_0_douta[0]),
  .I1(dpb_inst_1_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_1 (
  .O(mux_o_1),
  .I0(dpb_inst_2_douta[0]),
  .I1(dpb_inst_3_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_2 (
  .O(mux_o_2),
  .I0(dpb_inst_4_douta[0]),
  .I1(dpb_inst_5_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_3 (
  .O(mux_o_3),
  .I0(dpb_inst_6_douta[0]),
  .I1(dpb_inst_7_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_4 (
  .O(mux_o_4),
  .I0(dpb_inst_8_douta[0]),
  .I1(dpb_inst_9_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_5 (
  .O(mux_o_5),
  .I0(dpb_inst_10_douta[0]),
  .I1(dpb_inst_11_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_6 (
  .O(mux_o_6),
  .I0(dpb_inst_12_douta[0]),
  .I1(dpb_inst_13_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_7 (
  .O(mux_o_7),
  .I0(dpb_inst_14_douta[0]),
  .I1(dpb_inst_15_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_8 (
  .O(mux_o_8),
  .I0(dpb_inst_16_douta[0]),
  .I1(dpb_inst_17_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_9 (
  .O(mux_o_9),
  .I0(dpb_inst_18_douta[0]),
  .I1(dpb_inst_19_douta[0]),
  .S0(dff_q_4)
);
MUX2 mux_inst_11 (
  .O(mux_o_11),
  .I0(mux_o_0),
  .I1(mux_o_1),
  .S0(dff_q_3)
);
MUX2 mux_inst_12 (
  .O(mux_o_12),
  .I0(mux_o_2),
  .I1(mux_o_3),
  .S0(dff_q_3)
);
MUX2 mux_inst_13 (
  .O(mux_o_13),
  .I0(mux_o_4),
  .I1(mux_o_5),
  .S0(dff_q_3)
);
MUX2 mux_inst_14 (
  .O(mux_o_14),
  .I0(mux_o_6),
  .I1(mux_o_7),
  .S0(dff_q_3)
);
MUX2 mux_inst_15 (
  .O(mux_o_15),
  .I0(mux_o_8),
  .I1(mux_o_9),
  .S0(dff_q_3)
);
MUX2 mux_inst_17 (
  .O(mux_o_17),
  .I0(mux_o_11),
  .I1(mux_o_12),
  .S0(dff_q_2)
);
MUX2 mux_inst_18 (
  .O(mux_o_18),
  .I0(mux_o_13),
  .I1(mux_o_14),
  .S0(dff_q_2)
);
MUX2 mux_inst_19 (
  .O(mux_o_19),
  .I0(mux_o_15),
  .I1(dpb_inst_20_douta[0]),
  .S0(dff_q_2)
);
MUX2 mux_inst_20 (
  .O(mux_o_20),
  .I0(mux_o_17),
  .I1(mux_o_18),
  .S0(dff_q_1)
);
MUX2 mux_inst_22 (
  .O(douta[0]),
  .I0(mux_o_20),
  .I1(mux_o_19),
  .S0(dff_q_0)
);
MUX2 mux_inst_23 (
  .O(mux_o_23),
  .I0(dpb_inst_21_douta[1]),
  .I1(dpb_inst_22_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_24 (
  .O(mux_o_24),
  .I0(dpb_inst_23_douta[1]),
  .I1(dpb_inst_24_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_25 (
  .O(mux_o_25),
  .I0(dpb_inst_25_douta[1]),
  .I1(dpb_inst_26_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_26 (
  .O(mux_o_26),
  .I0(dpb_inst_27_douta[1]),
  .I1(dpb_inst_28_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_27 (
  .O(mux_o_27),
  .I0(dpb_inst_29_douta[1]),
  .I1(dpb_inst_30_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_28 (
  .O(mux_o_28),
  .I0(dpb_inst_31_douta[1]),
  .I1(dpb_inst_32_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_29 (
  .O(mux_o_29),
  .I0(dpb_inst_33_douta[1]),
  .I1(dpb_inst_34_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_30 (
  .O(mux_o_30),
  .I0(dpb_inst_35_douta[1]),
  .I1(dpb_inst_36_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_31 (
  .O(mux_o_31),
  .I0(dpb_inst_37_douta[1]),
  .I1(dpb_inst_38_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_32 (
  .O(mux_o_32),
  .I0(dpb_inst_39_douta[1]),
  .I1(dpb_inst_40_douta[1]),
  .S0(dff_q_4)
);
MUX2 mux_inst_34 (
  .O(mux_o_34),
  .I0(mux_o_23),
  .I1(mux_o_24),
  .S0(dff_q_3)
);
MUX2 mux_inst_35 (
  .O(mux_o_35),
  .I0(mux_o_25),
  .I1(mux_o_26),
  .S0(dff_q_3)
);
MUX2 mux_inst_36 (
  .O(mux_o_36),
  .I0(mux_o_27),
  .I1(mux_o_28),
  .S0(dff_q_3)
);
MUX2 mux_inst_37 (
  .O(mux_o_37),
  .I0(mux_o_29),
  .I1(mux_o_30),
  .S0(dff_q_3)
);
MUX2 mux_inst_38 (
  .O(mux_o_38),
  .I0(mux_o_31),
  .I1(mux_o_32),
  .S0(dff_q_3)
);
MUX2 mux_inst_40 (
  .O(mux_o_40),
  .I0(mux_o_34),
  .I1(mux_o_35),
  .S0(dff_q_2)
);
MUX2 mux_inst_41 (
  .O(mux_o_41),
  .I0(mux_o_36),
  .I1(mux_o_37),
  .S0(dff_q_2)
);
MUX2 mux_inst_42 (
  .O(mux_o_42),
  .I0(mux_o_38),
  .I1(dpb_inst_41_douta[1]),
  .S0(dff_q_2)
);
MUX2 mux_inst_43 (
  .O(mux_o_43),
  .I0(mux_o_40),
  .I1(mux_o_41),
  .S0(dff_q_1)
);
MUX2 mux_inst_45 (
  .O(douta[1]),
  .I0(mux_o_43),
  .I1(mux_o_42),
  .S0(dff_q_0)
);
MUX2 mux_inst_46 (
  .O(mux_o_46),
  .I0(dpb_inst_0_doutb[0]),
  .I1(dpb_inst_1_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_47 (
  .O(mux_o_47),
  .I0(dpb_inst_2_doutb[0]),
  .I1(dpb_inst_3_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_48 (
  .O(mux_o_48),
  .I0(dpb_inst_4_doutb[0]),
  .I1(dpb_inst_5_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_49 (
  .O(mux_o_49),
  .I0(dpb_inst_6_doutb[0]),
  .I1(dpb_inst_7_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_50 (
  .O(mux_o_50),
  .I0(dpb_inst_8_doutb[0]),
  .I1(dpb_inst_9_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_51 (
  .O(mux_o_51),
  .I0(dpb_inst_10_doutb[0]),
  .I1(dpb_inst_11_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_52 (
  .O(mux_o_52),
  .I0(dpb_inst_12_doutb[0]),
  .I1(dpb_inst_13_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_53 (
  .O(mux_o_53),
  .I0(dpb_inst_14_doutb[0]),
  .I1(dpb_inst_15_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_54 (
  .O(mux_o_54),
  .I0(dpb_inst_16_doutb[0]),
  .I1(dpb_inst_17_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_55 (
  .O(mux_o_55),
  .I0(dpb_inst_18_doutb[0]),
  .I1(dpb_inst_19_doutb[0]),
  .S0(dff_q_9)
);
MUX2 mux_inst_57 (
  .O(mux_o_57),
  .I0(mux_o_46),
  .I1(mux_o_47),
  .S0(dff_q_8)
);
MUX2 mux_inst_58 (
  .O(mux_o_58),
  .I0(mux_o_48),
  .I1(mux_o_49),
  .S0(dff_q_8)
);
MUX2 mux_inst_59 (
  .O(mux_o_59),
  .I0(mux_o_50),
  .I1(mux_o_51),
  .S0(dff_q_8)
);
MUX2 mux_inst_60 (
  .O(mux_o_60),
  .I0(mux_o_52),
  .I1(mux_o_53),
  .S0(dff_q_8)
);
MUX2 mux_inst_61 (
  .O(mux_o_61),
  .I0(mux_o_54),
  .I1(mux_o_55),
  .S0(dff_q_8)
);
MUX2 mux_inst_63 (
  .O(mux_o_63),
  .I0(mux_o_57),
  .I1(mux_o_58),
  .S0(dff_q_7)
);
MUX2 mux_inst_64 (
  .O(mux_o_64),
  .I0(mux_o_59),
  .I1(mux_o_60),
  .S0(dff_q_7)
);
MUX2 mux_inst_65 (
  .O(mux_o_65),
  .I0(mux_o_61),
  .I1(dpb_inst_20_doutb[0]),
  .S0(dff_q_7)
);
MUX2 mux_inst_66 (
  .O(mux_o_66),
  .I0(mux_o_63),
  .I1(mux_o_64),
  .S0(dff_q_6)
);
MUX2 mux_inst_68 (
  .O(doutb[0]),
  .I0(mux_o_66),
  .I1(mux_o_65),
  .S0(dff_q_5)
);
MUX2 mux_inst_69 (
  .O(mux_o_69),
  .I0(dpb_inst_21_doutb[1]),
  .I1(dpb_inst_22_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_70 (
  .O(mux_o_70),
  .I0(dpb_inst_23_doutb[1]),
  .I1(dpb_inst_24_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_71 (
  .O(mux_o_71),
  .I0(dpb_inst_25_doutb[1]),
  .I1(dpb_inst_26_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_72 (
  .O(mux_o_72),
  .I0(dpb_inst_27_doutb[1]),
  .I1(dpb_inst_28_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_73 (
  .O(mux_o_73),
  .I0(dpb_inst_29_doutb[1]),
  .I1(dpb_inst_30_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_74 (
  .O(mux_o_74),
  .I0(dpb_inst_31_doutb[1]),
  .I1(dpb_inst_32_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_75 (
  .O(mux_o_75),
  .I0(dpb_inst_33_doutb[1]),
  .I1(dpb_inst_34_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_76 (
  .O(mux_o_76),
  .I0(dpb_inst_35_doutb[1]),
  .I1(dpb_inst_36_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_77 (
  .O(mux_o_77),
  .I0(dpb_inst_37_doutb[1]),
  .I1(dpb_inst_38_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_78 (
  .O(mux_o_78),
  .I0(dpb_inst_39_doutb[1]),
  .I1(dpb_inst_40_doutb[1]),
  .S0(dff_q_9)
);
MUX2 mux_inst_80 (
  .O(mux_o_80),
  .I0(mux_o_69),
  .I1(mux_o_70),
  .S0(dff_q_8)
);
MUX2 mux_inst_81 (
  .O(mux_o_81),
  .I0(mux_o_71),
  .I1(mux_o_72),
  .S0(dff_q_8)
);
MUX2 mux_inst_82 (
  .O(mux_o_82),
  .I0(mux_o_73),
  .I1(mux_o_74),
  .S0(dff_q_8)
);
MUX2 mux_inst_83 (
  .O(mux_o_83),
  .I0(mux_o_75),
  .I1(mux_o_76),
  .S0(dff_q_8)
);
MUX2 mux_inst_84 (
  .O(mux_o_84),
  .I0(mux_o_77),
  .I1(mux_o_78),
  .S0(dff_q_8)
);
MUX2 mux_inst_86 (
  .O(mux_o_86),
  .I0(mux_o_80),
  .I1(mux_o_81),
  .S0(dff_q_7)
);
MUX2 mux_inst_87 (
  .O(mux_o_87),
  .I0(mux_o_82),
  .I1(mux_o_83),
  .S0(dff_q_7)
);
MUX2 mux_inst_88 (
  .O(mux_o_88),
  .I0(mux_o_84),
  .I1(dpb_inst_41_doutb[1]),
  .S0(dff_q_7)
);
MUX2 mux_inst_89 (
  .O(mux_o_89),
  .I0(mux_o_86),
  .I1(mux_o_87),
  .S0(dff_q_6)
);
MUX2 mux_inst_91 (
  .O(doutb[1]),
  .I0(mux_o_89),
  .I1(mux_o_88),
  .S0(dff_q_5)
);
endmodule //Gowin_DPB
