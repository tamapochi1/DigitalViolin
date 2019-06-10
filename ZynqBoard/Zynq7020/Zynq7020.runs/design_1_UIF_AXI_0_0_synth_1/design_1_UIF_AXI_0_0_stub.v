// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:09 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_UIF_AXI_0_0_stub.v
// Design      : design_1_UIF_AXI_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UIF_AXI,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, 
  S_AXI_AWPROT, S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, 
  S_AXI_WREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, 
  S_AXI_ARVALID, S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY, 
  m_axis_sr_tdata, m_axis_sr_tready, m_axis_sr_tvalid, s_axis_st_tdata, s_axis_st_tready, 
  s_axis_st_tvalid, m_axis_ht_tdata, m_axis_ht_tready, m_axis_ht_tvalid, s_axis_hr_tdata, 
  s_axis_hr_tready, s_axis_hr_tvalid, st_fifo_count, hostStart, hostIsBusy, sys_nReset, 
  UIF_res)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[4:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[4:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,m_axis_sr_tdata[7:0],m_axis_sr_tready,m_axis_sr_tvalid,s_axis_st_tdata[7:0],s_axis_st_tready,s_axis_st_tvalid,m_axis_ht_tdata[7:0],m_axis_ht_tready,m_axis_ht_tvalid,s_axis_hr_tdata[7:0],s_axis_hr_tready,s_axis_hr_tvalid,st_fifo_count[11:0],hostStart,hostIsBusy,sys_nReset,UIF_res" */;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [4:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [4:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
  output [7:0]m_axis_sr_tdata;
  input m_axis_sr_tready;
  output m_axis_sr_tvalid;
  input [7:0]s_axis_st_tdata;
  output s_axis_st_tready;
  input s_axis_st_tvalid;
  output [7:0]m_axis_ht_tdata;
  input m_axis_ht_tready;
  output m_axis_ht_tvalid;
  input [7:0]s_axis_hr_tdata;
  output s_axis_hr_tready;
  input s_axis_hr_tvalid;
  input [11:0]st_fifo_count;
  output hostStart;
  input hostIsBusy;
  output sys_nReset;
  output UIF_res;
endmodule
