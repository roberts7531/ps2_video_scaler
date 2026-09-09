module lcd_timing(
    input clk,

    

    output logic [5:0]  LCD_R,
    output logic [5:0]  LCD_G,
    output logic [5:0]  LCD_B,

    output wire        LCD_HSYNC,
    output wire        LCD_VSYNC,
    output wire        LCD_DE,
    output wire        LCD_PCLK,
    output wire        LCD_BL
); 


endmodule