module bilinear_scaler(
    input [15:0] pixel00,
    input [15:0] pixel01,
    input [15:0] pixel10,
    input [15:0] pixel11,
    input [9:0]  xFrac,
    input [9:0]  yFrac,

    output [5:0] rOut,
    output [5:0] gOut,
    output [5:0] bOut
); 

// ------------------------------------------------------------
// Horizontal interpolation - TOP LINE
// ------------------------------------------------------------

wire [4:0] r0 = pixel00[15:11];
wire [5:0] g0 = pixel00[10:5];
wire [4:0] b0 = pixel00[4:0];

wire [4:0] r1 = pixel01[15:11];
wire [5:0] g1 = pixel01[10:5];
wire [4:0] b1 = pixel01[4:0];

wire [10:0] w0 = 11'd1024 - {1'b0, xFrac};
wire [10:0] w1 = {1'b0, xFrac};

wire [15:0] r_mix_top = r0 * w0 + r1 * w1;
wire [16:0] g_mix_top = g0 * w0 + g1 * w1;
wire [15:0] b_mix_top = b0 * w0 + b1 * w1;


// ------------------------------------------------------------
// Horizontal interpolation - BOTTOM LINE
// ------------------------------------------------------------

wire [4:0] r2 = pixel10[15:11];
wire [5:0] g2 = pixel10[10:5];
wire [4:0] b2 = pixel10[4:0];

wire [4:0] r3 = pixel11[15:11];
wire [5:0] g3 = pixel11[10:5];
wire [4:0] b3 = pixel11[4:0];

wire [15:0] r_mix_bottom = r2 * w0 + r3 * w1;
wire [16:0] g_mix_bottom = g2 * w0 + g3 * w1;
wire [15:0] b_mix_bottom = b2 * w0 + b3 * w1;


// ------------------------------------------------------------
// Convert horizontal results back to RGB565
// ------------------------------------------------------------

wire [4:0] r_top = r_mix_top[14:10];
wire [5:0] g_top = g_mix_top[15:10];
wire [4:0] b_top = b_mix_top[14:10];

wire [4:0] r_bottom = r_mix_bottom[14:10];
wire [5:0] g_bottom = g_mix_bottom[15:10];
wire [4:0] b_bottom = b_mix_bottom[14:10];


// ------------------------------------------------------------
// Vertical interpolation
// ------------------------------------------------------------

wire [10:0] wy0 = 11'd1024 - {1'b0, yFrac};
wire [10:0] wy1 = {1'b0, yFrac};

wire [15:0] r_final =
    r_top * wy0 +
    r_bottom * wy1;

wire [16:0] g_final =
    g_top * wy0 +
    g_bottom * wy1;

wire [15:0] b_final =
    b_top * wy0 +
    b_bottom * wy1;
    
assign rOut = {r_final[14:10], 1'b0};
assign gOut = g_final[15:10];
assign bOut = {b_final[14:10], 1'b0};


endmodule