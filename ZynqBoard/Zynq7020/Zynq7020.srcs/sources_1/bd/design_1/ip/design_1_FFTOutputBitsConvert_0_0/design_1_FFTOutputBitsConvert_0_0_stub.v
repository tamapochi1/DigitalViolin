// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:13 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_FFTOutputBitsConvert_0_0/design_1_FFTOutputBitsConvert_0_0_stub.v
// Design      : design_1_FFTOutputBitsConvert_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FFTOutputBitsConverter,Vivado 2018.3" *)
module design_1_FFTOutputBitsConvert_0_0(nReset, clk, bram_addr, bram_clk, bram_wddata, 
  bram_en, bram_rst, bram_we, event_fft_complete, s_axis_data_tdata, s_axis_data_tready, 
  s_axis_data_tvalid)
/* synthesis syn_black_box black_box_pad_pin="nReset,clk,bram_addr[31:0],bram_clk,bram_wddata[127:0],bram_en,bram_rst,bram_we,event_fft_complete,s_axis_data_tdata[255:0],s_axis_data_tready,s_axis_data_tvalid" */;
  input nReset;
  input clk;
  output [31:0]bram_addr;
  output bram_clk;
  output [127:0]bram_wddata;
  output bram_en;
  output bram_rst;
  output bram_we;
  output event_fft_complete;
  input [255:0]s_axis_data_tdata;
  output s_axis_data_tready;
  input s_axis_data_tvalid;
endmodule
