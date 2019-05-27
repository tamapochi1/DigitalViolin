`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 15:44:39
// Design Name: 
// Module Name: FFTInputBitsConverter
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


module FFTInputBitsConverter
#(
    parameter FFT_SIZE = 1024
)(
    input nReset,
    input clk,
    
    input [31:0] s_axis_data_tdata,
    output s_axis_data_tready,
    input s_axis_data_tvalid,
    
    input [11:0] fifo_count,
    
    input [19:0] scale,
    
    output[63:0] m_axis_data_tdata,
    input m_axis_data_tready,
    output m_axis_data_tvalid,
    
    output[47:0] m_axis_config_tdata,
    input m_axis_config_tready,
    output m_axis_config_tvalid
    );
    
reg fifo_ready;

always @(posedge clk)
begin
    if(~nReset)
    begin
        fifo_ready <= 1'b0;
    end
    else
    begin
        if(fifo_count >= FFT_SIZE)
        begin
            fifo_ready <= 1'b1;
        end
        else if(fifo_count <= 12'd0)
        begin
            fifo_ready <= 1'b0;
        end
        else
        begin
            fifo_ready <= fifo_ready;
        end
    end
end

assign s_axis_data_tready = fifo_ready & m_axis_data_tready;

assign m_axis_data_tdata = {20'd0, s_axis_data_tdata[23:12], 20'd0, s_axis_data_tdata[11:0]};
assign m_axis_data_tvalid = fifo_ready & s_axis_data_tvalid;

assign m_axis_config_tdata = {6'd0, scale, scale, 2'b11};
assign m_axis_config_tvalid = 1'b1;

endmodule
