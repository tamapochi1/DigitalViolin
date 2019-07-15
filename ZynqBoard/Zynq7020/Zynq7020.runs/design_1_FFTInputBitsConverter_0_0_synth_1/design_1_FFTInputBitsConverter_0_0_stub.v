// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul 14 20:55:17 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FFTInputBitsConverter_0_0_stub.v
// Design      : design_1_FFTInputBitsConverter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FFTInputBitsConverter,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, clk, bram_addr, bram_clk, bram_rddata, 
  bram_en, bram_rst, bram_we, start, scale, m_axis_data_tdata, m_axis_data_tready, 
  m_axis_data_tvalid, m_axis_config_tdata, m_axis_config_tready, m_axis_config_tvalid)
/* synthesis syn_black_box black_box_pad_pin="nReset,clk,bram_addr[31:0],bram_clk,bram_rddata[127:0],bram_en,bram_rst,bram_we,start,scale[15:0],m_axis_data_tdata[255:0],m_axis_data_tready,m_axis_data_tvalid,m_axis_config_tdata[191:0],m_axis_config_tready,m_axis_config_tvalid" */;
  input nReset;
  input clk;
  output [31:0]bram_addr;
  output bram_clk;
  input [127:0]bram_rddata;
  output bram_en;
  output bram_rst;
  output bram_we;
  input start;
  input [15:0]scale;
  output [255:0]m_axis_data_tdata;
  input m_axis_data_tready;
  output m_axis_data_tvalid;
  output [191:0]m_axis_config_tdata;
  input m_axis_config_tready;
  output m_axis_config_tvalid;
endmodule
