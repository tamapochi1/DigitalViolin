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
    
    output [31:0] bram_addr,
    output bram_clk,
    input [31:0] bram_rddata,
    output bram_en,
    output bram_rst,
    output bram_we,
    
    input start,
    
    input [19:0] scale,
    
    output[63:0] m_axis_data_tdata,
    input m_axis_data_tready,
    output m_axis_data_tvalid,
    
    output[47:0] m_axis_config_tdata,
    input m_axis_config_tready,
    output m_axis_config_tvalid
    );
    
reg started;
reg [15:0] byteCounter; 

always @(posedge clk)
begin
    if(~nReset)
    begin
        started <= 1'b0;
        byteCounter <= 16'h0000;
    end
    else
    begin
        if(~started && start)
        begin
            started <= 1'b1;
            byteCounter <= 16'h0000;
        end
        else if(started && m_axis_data_tready)
        begin
            if(byteCounter < FFT_SIZE)
            begin
                byteCounter <= byteCounter + 16'h0001;
            end
            else 
            begin
                started <= 1'b0;
                byteCounter <= 16'h0000;
            end
        end
        else
        begin
            byteCounter <= byteCounter;
        end
    end
end

assign bram_addr = {14'd0,byteCounter,2'b00};
assign bram_clk = clk;
assign bram_en = nReset;
assign bram_rst = ~nReset;
assign bram_we = 1'b0;

assign m_axis_data_tdata = {20'd0, bram_rddata[27:16], 20'd0, bram_rddata[11:0]};
assign m_axis_data_tvalid = (byteCounter != 16'h0000);

assign m_axis_config_tdata = {6'd0, scale, scale, 2'b11};
assign m_axis_config_tvalid = 1'b1;

endmodule
