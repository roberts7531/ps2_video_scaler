//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9.01
//Part Number: GW2AR-LV18QN88C8/I7
//Device: GW2AR-18
//Device Version: C
//Created Time: Fri Sep  4 20:19:28 2026

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    sdram_pll your_instance_name(
        .clkout(clkout_o), //output clkout
        .lock(lock_o), //output lock
        .clkin(clkin_i) //input clkin
    );

//--------Copy end-------------------
