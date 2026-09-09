module lcd_timing(
    input clk,


    output wire        LCD_HSYNC,
    output wire        LCD_VSYNC,
    output wire        LCD_DE,

    output logic [10:0] h_pos,
    output logic [9:0] v_pos
); 
localparam H_ACTIVE = 1024;
localparam H_TOTAL  = 1344;
localparam V_ACTIVE = 600;
localparam V_TOTAL  = 635;

assign LCD_HSYNC = 0;
assign LCD_VSYNC = 0;


always @(posedge clk) begin
    if (h_pos == H_TOTAL-1) begin
        h_pos <= 0;

        if (v_pos == V_TOTAL-1)
            v_pos <= 0;
        else
            v_pos <= v_pos + 10'd1;
    end
    else begin
        h_pos <= h_pos + 11'd1;
    end
end

assign LCD_DE =
    (h_pos < H_ACTIVE) &&
    (v_pos < V_ACTIVE);



endmodule