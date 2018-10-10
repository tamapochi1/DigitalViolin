`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 16:58:29
// Design Name: 
// Module Name: audio_clk_gen
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


module audio_clk_gen(
    input nReset,
    input audioClk256,
    input sysClk,
    output audioClk
    );
    
reg [2:0] audioClk256Buf;
reg [7:0] prescaler;
reg audioClkBuf;

always @(negedge sysClk)
begin
    audioClk256Buf <= {audioClk256Buf[2:1], audioClk256};
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        prescaler <= 8'h00;
    end
    else
    begin
        if(audioClk256Buf[2:1] == 2'b01)
        begin
            if(prescaler < 8'hFF)
            begin
                prescaler <= prescaler + 8'h01;
                audioClkBuf <= 1'b0;
            end
            else
            begin
                prescaler <= 8'h00;
                audioClkBuf <= 1'b1;
            end
        end
        else
        begin
            audioClkBuf<=1'b0;
        end
    end
end

assign audioClk = audioClkBuf;

endmodule
