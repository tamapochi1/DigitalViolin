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


module FFTInputBitsConverter(
    input nReset,
    input clk,
    
    output [31:0] bram_addr,
    output bram_clk,
    input [127:0] bram_rddata,
    output bram_en,
    output bram_rst,
    output bram_we,
    
    input start,
    
    input [19:0] scale,
    
    output[255:0] m_axis_data_tdata,
    input m_axis_data_tready,
    output m_axis_data_tvalid,
    
    output[223:0] m_axis_config_tdata,
    input m_axis_config_tready,
    output m_axis_config_tvalid
    );
    
reg started;
reg [10:0] byteCounter; 

always @(posedge clk)
begin
    if(~nReset)
    begin
        started <= 1'b0;
        byteCounter <= 11'h000;
    end
    else
    begin
        if(~started && start)
        begin
            started <= 1'b1;
            byteCounter <= 11'h000;
        end
        else if(started && m_axis_data_tready)
        begin
            if(byteCounter == 11'd256)
            begin
                started <= 1'b0;
                byteCounter <= 11'h000;
            end
            else 
            begin
                started <= started;
                byteCounter <= byteCounter + 11'h001;
            end
        end
        else
        begin
            started <= started;
            byteCounter <= byteCounter;
        end
    end
end

assign bram_addr = {18'd0, byteCounter[9:0], 4'd0};
assign bram_clk = clk;
assign bram_en = nReset;
assign bram_rst = ~nReset;
assign bram_we = 1'b0;

assign m_axis_data_tdata[31:0] = {20'd0, bram_rddata[11:0]};
assign m_axis_data_tdata[63:32] = {20'd0, bram_rddata[27:16]};
assign m_axis_data_tdata[95:64] = {20'd0, bram_rddata[43:32]};
assign m_axis_data_tdata[127:96] = {20'd0, bram_rddata[59:48]};
assign m_axis_data_tdata[159:128] = {20'd0, bram_rddata[75:64]};
assign m_axis_data_tdata[191:160] = {20'd0, bram_rddata[91:80]};
assign m_axis_data_tdata[223:192] = {20'd0, bram_rddata[107:96]};
assign m_axis_data_tdata[255:224] = {20'd0, bram_rddata[123:112]};
assign m_axis_data_tvalid = (byteCounter != 16'h0000);

assign m_axis_config_tdata = {56'd0, scale, scale, scale, scale, scale, scale, scale, scale, 8'b1111_1111};
assign m_axis_config_tvalid = 1'b1;

endmodule
