// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:48:55 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_sum_0_0_stub.v
// Design      : design_1_mult_sum_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mult_sum,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, sysClk, clear, sync, s_axis_sin_tdata, 
  s_axis_sin_tvalid, s_axis_gain_tdata, s_axis_gain_tvalid, mult_A, mult_B, mult_P, outData, 
  outGain)
/* synthesis syn_black_box black_box_pad_pin="nReset,sysClk,clear,sync,s_axis_sin_tdata[31:0],s_axis_sin_tvalid,s_axis_gain_tdata[13:0],s_axis_gain_tvalid,mult_A[15:0],mult_B[13:0],mult_P[29:0],outData[15:0],outGain[7:0]" */;
  input nReset;
  input sysClk;
  input clear;
  output sync;
  input [31:0]s_axis_sin_tdata;
  input s_axis_sin_tvalid;
  input [13:0]s_axis_gain_tdata;
  input s_axis_gain_tvalid;
  output [15:0]mult_A;
  output [13:0]mult_B;
  input [29:0]mult_P;
  output [15:0]outData;
  input [7:0]outGain;
endmodule
