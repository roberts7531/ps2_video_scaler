module gw_gao(
    PS2_HSYNC,
    PS2_VSYNC,
    \PS2_R[5] ,
    \PS2_R[4] ,
    \PS2_R[3] ,
    \PS2_R[2] ,
    \PS2_R[1] ,
    \PS2_R[0] ,
    \h_count[15] ,
    \h_count[14] ,
    \h_count[13] ,
    \h_count[12] ,
    \h_count[11] ,
    \h_count[10] ,
    \h_count[9] ,
    \h_count[8] ,
    \h_count[7] ,
    \h_count[6] ,
    \h_count[5] ,
    \h_count[4] ,
    \h_count[3] ,
    \h_count[2] ,
    \h_count[1] ,
    \h_count[0] ,
    \v_count[15] ,
    \v_count[14] ,
    \v_count[13] ,
    \v_count[12] ,
    \v_count[11] ,
    \v_count[10] ,
    \v_count[9] ,
    \v_count[8] ,
    \v_count[7] ,
    \v_count[6] ,
    \v_count[5] ,
    \v_count[4] ,
    \v_count[3] ,
    \v_count[2] ,
    \v_count[1] ,
    \v_count[0] ,
    \pixel_y[9] ,
    \pixel_y[8] ,
    \pixel_y[7] ,
    \pixel_y[6] ,
    \pixel_y[5] ,
    \pixel_y[4] ,
    \pixel_y[3] ,
    \pixel_y[2] ,
    \pixel_y[1] ,
    \pixel_y[0] ,
    video_de,
    \modedetect/activeMode[2] ,
    \modedetect/activeMode[1] ,
    \modedetect/activeMode[0] ,
    \modedetect/ceEvery2 ,
    \modedetect/ceEvery4 ,
    clockEnable,
    \yOffset[9] ,
    \yOffset[8] ,
    \yOffset[7] ,
    \yOffset[6] ,
    \yOffset[5] ,
    \yOffset[4] ,
    \yOffset[3] ,
    \yOffset[2] ,
    \yOffset[1] ,
    \yOffset[0] ,
    \ySize[9] ,
    \ySize[8] ,
    \ySize[7] ,
    \ySize[6] ,
    \ySize[5] ,
    \ySize[4] ,
    \ySize[3] ,
    \ySize[2] ,
    \ySize[1] ,
    \ySize[0] ,
    PS2_PCLK,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input PS2_HSYNC;
input PS2_VSYNC;
input \PS2_R[5] ;
input \PS2_R[4] ;
input \PS2_R[3] ;
input \PS2_R[2] ;
input \PS2_R[1] ;
input \PS2_R[0] ;
input \h_count[15] ;
input \h_count[14] ;
input \h_count[13] ;
input \h_count[12] ;
input \h_count[11] ;
input \h_count[10] ;
input \h_count[9] ;
input \h_count[8] ;
input \h_count[7] ;
input \h_count[6] ;
input \h_count[5] ;
input \h_count[4] ;
input \h_count[3] ;
input \h_count[2] ;
input \h_count[1] ;
input \h_count[0] ;
input \v_count[15] ;
input \v_count[14] ;
input \v_count[13] ;
input \v_count[12] ;
input \v_count[11] ;
input \v_count[10] ;
input \v_count[9] ;
input \v_count[8] ;
input \v_count[7] ;
input \v_count[6] ;
input \v_count[5] ;
input \v_count[4] ;
input \v_count[3] ;
input \v_count[2] ;
input \v_count[1] ;
input \v_count[0] ;
input \pixel_y[9] ;
input \pixel_y[8] ;
input \pixel_y[7] ;
input \pixel_y[6] ;
input \pixel_y[5] ;
input \pixel_y[4] ;
input \pixel_y[3] ;
input \pixel_y[2] ;
input \pixel_y[1] ;
input \pixel_y[0] ;
input video_de;
input \modedetect/activeMode[2] ;
input \modedetect/activeMode[1] ;
input \modedetect/activeMode[0] ;
input \modedetect/ceEvery2 ;
input \modedetect/ceEvery4 ;
input clockEnable;
input \yOffset[9] ;
input \yOffset[8] ;
input \yOffset[7] ;
input \yOffset[6] ;
input \yOffset[5] ;
input \yOffset[4] ;
input \yOffset[3] ;
input \yOffset[2] ;
input \yOffset[1] ;
input \yOffset[0] ;
input \ySize[9] ;
input \ySize[8] ;
input \ySize[7] ;
input \ySize[6] ;
input \ySize[5] ;
input \ySize[4] ;
input \ySize[3] ;
input \ySize[2] ;
input \ySize[1] ;
input \ySize[0] ;
input PS2_PCLK;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire PS2_HSYNC;
wire PS2_VSYNC;
wire \PS2_R[5] ;
wire \PS2_R[4] ;
wire \PS2_R[3] ;
wire \PS2_R[2] ;
wire \PS2_R[1] ;
wire \PS2_R[0] ;
wire \h_count[15] ;
wire \h_count[14] ;
wire \h_count[13] ;
wire \h_count[12] ;
wire \h_count[11] ;
wire \h_count[10] ;
wire \h_count[9] ;
wire \h_count[8] ;
wire \h_count[7] ;
wire \h_count[6] ;
wire \h_count[5] ;
wire \h_count[4] ;
wire \h_count[3] ;
wire \h_count[2] ;
wire \h_count[1] ;
wire \h_count[0] ;
wire \v_count[15] ;
wire \v_count[14] ;
wire \v_count[13] ;
wire \v_count[12] ;
wire \v_count[11] ;
wire \v_count[10] ;
wire \v_count[9] ;
wire \v_count[8] ;
wire \v_count[7] ;
wire \v_count[6] ;
wire \v_count[5] ;
wire \v_count[4] ;
wire \v_count[3] ;
wire \v_count[2] ;
wire \v_count[1] ;
wire \v_count[0] ;
wire \pixel_y[9] ;
wire \pixel_y[8] ;
wire \pixel_y[7] ;
wire \pixel_y[6] ;
wire \pixel_y[5] ;
wire \pixel_y[4] ;
wire \pixel_y[3] ;
wire \pixel_y[2] ;
wire \pixel_y[1] ;
wire \pixel_y[0] ;
wire video_de;
wire \modedetect/activeMode[2] ;
wire \modedetect/activeMode[1] ;
wire \modedetect/activeMode[0] ;
wire \modedetect/ceEvery2 ;
wire \modedetect/ceEvery4 ;
wire clockEnable;
wire \yOffset[9] ;
wire \yOffset[8] ;
wire \yOffset[7] ;
wire \yOffset[6] ;
wire \yOffset[5] ;
wire \yOffset[4] ;
wire \yOffset[3] ;
wire \yOffset[2] ;
wire \yOffset[1] ;
wire \yOffset[0] ;
wire \ySize[9] ;
wire \ySize[8] ;
wire \ySize[7] ;
wire \ySize[6] ;
wire \ySize[5] ;
wire \ySize[4] ;
wire \ySize[3] ;
wire \ySize[2] ;
wire \ySize[1] ;
wire \ySize[0] ;
wire PS2_PCLK;
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
    .trig0_i({\pixel_y[9] ,\pixel_y[8] ,\pixel_y[7] ,\pixel_y[6] ,\pixel_y[5] ,\pixel_y[4] ,\pixel_y[3] ,\pixel_y[2] ,\pixel_y[1] ,\pixel_y[0] }),
    .data_i({PS2_HSYNC,PS2_VSYNC,\PS2_R[5] ,\PS2_R[4] ,\PS2_R[3] ,\PS2_R[2] ,\PS2_R[1] ,\PS2_R[0] ,\h_count[15] ,\h_count[14] ,\h_count[13] ,\h_count[12] ,\h_count[11] ,\h_count[10] ,\h_count[9] ,\h_count[8] ,\h_count[7] ,\h_count[6] ,\h_count[5] ,\h_count[4] ,\h_count[3] ,\h_count[2] ,\h_count[1] ,\h_count[0] ,\v_count[15] ,\v_count[14] ,\v_count[13] ,\v_count[12] ,\v_count[11] ,\v_count[10] ,\v_count[9] ,\v_count[8] ,\v_count[7] ,\v_count[6] ,\v_count[5] ,\v_count[4] ,\v_count[3] ,\v_count[2] ,\v_count[1] ,\v_count[0] ,\pixel_y[9] ,\pixel_y[8] ,\pixel_y[7] ,\pixel_y[6] ,\pixel_y[5] ,\pixel_y[4] ,\pixel_y[3] ,\pixel_y[2] ,\pixel_y[1] ,\pixel_y[0] ,video_de,\modedetect/activeMode[2] ,\modedetect/activeMode[1] ,\modedetect/activeMode[0] ,\modedetect/ceEvery2 ,\modedetect/ceEvery4 ,clockEnable,\yOffset[9] ,\yOffset[8] ,\yOffset[7] ,\yOffset[6] ,\yOffset[5] ,\yOffset[4] ,\yOffset[3] ,\yOffset[2] ,\yOffset[1] ,\yOffset[0] ,\ySize[9] ,\ySize[8] ,\ySize[7] ,\ySize[6] ,\ySize[5] ,\ySize[4] ,\ySize[3] ,\ySize[2] ,\ySize[1] ,\ySize[0] }),
    .clk_i(PS2_PCLK)
);

endmodule
