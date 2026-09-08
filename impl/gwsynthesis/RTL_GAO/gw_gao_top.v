module gw_gao(
    \sdr_interface/O_sdrc_init_done ,
    \rgbOut[17] ,
    \rgbOut[16] ,
    \rgbOut[15] ,
    \rgbOut[14] ,
    \rgbOut[13] ,
    \rgbOut[12] ,
    \rgbOut[11] ,
    \rgbOut[10] ,
    \rgbOut[9] ,
    \rgbOut[8] ,
    \rgbOut[7] ,
    \rgbOut[6] ,
    \rgbOut[5] ,
    \rgbOut[4] ,
    \rgbOut[3] ,
    \rgbOut[2] ,
    \rgbOut[1] ,
    \rgbOut[0] ,
    vramWrEn,
    \sdr_interface/I_sdrc_cmd[2] ,
    \sdr_interface/I_sdrc_cmd[1] ,
    \sdr_interface/I_sdrc_cmd[0] ,
    \sdr_interface/sdrc/O_sdrc_cmd_ack ,
    \sdr_interface/sdram_fsm_state[3] ,
    \sdr_interface/sdram_fsm_state[2] ,
    \sdr_interface/sdram_fsm_state[1] ,
    \sdr_interface/sdram_fsm_state[0] ,
    LCD_VSYNC,
    \sdr_pll/clkout ,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \sdr_interface/O_sdrc_init_done ;
input \rgbOut[17] ;
input \rgbOut[16] ;
input \rgbOut[15] ;
input \rgbOut[14] ;
input \rgbOut[13] ;
input \rgbOut[12] ;
input \rgbOut[11] ;
input \rgbOut[10] ;
input \rgbOut[9] ;
input \rgbOut[8] ;
input \rgbOut[7] ;
input \rgbOut[6] ;
input \rgbOut[5] ;
input \rgbOut[4] ;
input \rgbOut[3] ;
input \rgbOut[2] ;
input \rgbOut[1] ;
input \rgbOut[0] ;
input vramWrEn;
input \sdr_interface/I_sdrc_cmd[2] ;
input \sdr_interface/I_sdrc_cmd[1] ;
input \sdr_interface/I_sdrc_cmd[0] ;
input \sdr_interface/sdrc/O_sdrc_cmd_ack ;
input \sdr_interface/sdram_fsm_state[3] ;
input \sdr_interface/sdram_fsm_state[2] ;
input \sdr_interface/sdram_fsm_state[1] ;
input \sdr_interface/sdram_fsm_state[0] ;
input LCD_VSYNC;
input \sdr_pll/clkout ;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \sdr_interface/O_sdrc_init_done ;
wire \rgbOut[17] ;
wire \rgbOut[16] ;
wire \rgbOut[15] ;
wire \rgbOut[14] ;
wire \rgbOut[13] ;
wire \rgbOut[12] ;
wire \rgbOut[11] ;
wire \rgbOut[10] ;
wire \rgbOut[9] ;
wire \rgbOut[8] ;
wire \rgbOut[7] ;
wire \rgbOut[6] ;
wire \rgbOut[5] ;
wire \rgbOut[4] ;
wire \rgbOut[3] ;
wire \rgbOut[2] ;
wire \rgbOut[1] ;
wire \rgbOut[0] ;
wire vramWrEn;
wire \sdr_interface/I_sdrc_cmd[2] ;
wire \sdr_interface/I_sdrc_cmd[1] ;
wire \sdr_interface/I_sdrc_cmd[0] ;
wire \sdr_interface/sdrc/O_sdrc_cmd_ack ;
wire \sdr_interface/sdram_fsm_state[3] ;
wire \sdr_interface/sdram_fsm_state[2] ;
wire \sdr_interface/sdram_fsm_state[1] ;
wire \sdr_interface/sdram_fsm_state[0] ;
wire LCD_VSYNC;
wire \sdr_pll/clkout ;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(LCD_VSYNC),
    .data_i({\sdr_interface/O_sdrc_init_done ,\rgbOut[17] ,\rgbOut[16] ,\rgbOut[15] ,\rgbOut[14] ,\rgbOut[13] ,\rgbOut[12] ,\rgbOut[11] ,\rgbOut[10] ,\rgbOut[9] ,\rgbOut[8] ,\rgbOut[7] ,\rgbOut[6] ,\rgbOut[5] ,\rgbOut[4] ,\rgbOut[3] ,\rgbOut[2] ,\rgbOut[1] ,\rgbOut[0] ,vramWrEn,\sdr_interface/I_sdrc_cmd[2] ,\sdr_interface/I_sdrc_cmd[1] ,\sdr_interface/I_sdrc_cmd[0] ,\sdr_interface/sdrc/O_sdrc_cmd_ack ,\sdr_interface/sdram_fsm_state[3] ,\sdr_interface/sdram_fsm_state[2] ,\sdr_interface/sdram_fsm_state[1] ,\sdr_interface/sdram_fsm_state[0] }),
    .clk_i(\sdr_pll/clkout )
);

endmodule
