`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/26 19:30:02
// Design Name: 
// Module Name: phase_generator
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


module phase_generator(
    input nReset,
    input sysClk,
    input audioClk,
    input signed [15:0] delta,
    output [15:0] m_axis_phase_tdata,
    output m_axis_phase_tvalid
    );
    
parameter signed [15:0] M_ONE = 16'hE000;
parameter signed [15:0] ONE = 16'h2000;
    
reg pre_audioClk;
reg signed [15:0] phase_fix16_13;
reg phaseValid;

always @(posedge sysClk)
begin
    if(~nReset)
    begin
        pre_audioClk <= 1'b0;
    end
    else
    begin
        pre_audioClk <= audioClk;
    end
end

always @(posedge sysClk)
begin
    if(~nReset)
    begin
        phase_fix16_13 <= M_ONE;
        phaseValid <= 1'b0;
    end
    else
    begin
        if(~pre_audioClk && audioClk)
        begin
            if(phase_fix16_13 + delta < ONE)
            begin
                phase_fix16_13 <= phase_fix16_13 + delta;
                phaseValid <= 1'b1;
            end
            else
            begin
                phase_fix16_13 <= M_ONE + (delta - (ONE - phase_fix16_13));
                phaseValid <= 1'b1;
            end
        end
        else
        begin
            phase_fix16_13 <= phase_fix16_13;
            phaseValid <= 1'b0;
        end
    end
end

assign m_axis_phase_tdata = phase_fix16_13;
assign m_axis_phase_tvalid = phaseValid;

endmodule
