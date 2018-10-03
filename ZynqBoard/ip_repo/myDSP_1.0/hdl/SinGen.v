`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/09/25 00:25:59
// Design Name: 
// Module Name: SinGen
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


module SinGen(
    input nReset,
    input sysClk,
    input audioClk,
    output [15:0] audioData
    );
    
wire [31:0] result;
wire result_valid;

reg pre_audioClk;
reg signed [15:0] phase_fix16_13;
reg phaseValid;
reg signed [15:0] sin_fix16_14;

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
        phase_fix16_13 <= 16'hE000; // -1.0
        phaseValid <= 1'b0;
    end
    else
    begin
        if(~pre_audioClk && audioClk)
        begin
            if(phase_fix16_13 < 16'h2)
            begin
                phase_fix16_13 <= phase_fix16_13 + 16'h07FF;
                phaseValid <= 1'b1;
            end
            else
            begin
                phase_fix16_13 <= 16'hC000;
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
    
cordic_0 cordic_0_inst(
    .aclk(sysClk),
    .s_axis_phase_tvalid(phaseValid), 
    .s_axis_phase_tdata(phase_fix16_13),
    .m_axis_dout_tvalid(result_valid),
    .m_axis_dout_tdata(result)
    );
    
always @(negedge sysClk)
begin
    if(~nReset)
    begin
        sin_fix16_14 <= 16'h0000;
    end
    else
    begin
        if(result_valid)
        begin
            sin_fix16_14 <= result[15:0];
        end
        else
        begin
            sin_fix16_14 <= sin_fix16_14;
        end
    end
end
    
assign audioData = sin_fix16_14;
    
endmodule
