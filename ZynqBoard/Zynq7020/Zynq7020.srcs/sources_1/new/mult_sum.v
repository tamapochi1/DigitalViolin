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


module mult_sum
#(
    parameter CLEAR_DELAY = 28
)(
    input nReset,
    input sysClk,
    input clear,
    output sync,
    input signed [31:0] s_axis_sin_tdata,
    input s_axis_sin_tvalid,
    input signed [13:0] s_axis_gain_tdata,
    input s_axis_gain_tvalid,
    output signed [15:0] mult_A,
    output signed [13:0] mult_B,
    input signed [29:0] mult_P,
    output signed [15:0] outData,
    input [7:0] outGain
    );
    
wire signed [40:0] mult_P_ex;
assign mult_P_ex = mult_P[29] ? {11'h7FF, mult_P[29:0]} : {11'h000, mult_P[29:0]};
    
reg signed [40:0] sum;
reg signed [15:0] outDataBuffer;
reg [CLEAR_DELAY-1:0] clear_delay;

wire signed [40:0] sum_gained;
assign sum_gained = sum >>> outGain;

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        clear_delay <= 0;
    end
    else
    begin
        clear_delay <= {clear,clear_delay[CLEAR_DELAY-1:1]};
    end
end
    
always @(negedge sysClk)
begin
    if(~nReset)
    begin
        outDataBuffer <= 16'h0000;
        sum <= 41'h00000000000;
        clear_delay <= 0;
    end
    else
    begin
        if(clear_delay[0])
        begin
            if(sum[40])
            begin
                outDataBuffer = ~sum_gained > 41'h7FFF ? 16'h8000 : sum_gained[15:0];
            end
            else
            begin
                outDataBuffer = sum_gained > 41'h7FFF ? 16'h7FFF : sum_gained[15:0];
            end
            sum <= mult_P_ex;
        end
        else
        begin
            outDataBuffer <= outDataBuffer;
            sum <= sum + mult_P_ex;
        end
        clear_delay <= {clear,clear_delay[CLEAR_DELAY-1:1]};
    end
end

assign mult_A = s_axis_sin_tvalid ? s_axis_sin_tdata[31:16] : 16'h0000;
assign mult_B = s_axis_sin_tvalid ? s_axis_gain_tdata : 13'h0000;
assign outData = outDataBuffer;

assign sync = clear_delay[0];

endmodule
