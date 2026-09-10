module gw_gao(
    \h_pos[10] ,
    \h_pos[9] ,
    \h_pos[8] ,
    \h_pos[7] ,
    \h_pos[6] ,
    \h_pos[5] ,
    \h_pos[4] ,
    \h_pos[3] ,
    \h_pos[2] ,
    \h_pos[1] ,
    \h_pos[0] ,
    \screenData[15] ,
    \screenData[14] ,
    \screenData[13] ,
    \screenData[12] ,
    \screenData[11] ,
    \screenData[10] ,
    \screenData[9] ,
    \screenData[8] ,
    \screenData[7] ,
    \screenData[6] ,
    \screenData[5] ,
    \screenData[4] ,
    \screenData[3] ,
    \screenData[2] ,
    \screenData[1] ,
    \screenData[0] ,
    \screenData2[15] ,
    \screenData2[14] ,
    \screenData2[13] ,
    \screenData2[12] ,
    \screenData2[11] ,
    \screenData2[10] ,
    \screenData2[9] ,
    \screenData2[8] ,
    \screenData2[7] ,
    \screenData2[6] ,
    \screenData2[5] ,
    \screenData2[4] ,
    \screenData2[3] ,
    \screenData2[2] ,
    \screenData2[1] ,
    \screenData2[0] ,
    LCD_DE,
    LCD_PCLK,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \h_pos[10] ;
input \h_pos[9] ;
input \h_pos[8] ;
input \h_pos[7] ;
input \h_pos[6] ;
input \h_pos[5] ;
input \h_pos[4] ;
input \h_pos[3] ;
input \h_pos[2] ;
input \h_pos[1] ;
input \h_pos[0] ;
input \screenData[15] ;
input \screenData[14] ;
input \screenData[13] ;
input \screenData[12] ;
input \screenData[11] ;
input \screenData[10] ;
input \screenData[9] ;
input \screenData[8] ;
input \screenData[7] ;
input \screenData[6] ;
input \screenData[5] ;
input \screenData[4] ;
input \screenData[3] ;
input \screenData[2] ;
input \screenData[1] ;
input \screenData[0] ;
input \screenData2[15] ;
input \screenData2[14] ;
input \screenData2[13] ;
input \screenData2[12] ;
input \screenData2[11] ;
input \screenData2[10] ;
input \screenData2[9] ;
input \screenData2[8] ;
input \screenData2[7] ;
input \screenData2[6] ;
input \screenData2[5] ;
input \screenData2[4] ;
input \screenData2[3] ;
input \screenData2[2] ;
input \screenData2[1] ;
input \screenData2[0] ;
input LCD_DE;
input LCD_PCLK;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \h_pos[10] ;
wire \h_pos[9] ;
wire \h_pos[8] ;
wire \h_pos[7] ;
wire \h_pos[6] ;
wire \h_pos[5] ;
wire \h_pos[4] ;
wire \h_pos[3] ;
wire \h_pos[2] ;
wire \h_pos[1] ;
wire \h_pos[0] ;
wire \screenData[15] ;
wire \screenData[14] ;
wire \screenData[13] ;
wire \screenData[12] ;
wire \screenData[11] ;
wire \screenData[10] ;
wire \screenData[9] ;
wire \screenData[8] ;
wire \screenData[7] ;
wire \screenData[6] ;
wire \screenData[5] ;
wire \screenData[4] ;
wire \screenData[3] ;
wire \screenData[2] ;
wire \screenData[1] ;
wire \screenData[0] ;
wire \screenData2[15] ;
wire \screenData2[14] ;
wire \screenData2[13] ;
wire \screenData2[12] ;
wire \screenData2[11] ;
wire \screenData2[10] ;
wire \screenData2[9] ;
wire \screenData2[8] ;
wire \screenData2[7] ;
wire \screenData2[6] ;
wire \screenData2[5] ;
wire \screenData2[4] ;
wire \screenData2[3] ;
wire \screenData2[2] ;
wire \screenData2[1] ;
wire \screenData2[0] ;
wire LCD_DE;
wire LCD_PCLK;
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
    .trig0_i(LCD_DE),
    .data_i({\h_pos[10] ,\h_pos[9] ,\h_pos[8] ,\h_pos[7] ,\h_pos[6] ,\h_pos[5] ,\h_pos[4] ,\h_pos[3] ,\h_pos[2] ,\h_pos[1] ,\h_pos[0] ,\screenData[15] ,\screenData[14] ,\screenData[13] ,\screenData[12] ,\screenData[11] ,\screenData[10] ,\screenData[9] ,\screenData[8] ,\screenData[7] ,\screenData[6] ,\screenData[5] ,\screenData[4] ,\screenData[3] ,\screenData[2] ,\screenData[1] ,\screenData[0] ,\screenData2[15] ,\screenData2[14] ,\screenData2[13] ,\screenData2[12] ,\screenData2[11] ,\screenData2[10] ,\screenData2[9] ,\screenData2[8] ,\screenData2[7] ,\screenData2[6] ,\screenData2[5] ,\screenData2[4] ,\screenData2[3] ,\screenData2[2] ,\screenData2[1] ,\screenData2[0] }),
    .clk_i(LCD_PCLK)
);

endmodule
