// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 24 02:20:05 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DAC_FIFO_0_0_stub.v
// Design      : design_1_DAC_FIFO_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DAC_FIFO,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Data0, Data1, DataValid, m_axis_tdata, 
  m_axis_tready, m_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="Data0[15:0],Data1[15:0],DataValid,m_axis_tdata[31:0],m_axis_tready,m_axis_tvalid" */;
  input [15:0]Data0;
  input [15:0]Data1;
  input DataValid;
  output [31:0]m_axis_tdata;
  input m_axis_tready;
  output m_axis_tvalid;
endmodule
