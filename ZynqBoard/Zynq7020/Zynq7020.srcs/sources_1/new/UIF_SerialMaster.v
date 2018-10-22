`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/18 10:35:57
// Design Name: 
// Module Name: UIF_SerialMaster
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


module UIF_SerialMaster(
    input nReset,
    input sysClk,
    input UIF_Master_H_SCK,
    input UIF_Master_H_RXD,
    output UIF_Master_H_TXD,
    
    output [7:0] m_axis_hr_tdata,
    input m_axis_hr_tready,
    output m_axis_hr_tvalid,
    
    input [7:0] s_axis_ht_tdata,
    output s_axis_ht_tready,
    input s_axis_ht_tvalid
    );
    
endmodule
