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
    input audioClk256,
    output nResetSysClk,
    output nResetAudioClk
    );

reg [1:0] nResetSysClkBuf;
reg [1:0] nResetAudioClkBuf;

always @(negedge sysClk)
begin
    nResetSysClkBuf <= {nResetExt, nResetSysClkBuf[1]};
end

always @(negedge audioClk256)
begin
    nResetAudioClkBuf <= {nResetInt, nResetAudioClkBuf[1]};
end

assign nResetSysClk = nResetSysClkBuf[0] & nResetInt;
assign nResetAudioClk = nResetAudioClkBuf[0] & nResetExt;

endmodule
