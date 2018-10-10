// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Oct 11 00:10:23 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_DAC_IF_0_0/design_1_DAC_IF_0_0_stub.v
// Design      : design_1_DAC_IF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DAC_IF,Vivado 2018.2" *)
module design_1_DAC_IF_0_0(nReset, sysClk, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_aclk, FIFOnReset, clk_256fs, DAC_MCLK, DAC_BICK, DAC_LRCK, DAC_SDT)
/* synthesis syn_black_box black_box_pad_pin="nReset,sysClk,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_aclk,FIFOnReset,clk_256fs,DAC_MCLK,DAC_BICK,DAC_LRCK,DAC_SDT" */;
  input nReset;
  input sysClk;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_aclk;
  output FIFOnReset;
  input clk_256fs;
  output DAC_MCLK;
  output DAC_BICK;
  output DAC_LRCK;
  output DAC_SDT;
endmodule
