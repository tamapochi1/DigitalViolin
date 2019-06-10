// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun  9 05:39:52 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_UIF_SerialSlave_1_0_stub.v
// Design      : design_1_UIF_SerialSlave_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UIF_SerialSlave,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, sysClk, UIF_Slave_S_SCK, 
  UIF_Slave_S_RXD, UIF_Slave_S_TXD, m_axis_st_tdata, m_axis_st_tready, m_axis_st_tvalid, 
  s_axis_sr_tdata, s_axis_sr_tready, s_axis_sr_tvalid)
/* synthesis syn_black_box black_box_pad_pin="nReset,sysClk,UIF_Slave_S_SCK,UIF_Slave_S_RXD,UIF_Slave_S_TXD,m_axis_st_tdata[7:0],m_axis_st_tready,m_axis_st_tvalid,s_axis_sr_tdata[7:0],s_axis_sr_tready,s_axis_sr_tvalid" */;
  input nReset;
  input sysClk;
  input UIF_Slave_S_SCK;
  output UIF_Slave_S_RXD;
  input UIF_Slave_S_TXD;
  output [7:0]m_axis_st_tdata;
  input m_axis_st_tready;
  output m_axis_st_tvalid;
  input [7:0]s_axis_sr_tdata;
  output s_axis_sr_tready;
  input s_axis_sr_tvalid;
endmodule
