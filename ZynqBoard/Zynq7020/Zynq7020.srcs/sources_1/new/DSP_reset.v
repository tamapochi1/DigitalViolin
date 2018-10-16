`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/05 19:16:44
// Design Name: 
// Module Name: DSP_reset
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


module DSP_reset(
    input nResetExt,
    input nResetInt,
    input sysClk,
    input audio256Clk,
    output nResetSysClk,
    output nResetAudio256Clk
    );

(* ASYNC_REG = "TRUE" *) reg [1:0] nResetSysClkBuf;
(* ASYNC_REG = "TRUE" *) reg [1:0] nResetAudio256ClkBuf;

always @(negedge sysClk)
begin
    nResetSysClkBuf <= {nResetExt, nResetSysClkBuf[1]};
end

always @(negedge audio256Clk)
begin
    nResetAudio256ClkBuf <= {nResetInt, nResetAudio256ClkBuf[1]};
end

assign nResetSysClk = nResetSysClkBuf[0] & nResetInt;
assign nResetAudio256Clk = nResetAudio256ClkBuf[0] & nResetExt;

endmodule
