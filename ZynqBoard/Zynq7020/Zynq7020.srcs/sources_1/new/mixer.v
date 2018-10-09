`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/03 18:40:20
// Design Name: 
// Module Name: mixer
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


module mixer(
    input nReset,
    input clk,
    input [15:0] S1,
    input [15:0] S2,
    output [15:0] O1,
    output [15:0] O2
    );

reg [15:0] outData1;
reg [15:0] outData2;

always @(negedge clk)
begin
    if(~nReset)
    begin
        outData1 <= 16'h0000;
        outData2 <= 16'h0000;
    end
    else
    begin
        outData1 <= S1 + S2;
        outData2 <= S1 + S2;
    end
end

assign O1 = outData1;
assign O2 = outData2;

endmodule
