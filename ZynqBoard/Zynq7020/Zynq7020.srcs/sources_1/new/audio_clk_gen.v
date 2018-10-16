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
    input nResetSysClk,
    input nResetAudio256Clk,
    input audio256Clk,
    input sysClk,
    output audioClkSync
    );
    
(* ASYNC_REG = "TRUE" *) reg [2:0] audioClkSyncBuf;
reg [7:0] prescaler;
reg audioClkBuf;
reg audioClkSyncOutBuf;

always @(negedge audio256Clk)
begin
    if(~nResetAudio256Clk)
    begin
        prescaler <= 8'h00;
    end
    else
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
end

always @(negedge sysClk)
begin
    audioClkSyncBuf <= {audioClkSyncBuf[1:0], audioClkBuf};
end

always @(negedge sysClk)
begin
    if(~nResetSysClk)
    begin
        audioClkSyncOutBuf <= 1'b0;
    end
    else
    begin
        if(audioClkSyncBuf[2:1] == 2'b01)
        begin
            audioClkSyncOutBuf <= 1'b1;
        end
        else
        begin
            audioClkSyncOutBuf <= 1'b0;
        end
    end
end

assign audioClkSync = audioClkSyncOutBuf;

endmodule
