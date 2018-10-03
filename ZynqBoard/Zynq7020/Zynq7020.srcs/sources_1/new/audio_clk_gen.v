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
    input sysClk,
    output audioClk
    );
    
reg [7:0] prescaler;
    
assign audioClk = (prescaler >= 8'h7F);

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        prescaler <= 8'h00;
    end
    else
    begin
        if(prescaler < 8'hFF)
        begin
            prescaler <= prescaler + 8'h01;
        end
        else
        begin
            prescaler <= 8'h00;
        end
    end
end

endmodule
