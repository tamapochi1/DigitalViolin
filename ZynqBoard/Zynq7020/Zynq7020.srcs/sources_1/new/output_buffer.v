`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 16:41:38
// Design Name: 
// Module Name: output_buffer
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


module output_buffer(
    input nReset,
    input sysClk,
    input [31:0] s_axis_in_tdata,
    input s_axis_in_tvalid,
    output [15:0] outData
    );
    
reg signed [15:0] dataBuffer;

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        dataBuffer <= 16'h0000;
    end
    else
    begin
        if(s_axis_in_tvalid)
        begin
            dataBuffer <= s_axis_in_tdata[31:16];
        end
        else
        begin
            dataBuffer <= dataBuffer;
        end
    end
end

assign outData = dataBuffer;

endmodule
