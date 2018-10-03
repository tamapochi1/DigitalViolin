`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/25 00:32:27
// Design Name: 
// Module Name: Prescaler
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


module Prescaler(
    input nReset,
    input source,
    output out
    );
    
reg [7:0] counter;

assign out = (counter >= 8'h7F);

always @(negedge source)
begin
    if(~nReset)
    begin
        counter <= 8'h00;
    end
    else
    begin
        if(counter < 8'hFF)
        begin
            counter <= counter + 8'h01;
        end
        else
        begin
            counter <= 8'h00;
        end
    end
end

endmodule
