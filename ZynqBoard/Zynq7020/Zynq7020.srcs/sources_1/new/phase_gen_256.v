`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/03 13:37:15
// Design Name: 
// Module Name: phase_gen_256
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

module phase_gen_256(
    input nReset,
    input sysClk,
    input audioClk,

    output [10:0] reg_index,
    output reg_index_valid,
    input signed [23:0] s_axis_delta_tdata,
    input s_axis_delta_tvalid,
    
    output [10:0] m_bram_int_rdaddr,
    output [10:0] m_bram_int_wraddr,
    output m_bram_int_clk,
    input signed [23:0] m_bram_int_rddata,
    output signed [23:0] m_bram_int_wrdata,
    output m_bram_int_rst,
    output m_bram_int_we,
    
    output [15:0] m_axis_phase_tdata,
    output m_axis_phase_tvalid,

    output sync
    );
    
parameter signed [23:0] M_ONE = 24'hE00000;
parameter signed [23:0] ONE = 24'h200000;
    
reg [1:0] preAudioClk;
reg [10:0] index;
reg index_valid;
reg [10:0] bram_int_rdIndex;
reg [10:0] bram_int_wrIndex;
reg signed [23:0] phase;
reg phase_valid;

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        preAudioClk <= 2'b00;
    end
    else
    begin
        preAudioClk <= {preAudioClk[0], audioClk};
    end
end
    
always @(negedge sysClk)
begin
    if(~nReset)
    begin
        index_valid <= 1'b0;
        index <= 11'h000;
    end
    else
    begin
        if(preAudioClk == 2'b01)
        begin
            index_valid <= 1'b1;
            index <= 11'h000;
        end
        else if(index < 11'h7FF)
        begin
            index_valid <= 1'b1;
            index <= index + 11'h001;
        end
        else
        begin
            index_valid <= 1'b0;
//            index <= index;
        end
    end
end

always @(negedge sysClk)
begin
    if(~nReset)
    begin
        phase <= 24'h000000;
        phase_valid <= 1'b0;
        bram_int_rdIndex <= 11'h000;
        bram_int_wrIndex <= 11'h000;
    end
    else
    begin
        if(s_axis_delta_tvalid)
        begin
            if(m_bram_int_rddata + s_axis_delta_tdata < ONE)
            begin
                phase <= m_bram_int_rddata + s_axis_delta_tdata;
            end
            else
            begin
                phase <= M_ONE + (s_axis_delta_tdata - (ONE - m_bram_int_rddata));
            end
            phase_valid <= 1'b1;
            bram_int_wrIndex <= bram_int_rdIndex;
            bram_int_rdIndex <= bram_int_rdIndex + 11'h001;
        end
        else
        begin
//            phase <= phase;
            phase_valid <= 1'b0;
            bram_int_rdIndex <= 11'h000;
            bram_int_wrIndex <= 11'h000;
        end
    end
end

assign reg_index = index;
assign reg_index_valid = index_valid;

assign m_bram_int_rdaddr = bram_int_rdIndex;
assign m_bram_int_wraddr = bram_int_wrIndex;
assign m_bram_int_clk = sysClk;
assign m_bram_int_wrdata = phase;
assign m_bram_int_rst = ~nReset;
assign m_bram_int_we = phase_valid;

assign m_axis_phase_tdata = phase[23:8];
assign m_axis_phase_tvalid = phase_valid;

assign sync = (index == 11'h000);

endmodule
