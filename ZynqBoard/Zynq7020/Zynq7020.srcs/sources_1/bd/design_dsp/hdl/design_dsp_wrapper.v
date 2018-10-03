//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Sep 26 00:30:56 2018
//Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target design_dsp_wrapper.bd
//Design      : design_dsp_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_dsp_wrapper
   (M_AXIS_DOUT_0_tdata,
    M_AXIS_DOUT_0_tvalid,
    S_AXIS_PHASE_0_tdata,
    S_AXIS_PHASE_0_tvalid,
    aclk_0);
  output [31:0]M_AXIS_DOUT_0_tdata;
  output M_AXIS_DOUT_0_tvalid;
  input [15:0]S_AXIS_PHASE_0_tdata;
  input S_AXIS_PHASE_0_tvalid;
  input aclk_0;

  wire [31:0]M_AXIS_DOUT_0_tdata;
  wire M_AXIS_DOUT_0_tvalid;
  wire [15:0]S_AXIS_PHASE_0_tdata;
  wire S_AXIS_PHASE_0_tvalid;
  wire aclk_0;

  design_dsp design_dsp_i
       (.M_AXIS_DOUT_0_tdata(M_AXIS_DOUT_0_tdata),
        .M_AXIS_DOUT_0_tvalid(M_AXIS_DOUT_0_tvalid),
        .S_AXIS_PHASE_0_tdata(S_AXIS_PHASE_0_tdata),
        .S_AXIS_PHASE_0_tvalid(S_AXIS_PHASE_0_tvalid),
        .aclk_0(aclk_0));
endmodule
