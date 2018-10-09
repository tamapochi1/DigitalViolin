// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:48:53 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DSP_reg_read_0_0_stub.v
// Design      : design_1_DSP_reg_read_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DSP_reg_read,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, aclk, m_bram_addr, m_bram_clk, 
  m_bram_rddata, m_bram_en, m_bram_rst, m_bram_we, index, index_valid, freq, const, freqXconst, 
  m_axis_delta_tdata, m_axis_delta_tvalid, m_axis_gain_tdata, m_axis_gain_tvalid)
/* synthesis syn_black_box black_box_pad_pin="nReset,aclk,m_bram_addr[31:0],m_bram_clk,m_bram_rddata[31:0],m_bram_en,m_bram_rst,m_bram_we,index[10:0],index_valid,freq[17:0],const[17:0],freqXconst[35:0],m_axis_delta_tdata[23:0],m_axis_delta_tvalid,m_axis_gain_tdata[13:0],m_axis_gain_tvalid" */;
  input nReset;
  input aclk;
  output [31:0]m_bram_addr;
  output m_bram_clk;
  input [31:0]m_bram_rddata;
  output m_bram_en;
  output m_bram_rst;
  output m_bram_we;
  input [10:0]index;
  input index_valid;
  output [17:0]freq;
  output [17:0]const;
  input [35:0]freqXconst;
  output [23:0]m_axis_delta_tdata;
  output m_axis_delta_tvalid;
  output [13:0]m_axis_gain_tdata;
  output m_axis_gain_tvalid;
endmodule
