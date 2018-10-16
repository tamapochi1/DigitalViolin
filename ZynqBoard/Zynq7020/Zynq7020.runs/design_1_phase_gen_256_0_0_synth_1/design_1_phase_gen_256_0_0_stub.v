// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct 13 15:27:55 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_phase_gen_256_0_0_stub.v
// Design      : design_1_phase_gen_256_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "phase_gen_256,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, sysClk, audioClkSync, reg_index, 
  reg_index_valid, s_axis_delta_tdata, s_axis_delta_tvalid, m_bram_int_rdaddr, 
  m_bram_int_wraddr, m_bram_int_clk, m_bram_int_rddata, m_bram_int_wrdata, m_bram_int_rst, 
  m_bram_int_we, m_axis_phase_tdata, m_axis_phase_tvalid, sync)
/* synthesis syn_black_box black_box_pad_pin="nReset,sysClk,audioClkSync,reg_index[10:0],reg_index_valid,s_axis_delta_tdata[23:0],s_axis_delta_tvalid,m_bram_int_rdaddr[10:0],m_bram_int_wraddr[10:0],m_bram_int_clk,m_bram_int_rddata[23:0],m_bram_int_wrdata[23:0],m_bram_int_rst,m_bram_int_we,m_axis_phase_tdata[15:0],m_axis_phase_tvalid,sync" */;
  input nReset;
  input sysClk;
  input audioClkSync;
  output [10:0]reg_index;
  output reg_index_valid;
  input [23:0]s_axis_delta_tdata;
  input s_axis_delta_tvalid;
  output [10:0]m_bram_int_rdaddr;
  output [10:0]m_bram_int_wraddr;
  output m_bram_int_clk;
  input [23:0]m_bram_int_rddata;
  output [23:0]m_bram_int_wrdata;
  output m_bram_int_rst;
  output m_bram_int_we;
  output [15:0]m_axis_phase_tdata;
  output m_axis_phase_tvalid;
  output sync;
endmodule
