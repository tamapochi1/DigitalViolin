// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:48:55 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_delay_0_0/design_1_delay_0_0_stub.v
// Design      : design_1_delay_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "delay,Vivado 2018.2" *)
module design_1_delay_0_0(nReset, aclk, s_axis_in_tdata, 
  s_axis_in_tvalid, m_axis_out_tdata, m_axis_out_tvalid)
/* synthesis syn_black_box black_box_pad_pin="nReset,aclk,s_axis_in_tdata[13:0],s_axis_in_tvalid,m_axis_out_tdata[13:0],m_axis_out_tvalid" */;
  input nReset;
  input aclk;
  input [13:0]s_axis_in_tdata;
  input s_axis_in_tvalid;
  output [13:0]m_axis_out_tdata;
  output m_axis_out_tvalid;
endmodule
