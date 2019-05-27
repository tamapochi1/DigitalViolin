// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 26 02:17:56 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_UIF_SerialMasterCont_0_0_stub.v
// Design      : design_1_UIF_SerialMasterCont_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UIF_SerialMasterController,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(nReset, sysClk, UIF_Master_H_SCK, 
  UIF_Master_H_RXD, UIF_Master_H_TXD, SPI_Master_CSn, start, txFifoCount, internal_S_SCK, 
  internal_S_RXD, internal_S_TXD, busy)
/* synthesis syn_black_box black_box_pad_pin="nReset,sysClk,UIF_Master_H_SCK,UIF_Master_H_RXD,UIF_Master_H_TXD,SPI_Master_CSn,start,txFifoCount[11:0],internal_S_SCK,internal_S_RXD,internal_S_TXD,busy" */;
  input nReset;
  input sysClk;
  output UIF_Master_H_SCK;
  input UIF_Master_H_RXD;
  output UIF_Master_H_TXD;
  output SPI_Master_CSn;
  input start;
  input [11:0]txFifoCount;
  output internal_S_SCK;
  input internal_S_RXD;
  output internal_S_TXD;
  output busy;
endmodule
