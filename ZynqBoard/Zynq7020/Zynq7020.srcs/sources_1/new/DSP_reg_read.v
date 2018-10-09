`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/07 16:15:58
// Design Name: 
// Module Name: DSP_reg_read
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


module DSP_reg_read
#(
    parameter EXT_MULT_DELAY = 4
)(
    input nReset,
    input aclk,
    
    output [31:0] m_bram_addr,
    output m_bram_clk,
    input [31:0] m_bram_rddata,
    output m_bram_en,
    output m_bram_rst,
    output m_bram_we,
    
    input [10:0] index,
    input index_valid,
    output [17:0] freq,
    output [17:0] const,
    input [35:0] freqXconst,
    
    output [23:0] m_axis_delta_tdata,
    output m_axis_delta_tvalid,
    
    output [13:0] m_axis_gain_tdata,
    output m_axis_gain_tvalid
    );
    
reg bramDataValid;
reg [EXT_MULT_DELAY-1:0] freqXconstValid;
reg [13:0] gainBuffer;
reg [23:0] deltaBuffer;
    
always @(negedge aclk)
begin
    if(~nReset)
    begin
        bramDataValid <= 1'b0;
        freqXconstValid <= 16'd0;
    end
    else
    begin
        bramDataValid <= index_valid;
        freqXconstValid <= {bramDataValid, freqXconstValid[EXT_MULT_DELAY-1:1]};
    end 
end

always @(negedge aclk)
begin
    if(~nReset)
    begin
        gainBuffer <= 14'h0000;
        deltaBuffer <= 24'h000000;
    end
    else
    begin
        gainBuffer <= m_bram_rddata[31:18];
        deltaBuffer <= (freqXconst >> 14);
    end 
end

assign m_bram_addr = {19'h00000,index,2'b00};
assign m_bram_clk = aclk;
assign m_bram_en = nReset;
assign m_bram_rst = ~nReset;
assign m_bram_we = 1'b0;

assign freq = m_bram_rddata[17:0];
assign const = 18'd143165;

assign m_axis_delta_tdata = deltaBuffer;
assign m_axis_delta_tvalid = freqXconstValid[0];

assign m_axis_gain_tdata = gainBuffer;
assign m_axis_gain_tvalid = bramDataValid;

endmodule
