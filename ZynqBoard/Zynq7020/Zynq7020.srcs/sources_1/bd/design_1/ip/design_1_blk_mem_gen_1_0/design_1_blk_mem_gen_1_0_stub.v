// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 23 20:03:34 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_blk_mem_gen_1_0 -prefix
//               design_1_blk_mem_gen_1_0_ design_1_blk_mem_gen_1_0_stub.v
// Design      : design_1_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module design_1_blk_mem_gen_1_0(clka, wea, addra, dina, clkb, rstb, addrb, doutb, 
  rsta_busy, rstb_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[10:0],dina[23:0],clkb,rstb,addrb[10:0],doutb[23:0],rsta_busy,rstb_busy" */;
  input clka;
  input [0:0]wea;
  input [10:0]addra;
  input [23:0]dina;
  input clkb;
  input rstb;
  input [10:0]addrb;
  output [23:0]doutb;
  output rsta_busy;
  output rstb_busy;
endmodule
