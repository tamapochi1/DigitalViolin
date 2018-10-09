// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct  5 20:39:03 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_phase_generator_0_0/design_1_phase_generator_0_0_sim_netlist.v
// Design      : design_1_phase_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_phase_generator_0_0,phase_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "phase_generator,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_phase_generator_0_0
   (nReset,
    sysClk,
    audioClk,
    delta,
    m_axis_phase_tdata,
    m_axis_phase_tvalid);
  input nReset;
  input sysClk;
  input audioClk;
  input [15:0]delta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TDATA" *) output [15:0]m_axis_phase_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phase, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_phase_tvalid;

  wire audioClk;
  wire [15:0]delta;
  wire [15:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire nReset;
  wire sysClk;

  design_1_phase_generator_0_0_phase_generator inst
       (.Q(m_axis_phase_tdata),
        .audioClk(audioClk),
        .delta(delta),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .nReset(nReset),
        .sysClk(sysClk));
endmodule

(* ORIG_REF_NAME = "phase_generator" *) 
module design_1_phase_generator_0_0_phase_generator
   (Q,
    m_axis_phase_tvalid,
    delta,
    sysClk,
    audioClk,
    nReset);
  output [15:0]Q;
  output m_axis_phase_tvalid;
  input [15:0]delta;
  input sysClk;
  input audioClk;
  input nReset;

  wire [15:0]Q;
  wire audioClk;
  wire [15:0]delta;
  wire m_axis_phase_tvalid;
  wire nReset;
  wire p_0_in;
  wire [15:0]p_2_in;
  wire phaseValid_i_1_n_0;
  wire [15:0]phase_fix16_130;
  wire phase_fix16_130_carry__0_i_1_n_0;
  wire phase_fix16_130_carry__0_i_2_n_0;
  wire phase_fix16_130_carry__0_i_3_n_0;
  wire phase_fix16_130_carry__0_i_4_n_0;
  wire phase_fix16_130_carry__0_i_5_n_0;
  wire phase_fix16_130_carry__0_i_5_n_1;
  wire phase_fix16_130_carry__0_i_5_n_2;
  wire phase_fix16_130_carry__0_i_5_n_3;
  wire phase_fix16_130_carry__0_i_5_n_4;
  wire phase_fix16_130_carry__0_i_5_n_5;
  wire phase_fix16_130_carry__0_i_5_n_6;
  wire phase_fix16_130_carry__0_i_5_n_7;
  wire phase_fix16_130_carry__0_i_6_n_0;
  wire phase_fix16_130_carry__0_i_7_n_0;
  wire phase_fix16_130_carry__0_i_8_n_0;
  wire phase_fix16_130_carry__0_i_9_n_0;
  wire phase_fix16_130_carry__0_n_0;
  wire phase_fix16_130_carry__0_n_1;
  wire phase_fix16_130_carry__0_n_2;
  wire phase_fix16_130_carry__0_n_3;
  wire phase_fix16_130_carry__1_i_1_n_0;
  wire phase_fix16_130_carry__1_i_2_n_0;
  wire phase_fix16_130_carry__1_i_3_n_0;
  wire phase_fix16_130_carry__1_i_4_n_0;
  wire phase_fix16_130_carry__1_i_5_n_0;
  wire phase_fix16_130_carry__1_i_5_n_1;
  wire phase_fix16_130_carry__1_i_5_n_2;
  wire phase_fix16_130_carry__1_i_5_n_3;
  wire phase_fix16_130_carry__1_i_5_n_4;
  wire phase_fix16_130_carry__1_i_5_n_5;
  wire phase_fix16_130_carry__1_i_5_n_6;
  wire phase_fix16_130_carry__1_i_5_n_7;
  wire phase_fix16_130_carry__1_i_6_n_0;
  wire phase_fix16_130_carry__1_i_7_n_0;
  wire phase_fix16_130_carry__1_i_8_n_0;
  wire phase_fix16_130_carry__1_i_9_n_0;
  wire phase_fix16_130_carry__1_n_0;
  wire phase_fix16_130_carry__1_n_1;
  wire phase_fix16_130_carry__1_n_2;
  wire phase_fix16_130_carry__1_n_3;
  wire phase_fix16_130_carry__2_i_1_n_0;
  wire phase_fix16_130_carry__2_i_2_n_2;
  wire phase_fix16_130_carry__2_i_2_n_3;
  wire phase_fix16_130_carry__2_i_2_n_5;
  wire phase_fix16_130_carry__2_i_2_n_6;
  wire phase_fix16_130_carry__2_i_2_n_7;
  wire phase_fix16_130_carry__2_i_3_n_0;
  wire phase_fix16_130_carry__2_i_4_n_0;
  wire phase_fix16_130_carry__2_i_5_n_0;
  wire phase_fix16_130_carry__2_i_6_n_0;
  wire phase_fix16_130_carry__2_i_7_n_0;
  wire phase_fix16_130_carry__2_i_8_n_0;
  wire phase_fix16_130_carry__2_i_9_n_0;
  wire phase_fix16_130_carry__2_n_1;
  wire phase_fix16_130_carry__2_n_2;
  wire phase_fix16_130_carry__2_n_3;
  wire phase_fix16_130_carry_i_10_n_0;
  wire phase_fix16_130_carry_i_1_n_0;
  wire phase_fix16_130_carry_i_2_n_0;
  wire phase_fix16_130_carry_i_3_n_0;
  wire phase_fix16_130_carry_i_4_n_0;
  wire phase_fix16_130_carry_i_5_n_0;
  wire phase_fix16_130_carry_i_5_n_1;
  wire phase_fix16_130_carry_i_5_n_2;
  wire phase_fix16_130_carry_i_5_n_3;
  wire phase_fix16_130_carry_i_5_n_4;
  wire phase_fix16_130_carry_i_5_n_5;
  wire phase_fix16_130_carry_i_5_n_6;
  wire phase_fix16_130_carry_i_5_n_7;
  wire phase_fix16_130_carry_i_6_n_0;
  wire phase_fix16_130_carry_i_7_n_0;
  wire phase_fix16_130_carry_i_8_n_0;
  wire phase_fix16_130_carry_i_9_n_0;
  wire phase_fix16_130_carry_n_0;
  wire phase_fix16_130_carry_n_1;
  wire phase_fix16_130_carry_n_2;
  wire phase_fix16_130_carry_n_3;
  wire phase_fix16_131;
  wire phase_fix16_131_carry_i_1_n_0;
  wire phase_fix16_131_carry_i_2_n_0;
  wire phase_fix16_131_carry_i_3_n_0;
  wire phase_fix16_131_carry_n_3;
  wire [15:0]phase_fix16_132;
  wire phase_fix16_132_carry__0_i_1_n_0;
  wire phase_fix16_132_carry__0_i_2_n_0;
  wire phase_fix16_132_carry__0_i_3_n_0;
  wire phase_fix16_132_carry__0_i_4_n_0;
  wire phase_fix16_132_carry__0_n_0;
  wire phase_fix16_132_carry__0_n_1;
  wire phase_fix16_132_carry__0_n_2;
  wire phase_fix16_132_carry__0_n_3;
  wire phase_fix16_132_carry__1_i_1_n_0;
  wire phase_fix16_132_carry__1_i_2_n_0;
  wire phase_fix16_132_carry__1_i_3_n_0;
  wire phase_fix16_132_carry__1_i_4_n_0;
  wire phase_fix16_132_carry__1_n_0;
  wire phase_fix16_132_carry__1_n_1;
  wire phase_fix16_132_carry__1_n_2;
  wire phase_fix16_132_carry__1_n_3;
  wire phase_fix16_132_carry__2_i_1_n_0;
  wire phase_fix16_132_carry__2_i_2_n_0;
  wire phase_fix16_132_carry__2_i_3_n_0;
  wire phase_fix16_132_carry__2_i_4_n_0;
  wire phase_fix16_132_carry__2_n_1;
  wire phase_fix16_132_carry__2_n_2;
  wire phase_fix16_132_carry__2_n_3;
  wire phase_fix16_132_carry_i_1_n_0;
  wire phase_fix16_132_carry_i_2_n_0;
  wire phase_fix16_132_carry_i_3_n_0;
  wire phase_fix16_132_carry_i_4_n_0;
  wire phase_fix16_132_carry_n_0;
  wire phase_fix16_132_carry_n_1;
  wire phase_fix16_132_carry_n_2;
  wire phase_fix16_132_carry_n_3;
  wire \phase_fix16_13[15]_i_2_n_0 ;
  wire pre_audioClk;
  wire pre_audioClk_i_1_n_0;
  wire sysClk;
  wire [3:3]NLW_phase_fix16_130_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_phase_fix16_130_carry__2_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_phase_fix16_130_carry__2_i_2_O_UNCONNECTED;
  wire [3:2]NLW_phase_fix16_131_carry_CO_UNCONNECTED;
  wire [3:0]NLW_phase_fix16_131_carry_O_UNCONNECTED;
  wire [3:3]NLW_phase_fix16_132_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    phaseValid_i_1
       (.I0(pre_audioClk),
        .I1(audioClk),
        .I2(nReset),
        .O(phaseValid_i_1_n_0));
  FDRE phaseValid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(phaseValid_i_1_n_0),
        .Q(m_axis_phase_tvalid),
        .R(1'b0));
  CARRY4 phase_fix16_130_carry
       (.CI(1'b0),
        .CO({phase_fix16_130_carry_n_0,phase_fix16_130_carry_n_1,phase_fix16_130_carry_n_2,phase_fix16_130_carry_n_3}),
        .CYINIT(1'b1),
        .DI(delta[3:0]),
        .O(phase_fix16_130[3:0]),
        .S({phase_fix16_130_carry_i_1_n_0,phase_fix16_130_carry_i_2_n_0,phase_fix16_130_carry_i_3_n_0,phase_fix16_130_carry_i_4_n_0}));
  CARRY4 phase_fix16_130_carry__0
       (.CI(phase_fix16_130_carry_n_0),
        .CO({phase_fix16_130_carry__0_n_0,phase_fix16_130_carry__0_n_1,phase_fix16_130_carry__0_n_2,phase_fix16_130_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delta[7:4]),
        .O(phase_fix16_130[7:4]),
        .S({phase_fix16_130_carry__0_i_1_n_0,phase_fix16_130_carry__0_i_2_n_0,phase_fix16_130_carry__0_i_3_n_0,phase_fix16_130_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__0_i_1
       (.I0(delta[7]),
        .I1(phase_fix16_130_carry__0_i_5_n_5),
        .O(phase_fix16_130_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__0_i_2
       (.I0(delta[6]),
        .I1(phase_fix16_130_carry__0_i_5_n_6),
        .O(phase_fix16_130_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__0_i_3
       (.I0(delta[5]),
        .I1(phase_fix16_130_carry__0_i_5_n_7),
        .O(phase_fix16_130_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__0_i_4
       (.I0(delta[4]),
        .I1(phase_fix16_130_carry_i_5_n_4),
        .O(phase_fix16_130_carry__0_i_4_n_0));
  CARRY4 phase_fix16_130_carry__0_i_5
       (.CI(phase_fix16_130_carry_i_5_n_0),
        .CO({phase_fix16_130_carry__0_i_5_n_0,phase_fix16_130_carry__0_i_5_n_1,phase_fix16_130_carry__0_i_5_n_2,phase_fix16_130_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase_fix16_130_carry__0_i_5_n_4,phase_fix16_130_carry__0_i_5_n_5,phase_fix16_130_carry__0_i_5_n_6,phase_fix16_130_carry__0_i_5_n_7}),
        .S({phase_fix16_130_carry__0_i_6_n_0,phase_fix16_130_carry__0_i_7_n_0,phase_fix16_130_carry__0_i_8_n_0,phase_fix16_130_carry__0_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__0_i_6
       (.I0(Q[8]),
        .O(phase_fix16_130_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__0_i_7
       (.I0(Q[7]),
        .O(phase_fix16_130_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__0_i_8
       (.I0(Q[6]),
        .O(phase_fix16_130_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__0_i_9
       (.I0(Q[5]),
        .O(phase_fix16_130_carry__0_i_9_n_0));
  CARRY4 phase_fix16_130_carry__1
       (.CI(phase_fix16_130_carry__0_n_0),
        .CO({phase_fix16_130_carry__1_n_0,phase_fix16_130_carry__1_n_1,phase_fix16_130_carry__1_n_2,phase_fix16_130_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delta[11:8]),
        .O(phase_fix16_130[11:8]),
        .S({phase_fix16_130_carry__1_i_1_n_0,phase_fix16_130_carry__1_i_2_n_0,phase_fix16_130_carry__1_i_3_n_0,phase_fix16_130_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__1_i_1
       (.I0(delta[11]),
        .I1(phase_fix16_130_carry__1_i_5_n_5),
        .O(phase_fix16_130_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__1_i_2
       (.I0(delta[10]),
        .I1(phase_fix16_130_carry__1_i_5_n_6),
        .O(phase_fix16_130_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__1_i_3
       (.I0(delta[9]),
        .I1(phase_fix16_130_carry__1_i_5_n_7),
        .O(phase_fix16_130_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__1_i_4
       (.I0(delta[8]),
        .I1(phase_fix16_130_carry__0_i_5_n_4),
        .O(phase_fix16_130_carry__1_i_4_n_0));
  CARRY4 phase_fix16_130_carry__1_i_5
       (.CI(phase_fix16_130_carry__0_i_5_n_0),
        .CO({phase_fix16_130_carry__1_i_5_n_0,phase_fix16_130_carry__1_i_5_n_1,phase_fix16_130_carry__1_i_5_n_2,phase_fix16_130_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase_fix16_130_carry__1_i_5_n_4,phase_fix16_130_carry__1_i_5_n_5,phase_fix16_130_carry__1_i_5_n_6,phase_fix16_130_carry__1_i_5_n_7}),
        .S({phase_fix16_130_carry__1_i_6_n_0,phase_fix16_130_carry__1_i_7_n_0,phase_fix16_130_carry__1_i_8_n_0,phase_fix16_130_carry__1_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__1_i_6
       (.I0(Q[12]),
        .O(phase_fix16_130_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__1_i_7
       (.I0(Q[11]),
        .O(phase_fix16_130_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__1_i_8
       (.I0(Q[10]),
        .O(phase_fix16_130_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__1_i_9
       (.I0(Q[9]),
        .O(phase_fix16_130_carry__1_i_9_n_0));
  CARRY4 phase_fix16_130_carry__2
       (.CI(phase_fix16_130_carry__1_n_0),
        .CO({NLW_phase_fix16_130_carry__2_CO_UNCONNECTED[3],phase_fix16_130_carry__2_n_1,phase_fix16_130_carry__2_n_2,phase_fix16_130_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,phase_fix16_130_carry__2_i_1_n_0,phase_fix16_130_carry__2_i_2_n_7,delta[12]}),
        .O(phase_fix16_130[15:12]),
        .S({phase_fix16_130_carry__2_i_3_n_0,phase_fix16_130_carry__2_i_4_n_0,phase_fix16_130_carry__2_i_5_n_0,phase_fix16_130_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_130_carry__2_i_1
       (.I0(phase_fix16_130_carry__2_i_2_n_6),
        .I1(delta[14]),
        .O(phase_fix16_130_carry__2_i_1_n_0));
  CARRY4 phase_fix16_130_carry__2_i_2
       (.CI(phase_fix16_130_carry__1_i_5_n_0),
        .CO({NLW_phase_fix16_130_carry__2_i_2_CO_UNCONNECTED[3:2],phase_fix16_130_carry__2_i_2_n_2,phase_fix16_130_carry__2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,phase_fix16_130_carry__2_i_7_n_0}),
        .O({NLW_phase_fix16_130_carry__2_i_2_O_UNCONNECTED[3],phase_fix16_130_carry__2_i_2_n_5,phase_fix16_130_carry__2_i_2_n_6,phase_fix16_130_carry__2_i_2_n_7}),
        .S({1'b0,phase_fix16_130_carry__2_i_8_n_0,phase_fix16_130_carry__2_i_9_n_0,Q[13]}));
  LUT4 #(
    .INIT(16'hD22D)) 
    phase_fix16_130_carry__2_i_3
       (.I0(phase_fix16_130_carry__2_i_2_n_6),
        .I1(delta[14]),
        .I2(phase_fix16_130_carry__2_i_2_n_5),
        .I3(delta[15]),
        .O(phase_fix16_130_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    phase_fix16_130_carry__2_i_4
       (.I0(phase_fix16_130_carry__2_i_2_n_6),
        .I1(delta[14]),
        .I2(phase_fix16_130_carry__2_i_2_n_7),
        .O(phase_fix16_130_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_130_carry__2_i_5
       (.I0(phase_fix16_130_carry__2_i_2_n_7),
        .I1(delta[13]),
        .O(phase_fix16_130_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry__2_i_6
       (.I0(delta[12]),
        .I1(phase_fix16_130_carry__1_i_5_n_4),
        .O(phase_fix16_130_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__2_i_7
       (.I0(Q[13]),
        .O(phase_fix16_130_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__2_i_8
       (.I0(Q[15]),
        .O(phase_fix16_130_carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry__2_i_9
       (.I0(Q[14]),
        .O(phase_fix16_130_carry__2_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry_i_1
       (.I0(delta[3]),
        .I1(phase_fix16_130_carry_i_5_n_5),
        .O(phase_fix16_130_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry_i_10
       (.I0(Q[1]),
        .O(phase_fix16_130_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry_i_2
       (.I0(delta[2]),
        .I1(phase_fix16_130_carry_i_5_n_6),
        .O(phase_fix16_130_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry_i_3
       (.I0(delta[1]),
        .I1(phase_fix16_130_carry_i_5_n_7),
        .O(phase_fix16_130_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase_fix16_130_carry_i_4
       (.I0(delta[0]),
        .I1(Q[0]),
        .O(phase_fix16_130_carry_i_4_n_0));
  CARRY4 phase_fix16_130_carry_i_5
       (.CI(1'b0),
        .CO({phase_fix16_130_carry_i_5_n_0,phase_fix16_130_carry_i_5_n_1,phase_fix16_130_carry_i_5_n_2,phase_fix16_130_carry_i_5_n_3}),
        .CYINIT(phase_fix16_130_carry_i_6_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase_fix16_130_carry_i_5_n_4,phase_fix16_130_carry_i_5_n_5,phase_fix16_130_carry_i_5_n_6,phase_fix16_130_carry_i_5_n_7}),
        .S({phase_fix16_130_carry_i_7_n_0,phase_fix16_130_carry_i_8_n_0,phase_fix16_130_carry_i_9_n_0,phase_fix16_130_carry_i_10_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry_i_6
       (.I0(Q[0]),
        .O(phase_fix16_130_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry_i_7
       (.I0(Q[4]),
        .O(phase_fix16_130_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry_i_8
       (.I0(Q[3]),
        .O(phase_fix16_130_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_130_carry_i_9
       (.I0(Q[2]),
        .O(phase_fix16_130_carry_i_9_n_0));
  CARRY4 phase_fix16_131_carry
       (.CI(1'b0),
        .CO({NLW_phase_fix16_131_carry_CO_UNCONNECTED[3:2],phase_fix16_131,phase_fix16_131_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,phase_fix16_132[15],phase_fix16_131_carry_i_1_n_0}),
        .O(NLW_phase_fix16_131_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,phase_fix16_131_carry_i_2_n_0,phase_fix16_131_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase_fix16_131_carry_i_1
       (.I0(phase_fix16_132[13]),
        .O(phase_fix16_131_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase_fix16_131_carry_i_2
       (.I0(phase_fix16_132[14]),
        .I1(phase_fix16_132[15]),
        .O(phase_fix16_131_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phase_fix16_131_carry_i_3
       (.I0(phase_fix16_132[13]),
        .I1(phase_fix16_132[12]),
        .O(phase_fix16_131_carry_i_3_n_0));
  CARRY4 phase_fix16_132_carry
       (.CI(1'b0),
        .CO({phase_fix16_132_carry_n_0,phase_fix16_132_carry_n_1,phase_fix16_132_carry_n_2,phase_fix16_132_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(phase_fix16_132[3:0]),
        .S({phase_fix16_132_carry_i_1_n_0,phase_fix16_132_carry_i_2_n_0,phase_fix16_132_carry_i_3_n_0,phase_fix16_132_carry_i_4_n_0}));
  CARRY4 phase_fix16_132_carry__0
       (.CI(phase_fix16_132_carry_n_0),
        .CO({phase_fix16_132_carry__0_n_0,phase_fix16_132_carry__0_n_1,phase_fix16_132_carry__0_n_2,phase_fix16_132_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(phase_fix16_132[7:4]),
        .S({phase_fix16_132_carry__0_i_1_n_0,phase_fix16_132_carry__0_i_2_n_0,phase_fix16_132_carry__0_i_3_n_0,phase_fix16_132_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__0_i_1
       (.I0(Q[7]),
        .I1(delta[7]),
        .O(phase_fix16_132_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__0_i_2
       (.I0(Q[6]),
        .I1(delta[6]),
        .O(phase_fix16_132_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__0_i_3
       (.I0(Q[5]),
        .I1(delta[5]),
        .O(phase_fix16_132_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__0_i_4
       (.I0(Q[4]),
        .I1(delta[4]),
        .O(phase_fix16_132_carry__0_i_4_n_0));
  CARRY4 phase_fix16_132_carry__1
       (.CI(phase_fix16_132_carry__0_n_0),
        .CO({phase_fix16_132_carry__1_n_0,phase_fix16_132_carry__1_n_1,phase_fix16_132_carry__1_n_2,phase_fix16_132_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(phase_fix16_132[11:8]),
        .S({phase_fix16_132_carry__1_i_1_n_0,phase_fix16_132_carry__1_i_2_n_0,phase_fix16_132_carry__1_i_3_n_0,phase_fix16_132_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__1_i_1
       (.I0(Q[11]),
        .I1(delta[11]),
        .O(phase_fix16_132_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__1_i_2
       (.I0(Q[10]),
        .I1(delta[10]),
        .O(phase_fix16_132_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__1_i_3
       (.I0(Q[9]),
        .I1(delta[9]),
        .O(phase_fix16_132_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__1_i_4
       (.I0(Q[8]),
        .I1(delta[8]),
        .O(phase_fix16_132_carry__1_i_4_n_0));
  CARRY4 phase_fix16_132_carry__2
       (.CI(phase_fix16_132_carry__1_n_0),
        .CO({NLW_phase_fix16_132_carry__2_CO_UNCONNECTED[3],phase_fix16_132_carry__2_n_1,phase_fix16_132_carry__2_n_2,phase_fix16_132_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(phase_fix16_132[15:12]),
        .S({phase_fix16_132_carry__2_i_1_n_0,phase_fix16_132_carry__2_i_2_n_0,phase_fix16_132_carry__2_i_3_n_0,phase_fix16_132_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__2_i_1
       (.I0(Q[15]),
        .I1(delta[15]),
        .O(phase_fix16_132_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__2_i_2
       (.I0(Q[14]),
        .I1(delta[14]),
        .O(phase_fix16_132_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__2_i_3
       (.I0(Q[13]),
        .I1(delta[13]),
        .O(phase_fix16_132_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry__2_i_4
       (.I0(Q[12]),
        .I1(delta[12]),
        .O(phase_fix16_132_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry_i_1
       (.I0(Q[3]),
        .I1(delta[3]),
        .O(phase_fix16_132_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry_i_2
       (.I0(Q[2]),
        .I1(delta[2]),
        .O(phase_fix16_132_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry_i_3
       (.I0(Q[1]),
        .I1(delta[1]),
        .O(phase_fix16_132_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase_fix16_132_carry_i_4
       (.I0(Q[0]),
        .I1(delta[0]),
        .O(phase_fix16_132_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[0]_i_1 
       (.I0(phase_fix16_132[0]),
        .I1(phase_fix16_130[0]),
        .I2(phase_fix16_131),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[10]_i_1 
       (.I0(phase_fix16_132[10]),
        .I1(phase_fix16_130[10]),
        .I2(phase_fix16_131),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[11]_i_1 
       (.I0(phase_fix16_132[11]),
        .I1(phase_fix16_130[11]),
        .I2(phase_fix16_131),
        .O(p_2_in[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[12]_i_1 
       (.I0(phase_fix16_132[12]),
        .I1(phase_fix16_130[12]),
        .I2(phase_fix16_131),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[13]_i_1 
       (.I0(phase_fix16_132[13]),
        .I1(phase_fix16_130[13]),
        .I2(phase_fix16_131),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[14]_i_1 
       (.I0(phase_fix16_132[14]),
        .I1(phase_fix16_130[14]),
        .I2(phase_fix16_131),
        .O(p_2_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_fix16_13[15]_i_1 
       (.I0(nReset),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \phase_fix16_13[15]_i_2 
       (.I0(audioClk),
        .I1(pre_audioClk),
        .O(\phase_fix16_13[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[15]_i_3 
       (.I0(phase_fix16_132[15]),
        .I1(phase_fix16_130[15]),
        .I2(phase_fix16_131),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[1]_i_1 
       (.I0(phase_fix16_132[1]),
        .I1(phase_fix16_130[1]),
        .I2(phase_fix16_131),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[2]_i_1 
       (.I0(phase_fix16_132[2]),
        .I1(phase_fix16_130[2]),
        .I2(phase_fix16_131),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[3]_i_1 
       (.I0(phase_fix16_132[3]),
        .I1(phase_fix16_130[3]),
        .I2(phase_fix16_131),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[4]_i_1 
       (.I0(phase_fix16_132[4]),
        .I1(phase_fix16_130[4]),
        .I2(phase_fix16_131),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[5]_i_1 
       (.I0(phase_fix16_132[5]),
        .I1(phase_fix16_130[5]),
        .I2(phase_fix16_131),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[6]_i_1 
       (.I0(phase_fix16_132[6]),
        .I1(phase_fix16_130[6]),
        .I2(phase_fix16_131),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[7]_i_1 
       (.I0(phase_fix16_132[7]),
        .I1(phase_fix16_130[7]),
        .I2(phase_fix16_131),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[8]_i_1 
       (.I0(phase_fix16_132[8]),
        .I1(phase_fix16_130[8]),
        .I2(phase_fix16_131),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase_fix16_13[9]_i_1 
       (.I0(phase_fix16_132[9]),
        .I1(phase_fix16_130[9]),
        .I2(phase_fix16_131),
        .O(p_2_in[9]));
  FDRE \phase_fix16_13_reg[0] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[10] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(Q[10]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[11] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(Q[11]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[12] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(Q[12]),
        .R(p_0_in));
  FDSE \phase_fix16_13_reg[13] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(Q[13]),
        .S(p_0_in));
  FDSE \phase_fix16_13_reg[14] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(Q[14]),
        .S(p_0_in));
  FDSE \phase_fix16_13_reg[15] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(Q[15]),
        .S(p_0_in));
  FDRE \phase_fix16_13_reg[1] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[2] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[3] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[4] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[5] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[6] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[7] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[8] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(Q[8]),
        .R(p_0_in));
  FDRE \phase_fix16_13_reg[9] 
       (.C(sysClk),
        .CE(\phase_fix16_13[15]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(Q[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pre_audioClk_i_1
       (.I0(audioClk),
        .I1(nReset),
        .O(pre_audioClk_i_1_n_0));
  FDRE pre_audioClk_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(pre_audioClk_i_1_n_0),
        .Q(pre_audioClk),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
