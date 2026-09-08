//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Sat Sep  5 19:22:47 2026

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    ps2_line_ram your_instance_name(
        .dout(dout_o), //output [31:0] dout
        .clka(clka_i), //input clka
        .cea(cea_i), //input cea
        .reseta(reseta_i), //input reseta
        .clkb(clkb_i), //input clkb
        .ceb(ceb_i), //input ceb
        .resetb(resetb_i), //input resetb
        .oce(oce_i), //input oce
        .ada(ada_i), //input [9:0] ada
        .din(din_i), //input [15:0] din
        .adb(adb_i) //input [8:0] adb
    );

//--------Copy end-------------------
