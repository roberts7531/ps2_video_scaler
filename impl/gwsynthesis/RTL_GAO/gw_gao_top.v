module gw_gao(
    \sdr_interface/sdram_fsm_state[3] ,
    \sdr_interface/sdram_fsm_state[2] ,
    \sdr_interface/sdram_fsm_state[1] ,
    \sdr_interface/sdram_fsm_state[0] ,
    \sdr_interface/fifoRdEn ,
    \sdr_interface/I_sdrc_addr[20] ,
    \sdr_interface/I_sdrc_addr[19] ,
    \sdr_interface/I_sdrc_addr[18] ,
    \sdr_interface/I_sdrc_addr[17] ,
    \sdr_interface/I_sdrc_addr[16] ,
    \sdr_interface/I_sdrc_addr[15] ,
    \sdr_interface/I_sdrc_addr[14] ,
    \sdr_interface/I_sdrc_addr[13] ,
    \sdr_interface/I_sdrc_addr[12] ,
    \sdr_interface/I_sdrc_addr[11] ,
    \sdr_interface/I_sdrc_addr[10] ,
    \sdr_interface/I_sdrc_addr[9] ,
    \sdr_interface/I_sdrc_addr[8] ,
    \sdr_interface/I_sdrc_addr[7] ,
    \sdr_interface/I_sdrc_addr[6] ,
    \sdr_interface/I_sdrc_addr[5] ,
    \sdr_interface/I_sdrc_addr[4] ,
    \sdr_interface/I_sdrc_addr[3] ,
    \sdr_interface/I_sdrc_addr[2] ,
    \sdr_interface/I_sdrc_addr[1] ,
    \sdr_interface/I_sdrc_addr[0] ,
    \sdr_interface/sdrc/I_sdrc_cmd[2] ,
    \sdr_interface/sdrc/I_sdrc_cmd[1] ,
    \sdr_interface/sdrc/I_sdrc_cmd[0] ,
    \sdr_interface/I_sdrc_cmd_en ,
    \sdr_interface/rgbOut[31] ,
    \sdr_interface/rgbOut[30] ,
    \sdr_interface/rgbOut[29] ,
    \sdr_interface/rgbOut[28] ,
    \sdr_interface/rgbOut[27] ,
    \sdr_interface/rgbOut[26] ,
    \sdr_interface/rgbOut[25] ,
    \sdr_interface/rgbOut[24] ,
    \sdr_interface/rgbOut[23] ,
    \sdr_interface/rgbOut[22] ,
    \sdr_interface/rgbOut[21] ,
    \sdr_interface/rgbOut[20] ,
    \sdr_interface/rgbOut[19] ,
    \sdr_interface/rgbOut[18] ,
    \sdr_interface/rgbOut[17] ,
    \sdr_interface/rgbOut[16] ,
    \sdr_interface/rgbOut[15] ,
    \sdr_interface/rgbOut[14] ,
    \sdr_interface/rgbOut[13] ,
    \sdr_interface/rgbOut[12] ,
    \sdr_interface/rgbOut[11] ,
    \sdr_interface/rgbOut[10] ,
    \sdr_interface/rgbOut[9] ,
    \sdr_interface/rgbOut[8] ,
    \sdr_interface/rgbOut[7] ,
    \sdr_interface/rgbOut[6] ,
    \sdr_interface/rgbOut[5] ,
    \sdr_interface/rgbOut[4] ,
    \sdr_interface/rgbOut[3] ,
    \sdr_interface/rgbOut[2] ,
    \sdr_interface/rgbOut[1] ,
    \sdr_interface/rgbOut[0] ,
    \sdr_interface/O_sdrc_data[31] ,
    \sdr_interface/O_sdrc_data[30] ,
    \sdr_interface/O_sdrc_data[29] ,
    \sdr_interface/O_sdrc_data[28] ,
    \sdr_interface/O_sdrc_data[27] ,
    \sdr_interface/O_sdrc_data[26] ,
    \sdr_interface/O_sdrc_data[25] ,
    \sdr_interface/O_sdrc_data[24] ,
    \sdr_interface/O_sdrc_data[23] ,
    \sdr_interface/O_sdrc_data[22] ,
    \sdr_interface/O_sdrc_data[21] ,
    \sdr_interface/O_sdrc_data[20] ,
    \sdr_interface/O_sdrc_data[19] ,
    \sdr_interface/O_sdrc_data[18] ,
    \sdr_interface/O_sdrc_data[17] ,
    \sdr_interface/O_sdrc_data[16] ,
    \sdr_interface/O_sdrc_data[15] ,
    \sdr_interface/O_sdrc_data[14] ,
    \sdr_interface/O_sdrc_data[13] ,
    \sdr_interface/O_sdrc_data[12] ,
    \sdr_interface/O_sdrc_data[11] ,
    \sdr_interface/O_sdrc_data[10] ,
    \sdr_interface/O_sdrc_data[9] ,
    \sdr_interface/O_sdrc_data[8] ,
    \sdr_interface/O_sdrc_data[7] ,
    \sdr_interface/O_sdrc_data[6] ,
    \sdr_interface/O_sdrc_data[5] ,
    \sdr_interface/O_sdrc_data[4] ,
    \sdr_interface/O_sdrc_data[3] ,
    \sdr_interface/O_sdrc_data[2] ,
    \sdr_interface/O_sdrc_data[1] ,
    \sdr_interface/O_sdrc_data[0] ,
    \sdr_interface/vramWrEn ,
    \sdr_interface/xPosOut[10] ,
    \sdr_interface/xPosOut[9] ,
    \sdr_interface/xPosOut[8] ,
    \sdr_interface/xPosOut[7] ,
    \sdr_interface/xPosOut[6] ,
    \sdr_interface/xPosOut[5] ,
    \sdr_interface/xPosOut[4] ,
    \sdr_interface/xPosOut[3] ,
    \sdr_interface/xPosOut[2] ,
    \sdr_interface/xPosOut[1] ,
    \sdr_interface/xPosOut[0] ,
    \sdr_pll/clkout ,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \sdr_interface/sdram_fsm_state[3] ;
input \sdr_interface/sdram_fsm_state[2] ;
input \sdr_interface/sdram_fsm_state[1] ;
input \sdr_interface/sdram_fsm_state[0] ;
input \sdr_interface/fifoRdEn ;
input \sdr_interface/I_sdrc_addr[20] ;
input \sdr_interface/I_sdrc_addr[19] ;
input \sdr_interface/I_sdrc_addr[18] ;
input \sdr_interface/I_sdrc_addr[17] ;
input \sdr_interface/I_sdrc_addr[16] ;
input \sdr_interface/I_sdrc_addr[15] ;
input \sdr_interface/I_sdrc_addr[14] ;
input \sdr_interface/I_sdrc_addr[13] ;
input \sdr_interface/I_sdrc_addr[12] ;
input \sdr_interface/I_sdrc_addr[11] ;
input \sdr_interface/I_sdrc_addr[10] ;
input \sdr_interface/I_sdrc_addr[9] ;
input \sdr_interface/I_sdrc_addr[8] ;
input \sdr_interface/I_sdrc_addr[7] ;
input \sdr_interface/I_sdrc_addr[6] ;
input \sdr_interface/I_sdrc_addr[5] ;
input \sdr_interface/I_sdrc_addr[4] ;
input \sdr_interface/I_sdrc_addr[3] ;
input \sdr_interface/I_sdrc_addr[2] ;
input \sdr_interface/I_sdrc_addr[1] ;
input \sdr_interface/I_sdrc_addr[0] ;
input \sdr_interface/sdrc/I_sdrc_cmd[2] ;
input \sdr_interface/sdrc/I_sdrc_cmd[1] ;
input \sdr_interface/sdrc/I_sdrc_cmd[0] ;
input \sdr_interface/I_sdrc_cmd_en ;
input \sdr_interface/rgbOut[31] ;
input \sdr_interface/rgbOut[30] ;
input \sdr_interface/rgbOut[29] ;
input \sdr_interface/rgbOut[28] ;
input \sdr_interface/rgbOut[27] ;
input \sdr_interface/rgbOut[26] ;
input \sdr_interface/rgbOut[25] ;
input \sdr_interface/rgbOut[24] ;
input \sdr_interface/rgbOut[23] ;
input \sdr_interface/rgbOut[22] ;
input \sdr_interface/rgbOut[21] ;
input \sdr_interface/rgbOut[20] ;
input \sdr_interface/rgbOut[19] ;
input \sdr_interface/rgbOut[18] ;
input \sdr_interface/rgbOut[17] ;
input \sdr_interface/rgbOut[16] ;
input \sdr_interface/rgbOut[15] ;
input \sdr_interface/rgbOut[14] ;
input \sdr_interface/rgbOut[13] ;
input \sdr_interface/rgbOut[12] ;
input \sdr_interface/rgbOut[11] ;
input \sdr_interface/rgbOut[10] ;
input \sdr_interface/rgbOut[9] ;
input \sdr_interface/rgbOut[8] ;
input \sdr_interface/rgbOut[7] ;
input \sdr_interface/rgbOut[6] ;
input \sdr_interface/rgbOut[5] ;
input \sdr_interface/rgbOut[4] ;
input \sdr_interface/rgbOut[3] ;
input \sdr_interface/rgbOut[2] ;
input \sdr_interface/rgbOut[1] ;
input \sdr_interface/rgbOut[0] ;
input \sdr_interface/O_sdrc_data[31] ;
input \sdr_interface/O_sdrc_data[30] ;
input \sdr_interface/O_sdrc_data[29] ;
input \sdr_interface/O_sdrc_data[28] ;
input \sdr_interface/O_sdrc_data[27] ;
input \sdr_interface/O_sdrc_data[26] ;
input \sdr_interface/O_sdrc_data[25] ;
input \sdr_interface/O_sdrc_data[24] ;
input \sdr_interface/O_sdrc_data[23] ;
input \sdr_interface/O_sdrc_data[22] ;
input \sdr_interface/O_sdrc_data[21] ;
input \sdr_interface/O_sdrc_data[20] ;
input \sdr_interface/O_sdrc_data[19] ;
input \sdr_interface/O_sdrc_data[18] ;
input \sdr_interface/O_sdrc_data[17] ;
input \sdr_interface/O_sdrc_data[16] ;
input \sdr_interface/O_sdrc_data[15] ;
input \sdr_interface/O_sdrc_data[14] ;
input \sdr_interface/O_sdrc_data[13] ;
input \sdr_interface/O_sdrc_data[12] ;
input \sdr_interface/O_sdrc_data[11] ;
input \sdr_interface/O_sdrc_data[10] ;
input \sdr_interface/O_sdrc_data[9] ;
input \sdr_interface/O_sdrc_data[8] ;
input \sdr_interface/O_sdrc_data[7] ;
input \sdr_interface/O_sdrc_data[6] ;
input \sdr_interface/O_sdrc_data[5] ;
input \sdr_interface/O_sdrc_data[4] ;
input \sdr_interface/O_sdrc_data[3] ;
input \sdr_interface/O_sdrc_data[2] ;
input \sdr_interface/O_sdrc_data[1] ;
input \sdr_interface/O_sdrc_data[0] ;
input \sdr_interface/vramWrEn ;
input \sdr_interface/xPosOut[10] ;
input \sdr_interface/xPosOut[9] ;
input \sdr_interface/xPosOut[8] ;
input \sdr_interface/xPosOut[7] ;
input \sdr_interface/xPosOut[6] ;
input \sdr_interface/xPosOut[5] ;
input \sdr_interface/xPosOut[4] ;
input \sdr_interface/xPosOut[3] ;
input \sdr_interface/xPosOut[2] ;
input \sdr_interface/xPosOut[1] ;
input \sdr_interface/xPosOut[0] ;
input \sdr_pll/clkout ;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \sdr_interface/sdram_fsm_state[3] ;
wire \sdr_interface/sdram_fsm_state[2] ;
wire \sdr_interface/sdram_fsm_state[1] ;
wire \sdr_interface/sdram_fsm_state[0] ;
wire \sdr_interface/fifoRdEn ;
wire \sdr_interface/I_sdrc_addr[20] ;
wire \sdr_interface/I_sdrc_addr[19] ;
wire \sdr_interface/I_sdrc_addr[18] ;
wire \sdr_interface/I_sdrc_addr[17] ;
wire \sdr_interface/I_sdrc_addr[16] ;
wire \sdr_interface/I_sdrc_addr[15] ;
wire \sdr_interface/I_sdrc_addr[14] ;
wire \sdr_interface/I_sdrc_addr[13] ;
wire \sdr_interface/I_sdrc_addr[12] ;
wire \sdr_interface/I_sdrc_addr[11] ;
wire \sdr_interface/I_sdrc_addr[10] ;
wire \sdr_interface/I_sdrc_addr[9] ;
wire \sdr_interface/I_sdrc_addr[8] ;
wire \sdr_interface/I_sdrc_addr[7] ;
wire \sdr_interface/I_sdrc_addr[6] ;
wire \sdr_interface/I_sdrc_addr[5] ;
wire \sdr_interface/I_sdrc_addr[4] ;
wire \sdr_interface/I_sdrc_addr[3] ;
wire \sdr_interface/I_sdrc_addr[2] ;
wire \sdr_interface/I_sdrc_addr[1] ;
wire \sdr_interface/I_sdrc_addr[0] ;
wire \sdr_interface/sdrc/I_sdrc_cmd[2] ;
wire \sdr_interface/sdrc/I_sdrc_cmd[1] ;
wire \sdr_interface/sdrc/I_sdrc_cmd[0] ;
wire \sdr_interface/I_sdrc_cmd_en ;
wire \sdr_interface/rgbOut[31] ;
wire \sdr_interface/rgbOut[30] ;
wire \sdr_interface/rgbOut[29] ;
wire \sdr_interface/rgbOut[28] ;
wire \sdr_interface/rgbOut[27] ;
wire \sdr_interface/rgbOut[26] ;
wire \sdr_interface/rgbOut[25] ;
wire \sdr_interface/rgbOut[24] ;
wire \sdr_interface/rgbOut[23] ;
wire \sdr_interface/rgbOut[22] ;
wire \sdr_interface/rgbOut[21] ;
wire \sdr_interface/rgbOut[20] ;
wire \sdr_interface/rgbOut[19] ;
wire \sdr_interface/rgbOut[18] ;
wire \sdr_interface/rgbOut[17] ;
wire \sdr_interface/rgbOut[16] ;
wire \sdr_interface/rgbOut[15] ;
wire \sdr_interface/rgbOut[14] ;
wire \sdr_interface/rgbOut[13] ;
wire \sdr_interface/rgbOut[12] ;
wire \sdr_interface/rgbOut[11] ;
wire \sdr_interface/rgbOut[10] ;
wire \sdr_interface/rgbOut[9] ;
wire \sdr_interface/rgbOut[8] ;
wire \sdr_interface/rgbOut[7] ;
wire \sdr_interface/rgbOut[6] ;
wire \sdr_interface/rgbOut[5] ;
wire \sdr_interface/rgbOut[4] ;
wire \sdr_interface/rgbOut[3] ;
wire \sdr_interface/rgbOut[2] ;
wire \sdr_interface/rgbOut[1] ;
wire \sdr_interface/rgbOut[0] ;
wire \sdr_interface/O_sdrc_data[31] ;
wire \sdr_interface/O_sdrc_data[30] ;
wire \sdr_interface/O_sdrc_data[29] ;
wire \sdr_interface/O_sdrc_data[28] ;
wire \sdr_interface/O_sdrc_data[27] ;
wire \sdr_interface/O_sdrc_data[26] ;
wire \sdr_interface/O_sdrc_data[25] ;
wire \sdr_interface/O_sdrc_data[24] ;
wire \sdr_interface/O_sdrc_data[23] ;
wire \sdr_interface/O_sdrc_data[22] ;
wire \sdr_interface/O_sdrc_data[21] ;
wire \sdr_interface/O_sdrc_data[20] ;
wire \sdr_interface/O_sdrc_data[19] ;
wire \sdr_interface/O_sdrc_data[18] ;
wire \sdr_interface/O_sdrc_data[17] ;
wire \sdr_interface/O_sdrc_data[16] ;
wire \sdr_interface/O_sdrc_data[15] ;
wire \sdr_interface/O_sdrc_data[14] ;
wire \sdr_interface/O_sdrc_data[13] ;
wire \sdr_interface/O_sdrc_data[12] ;
wire \sdr_interface/O_sdrc_data[11] ;
wire \sdr_interface/O_sdrc_data[10] ;
wire \sdr_interface/O_sdrc_data[9] ;
wire \sdr_interface/O_sdrc_data[8] ;
wire \sdr_interface/O_sdrc_data[7] ;
wire \sdr_interface/O_sdrc_data[6] ;
wire \sdr_interface/O_sdrc_data[5] ;
wire \sdr_interface/O_sdrc_data[4] ;
wire \sdr_interface/O_sdrc_data[3] ;
wire \sdr_interface/O_sdrc_data[2] ;
wire \sdr_interface/O_sdrc_data[1] ;
wire \sdr_interface/O_sdrc_data[0] ;
wire \sdr_interface/vramWrEn ;
wire \sdr_interface/xPosOut[10] ;
wire \sdr_interface/xPosOut[9] ;
wire \sdr_interface/xPosOut[8] ;
wire \sdr_interface/xPosOut[7] ;
wire \sdr_interface/xPosOut[6] ;
wire \sdr_interface/xPosOut[5] ;
wire \sdr_interface/xPosOut[4] ;
wire \sdr_interface/xPosOut[3] ;
wire \sdr_interface/xPosOut[2] ;
wire \sdr_interface/xPosOut[1] ;
wire \sdr_interface/xPosOut[0] ;
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
    .trig0_i({\sdr_interface/sdram_fsm_state[3] ,\sdr_interface/sdram_fsm_state[2] ,\sdr_interface/sdram_fsm_state[1] ,\sdr_interface/sdram_fsm_state[0] }),
    .data_i({\sdr_interface/sdram_fsm_state[3] ,\sdr_interface/sdram_fsm_state[2] ,\sdr_interface/sdram_fsm_state[1] ,\sdr_interface/sdram_fsm_state[0] ,\sdr_interface/fifoRdEn ,\sdr_interface/I_sdrc_addr[20] ,\sdr_interface/I_sdrc_addr[19] ,\sdr_interface/I_sdrc_addr[18] ,\sdr_interface/I_sdrc_addr[17] ,\sdr_interface/I_sdrc_addr[16] ,\sdr_interface/I_sdrc_addr[15] ,\sdr_interface/I_sdrc_addr[14] ,\sdr_interface/I_sdrc_addr[13] ,\sdr_interface/I_sdrc_addr[12] ,\sdr_interface/I_sdrc_addr[11] ,\sdr_interface/I_sdrc_addr[10] ,\sdr_interface/I_sdrc_addr[9] ,\sdr_interface/I_sdrc_addr[8] ,\sdr_interface/I_sdrc_addr[7] ,\sdr_interface/I_sdrc_addr[6] ,\sdr_interface/I_sdrc_addr[5] ,\sdr_interface/I_sdrc_addr[4] ,\sdr_interface/I_sdrc_addr[3] ,\sdr_interface/I_sdrc_addr[2] ,\sdr_interface/I_sdrc_addr[1] ,\sdr_interface/I_sdrc_addr[0] ,\sdr_interface/sdrc/I_sdrc_cmd[2] ,\sdr_interface/sdrc/I_sdrc_cmd[1] ,\sdr_interface/sdrc/I_sdrc_cmd[0] ,\sdr_interface/I_sdrc_cmd_en ,\sdr_interface/rgbOut[31] ,\sdr_interface/rgbOut[30] ,\sdr_interface/rgbOut[29] ,\sdr_interface/rgbOut[28] ,\sdr_interface/rgbOut[27] ,\sdr_interface/rgbOut[26] ,\sdr_interface/rgbOut[25] ,\sdr_interface/rgbOut[24] ,\sdr_interface/rgbOut[23] ,\sdr_interface/rgbOut[22] ,\sdr_interface/rgbOut[21] ,\sdr_interface/rgbOut[20] ,\sdr_interface/rgbOut[19] ,\sdr_interface/rgbOut[18] ,\sdr_interface/rgbOut[17] ,\sdr_interface/rgbOut[16] ,\sdr_interface/rgbOut[15] ,\sdr_interface/rgbOut[14] ,\sdr_interface/rgbOut[13] ,\sdr_interface/rgbOut[12] ,\sdr_interface/rgbOut[11] ,\sdr_interface/rgbOut[10] ,\sdr_interface/rgbOut[9] ,\sdr_interface/rgbOut[8] ,\sdr_interface/rgbOut[7] ,\sdr_interface/rgbOut[6] ,\sdr_interface/rgbOut[5] ,\sdr_interface/rgbOut[4] ,\sdr_interface/rgbOut[3] ,\sdr_interface/rgbOut[2] ,\sdr_interface/rgbOut[1] ,\sdr_interface/rgbOut[0] ,\sdr_interface/O_sdrc_data[31] ,\sdr_interface/O_sdrc_data[30] ,\sdr_interface/O_sdrc_data[29] ,\sdr_interface/O_sdrc_data[28] ,\sdr_interface/O_sdrc_data[27] ,\sdr_interface/O_sdrc_data[26] ,\sdr_interface/O_sdrc_data[25] ,\sdr_interface/O_sdrc_data[24] ,\sdr_interface/O_sdrc_data[23] ,\sdr_interface/O_sdrc_data[22] ,\sdr_interface/O_sdrc_data[21] ,\sdr_interface/O_sdrc_data[20] ,\sdr_interface/O_sdrc_data[19] ,\sdr_interface/O_sdrc_data[18] ,\sdr_interface/O_sdrc_data[17] ,\sdr_interface/O_sdrc_data[16] ,\sdr_interface/O_sdrc_data[15] ,\sdr_interface/O_sdrc_data[14] ,\sdr_interface/O_sdrc_data[13] ,\sdr_interface/O_sdrc_data[12] ,\sdr_interface/O_sdrc_data[11] ,\sdr_interface/O_sdrc_data[10] ,\sdr_interface/O_sdrc_data[9] ,\sdr_interface/O_sdrc_data[8] ,\sdr_interface/O_sdrc_data[7] ,\sdr_interface/O_sdrc_data[6] ,\sdr_interface/O_sdrc_data[5] ,\sdr_interface/O_sdrc_data[4] ,\sdr_interface/O_sdrc_data[3] ,\sdr_interface/O_sdrc_data[2] ,\sdr_interface/O_sdrc_data[1] ,\sdr_interface/O_sdrc_data[0] ,\sdr_interface/vramWrEn ,\sdr_interface/xPosOut[10] ,\sdr_interface/xPosOut[9] ,\sdr_interface/xPosOut[8] ,\sdr_interface/xPosOut[7] ,\sdr_interface/xPosOut[6] ,\sdr_interface/xPosOut[5] ,\sdr_interface/xPosOut[4] ,\sdr_interface/xPosOut[3] ,\sdr_interface/xPosOut[2] ,\sdr_interface/xPosOut[1] ,\sdr_interface/xPosOut[0] }),
    .clk_i(\sdr_pll/clkout )
);

endmodule
