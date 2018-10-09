`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/03 18:54:31
// Design Name: 
// Module Name: delay
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


module delay
#(
    parameter WIDTH = 10,
    parameter DELAY = 16
)(
    input nReset,
    input aclk,
    input [WIDTH-1:0] s_axis_in_tdata,
    input s_axis_in_tvalid,
    output [WIDTH-1:0] m_axis_out_tdata,
    output m_axis_out_tvalid
    );
    
integer i;
    
reg [WIDTH-1:0] dataBuffer [0:DELAY-1];
reg validBuffer [0:DELAY-1];

always @(negedge aclk)
begin
    if(~nReset)
    begin
        for(i=0; i<=DELAY-1; i=i+1)
        begin
            dataBuffer[i] <= 64'd0;
            validBuffer[i] <= 1'b0;
        end
    end
    else
    begin
        for(i=0; i<=DELAY-2; i=i+1)
        begin
            dataBuffer[i] <= dataBuffer[i+1];
            validBuffer[i] <= validBuffer[i+1];
        end
        dataBuffer[DELAY-1] <= s_axis_in_tdata;
        validBuffer[DELAY-1] <= s_axis_in_tvalid;
    end
end

assign m_axis_out_tdata = dataBuffer[0];
assign m_axis_out_tvalid = validBuffer[0];

endmodule
