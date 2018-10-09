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
    output nReset
    );
    
assign nReset = nResetExt & nResetInt;

endmodule
