`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/06/01 18:44:19
// Design Name: 
// Module Name: prescaler
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module prescaler
#(
    parameter preScale = 99
)(
    input clk,
    input nReset,
    output clkOut
    );

reg [9:0] preScaler;
reg clkOutReg;

assign clkOut = clkOutReg;

always @(negedge clk)
begin
    if(~nReset)
    begin
        preScaler <= 10'h000;
    end
    else
    begin
        if(preScaler < preScale)
        begin
            preScaler <= preScaler + 10'h001;
        end
        else
        begin
            preScaler <= 10'h000;
        end
    end
end

always @(negedge clk)
begin
    if(~nReset)
    begin
        clkOutReg <= 1'b0;
    end
    else
    begin
        if(preScaler == preScale)
        begin
            clkOutReg <= ~clkOutReg;
        end
        else
        begin
            clkOutReg <= clkOutReg;
        end
    end
end

endmodule
