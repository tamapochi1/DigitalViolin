`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/10 23:02:29
// Design Name: 
// Module Name: DAC_FIFO
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


module DAC_FIFO(
    input [15:0] Data1,
    input [15:0] Data2,
    input DataValid,
    output [31:0] m_axis_tdata,
    input m_axis_tready,
    output m_axis_tvalid
    );
    
assign m_axis_tdata = {Data1, Data2};
assign m_axis_tvalid = DataValid & m_axis_tready;
    
endmodule
