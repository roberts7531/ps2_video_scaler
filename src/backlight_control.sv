module backlight_control (
    input clk,

    input logic [6:0] backlightLevel,

    output logic backlightPwm
) 

logic [6:0] backlightCounter;
always @(posedge clk) begin 
    backlightCounter <= backlightCounter + 7'd1;

    if (backlightCounter >= backlightLevel) backlightPwm <= 0;
    else backlightPwm <= 1;

end

endmodule