`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/03 13:44:51
// Design Name: 
// Module Name: mult_sum
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


module mult_sum(
    input nReset,
    input sysClk,
    input clear,
    input signed [31:0] s_axis_sin_tdata,
    input s_axis_sin_tvalid,
    input signed [15:0] s_axis_gain_tdata,
    input s_axis_gain_tvalid,
    output signed [15:0] mult_A,
    output signed [15:0] mult_B,
    input signed [31:0] mult_P,
    output signed [15:0] out
    );
    
reg signed [39:0] sum;
reg signed [15:0] outDataBuffer;
    
always @(negedge sysClk)
begin
    if(~nReset)
    begin
        outDataBuffer <= 16'h0000;
        sum <= 40'h0000000000;
    end
    else
    begin
        if(clear)
        begin
            outDataBuffer <= (sum >>> 24);
            sum <= 40'h0000000000;
        end
        else
        begin
            sum <= sum + mult_P;
        end
    end
end

assign mult_A = s_axis_sin_tdata[31:16];
assign mult_B = s_axis_gain_tdata;
assign out = sum;

endmodule
