`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/24 16:39:42
// Design Name: 
// Module Name: DAC_IF
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


module DAC_IF(
    input nReset,
    input [31:0] s_axis_tdata,
    input s_axis_tvalid,
    output s_axis_tready,
    input s_axis_aclk,
    input audio256Clk,
    output DAC_MCLK,
    output DAC_BICK,
    output DAC_LRCK,
    output DAC_SDT
    );
    
reg [2:0] prescalerBICK;
reg [31:0] readDataBuf;
reg [31:0] dataBuf;
reg [4:0] bitCounter;
reg SDT;
    
wire BICK;
wire LRCK;

assign s_axis_tready = nReset;
    
assign DAC_MCLK = audio256Clk & nReset;
assign BICK = (prescalerBICK >= 3'h4);
assign DAC_BICK = BICK;
assign DAC_LRCK = (bitCounter <= 5'hF);
assign DAC_SDT = SDT;

always @(negedge s_axis_aclk)
begin
    if(~nReset)
    begin
        readDataBuf <= 32'h00000000;
    end
    else
    begin
        if(s_axis_tvalid)
        begin
            readDataBuf <= s_axis_tdata;
        end
    end
end

always @(negedge audio256Clk)
begin
    if(~nReset)
    begin
        prescalerBICK <= 3'h0;
        bitCounter <= 5'h1F;
        dataBuf <= 32'h0;
        SDT <= 1'b0;
    end
    else
    begin
        if(prescalerBICK < 3'h7)
        begin
            prescalerBICK <= prescalerBICK + 3'h1;
            bitCounter <= bitCounter;
            dataBuf <= dataBuf;
            SDT <= SDT;
        end
        else
        begin
            // 32fs clock
            
            prescalerBICK <= 3'h0;
            
            SDT <= dataBuf[bitCounter];
            
            if(bitCounter > 5'h00)
            begin
                bitCounter <= bitCounter - 5'h1;
            end
            else
            begin
                bitCounter <= 5'h1F;
                dataBuf <= readDataBuf;
            end
        end
    end
end

endmodule
