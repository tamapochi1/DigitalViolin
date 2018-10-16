// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct 13 15:27:55 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_phase_gen_256_0_0_sim_netlist.v
// Design      : design_1_phase_gen_256_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_phase_gen_256_0_0,phase_gen_256,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "phase_gen_256,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    sysClk,
    audioClkSync,
    reg_index,
    reg_index_valid,
    s_axis_delta_tdata,
    s_axis_delta_tvalid,
    m_bram_int_rdaddr,
    m_bram_int_wraddr,
    m_bram_int_clk,
    m_bram_int_rddata,
    m_bram_int_wrdata,
    m_bram_int_rst,
    m_bram_int_we,
    m_axis_phase_tdata,
    m_axis_phase_tvalid,
    sync);
  input nReset;
  input sysClk;
  input audioClkSync;
  output [10:0]reg_index;
  output reg_index_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TDATA" *) input [23:0]s_axis_delta_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_delta, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_delta_tvalid;
  output [10:0]m_bram_int_rdaddr;
  output [10:0]m_bram_int_wraddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_int_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_clk, ASSOCIATED_RESET m_bram_int_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_phase_gen_256_0_0_m_bram_int_clk" *) output m_bram_int_clk;
  input [23:0]m_bram_int_rddata;
  output [23:0]m_bram_int_wrdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_int_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_rst, POLARITY ACTIVE_LOW" *) output m_bram_int_rst;
  output m_bram_int_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TDATA" *) output [15:0]m_axis_phase_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phase, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_phase_tvalid;
  output sync;

  wire audioClkSync;
  wire [15:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [10:0]m_bram_int_rdaddr;
  wire [23:0]m_bram_int_rddata;
  wire m_bram_int_rst;
  wire [10:0]m_bram_int_wraddr;
  wire [7:0]\^m_bram_int_wrdata ;
  wire nReset;
  wire [10:0]reg_index;
  wire reg_index_valid;
  wire [23:0]s_axis_delta_tdata;
  wire s_axis_delta_tvalid;
  wire sync;
  wire sysClk;

  assign m_bram_int_clk = sysClk;
  assign m_bram_int_we = m_axis_phase_tvalid;
  assign m_bram_int_wrdata[23:8] = m_axis_phase_tdata;
  assign m_bram_int_wrdata[7:0] = \^m_bram_int_wrdata [7:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phase_gen_256 inst
       (.SR(m_bram_int_rst),
        .audioClkSync(audioClkSync),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .m_bram_int_rdaddr(m_bram_int_rdaddr),
        .m_bram_int_rddata(m_bram_int_rddata),
        .m_bram_int_wraddr(m_bram_int_wraddr),
        .m_bram_int_wrdata({m_axis_phase_tdata,\^m_bram_int_wrdata }),
        .nReset(nReset),
        .reg_index(reg_index),
        .reg_index_valid(reg_index_valid),
        .s_axis_delta_tdata(s_axis_delta_tdata),
        .s_axis_delta_tvalid(s_axis_delta_tvalid),
        .sync(sync),
        .sysClk(sysClk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phase_gen_256
   (reg_index_valid,
    SR,
    m_bram_int_wrdata,
    m_axis_phase_tvalid,
    reg_index,
    m_bram_int_rdaddr,
    m_bram_int_wraddr,
    sync,
    audioClkSync,
    nReset,
    s_axis_delta_tvalid,
    sysClk,
    m_bram_int_rddata,
    s_axis_delta_tdata);
  output reg_index_valid;
  output [0:0]SR;
  output [23:0]m_bram_int_wrdata;
  output m_axis_phase_tvalid;
  output [10:0]reg_index;
  output [10:0]m_bram_int_rdaddr;
  output [10:0]m_bram_int_wraddr;
  output sync;
  input audioClkSync;
  input nReset;
  input s_axis_delta_tvalid;
  input sysClk;
  input [23:0]m_bram_int_rddata;
  input [23:0]s_axis_delta_tdata;

  wire [0:0]SR;
  wire audioClkSync;
  wire \bram_int_rdIndex[10]_i_1_n_0 ;
  wire \bram_int_rdIndex[10]_i_3_n_0 ;
  wire \bram_int_wrIndex[10]_i_1_n_0 ;
  wire \bram_int_wrIndex[10]_i_3_n_0 ;
  wire \index[10]_i_1_n_0 ;
  wire \index[10]_i_4_n_0 ;
  wire index_valid_i_1_n_0;
  wire m_axis_phase_tvalid;
  wire [10:0]m_bram_int_rdaddr;
  wire [23:0]m_bram_int_rddata;
  wire [10:0]m_bram_int_wraddr;
  wire [23:0]m_bram_int_wrdata;
  wire nReset;
  wire [23:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [10:0]p_0_in__1;
  wire [10:0]p_0_in__2;
  wire [23:21]phase0;
  wire phase1;
  wire phase1_carry_i_1_n_0;
  wire phase1_carry_i_2_n_0;
  wire phase1_carry_i_3_n_0;
  wire phase1_carry_n_3;
  wire [23:0]phasePlusDelta;
  wire phasePlusDeltaValid;
  wire \phasePlusDelta[11]_i_2_n_0 ;
  wire \phasePlusDelta[11]_i_3_n_0 ;
  wire \phasePlusDelta[11]_i_4_n_0 ;
  wire \phasePlusDelta[11]_i_5_n_0 ;
  wire \phasePlusDelta[15]_i_2_n_0 ;
  wire \phasePlusDelta[15]_i_3_n_0 ;
  wire \phasePlusDelta[15]_i_4_n_0 ;
  wire \phasePlusDelta[15]_i_5_n_0 ;
  wire \phasePlusDelta[19]_i_2_n_0 ;
  wire \phasePlusDelta[19]_i_3_n_0 ;
  wire \phasePlusDelta[19]_i_4_n_0 ;
  wire \phasePlusDelta[19]_i_5_n_0 ;
  wire \phasePlusDelta[23]_i_2_n_0 ;
  wire \phasePlusDelta[23]_i_3_n_0 ;
  wire \phasePlusDelta[23]_i_4_n_0 ;
  wire \phasePlusDelta[23]_i_5_n_0 ;
  wire \phasePlusDelta[3]_i_2_n_0 ;
  wire \phasePlusDelta[3]_i_3_n_0 ;
  wire \phasePlusDelta[3]_i_4_n_0 ;
  wire \phasePlusDelta[3]_i_5_n_0 ;
  wire \phasePlusDelta[7]_i_2_n_0 ;
  wire \phasePlusDelta[7]_i_3_n_0 ;
  wire \phasePlusDelta[7]_i_4_n_0 ;
  wire \phasePlusDelta[7]_i_5_n_0 ;
  wire \phasePlusDelta_reg[11]_i_1_n_0 ;
  wire \phasePlusDelta_reg[11]_i_1_n_1 ;
  wire \phasePlusDelta_reg[11]_i_1_n_2 ;
  wire \phasePlusDelta_reg[11]_i_1_n_3 ;
  wire \phasePlusDelta_reg[15]_i_1_n_0 ;
  wire \phasePlusDelta_reg[15]_i_1_n_1 ;
  wire \phasePlusDelta_reg[15]_i_1_n_2 ;
  wire \phasePlusDelta_reg[15]_i_1_n_3 ;
  wire \phasePlusDelta_reg[19]_i_1_n_0 ;
  wire \phasePlusDelta_reg[19]_i_1_n_1 ;
  wire \phasePlusDelta_reg[19]_i_1_n_2 ;
  wire \phasePlusDelta_reg[19]_i_1_n_3 ;
  wire \phasePlusDelta_reg[23]_i_1_n_1 ;
  wire \phasePlusDelta_reg[23]_i_1_n_2 ;
  wire \phasePlusDelta_reg[23]_i_1_n_3 ;
  wire \phasePlusDelta_reg[3]_i_1_n_0 ;
  wire \phasePlusDelta_reg[3]_i_1_n_1 ;
  wire \phasePlusDelta_reg[3]_i_1_n_2 ;
  wire \phasePlusDelta_reg[3]_i_1_n_3 ;
  wire \phasePlusDelta_reg[7]_i_1_n_0 ;
  wire \phasePlusDelta_reg[7]_i_1_n_1 ;
  wire \phasePlusDelta_reg[7]_i_1_n_2 ;
  wire \phasePlusDelta_reg[7]_i_1_n_3 ;
  wire \phase[21]_i_1_n_0 ;
  wire \phase[22]_i_1_n_0 ;
  wire \phase[23]_i_1_n_0 ;
  wire \phase[23]_i_3_n_0 ;
  wire \phase[23]_i_4_n_0 ;
  wire \phase_reg[23]_i_2_n_2 ;
  wire \phase_reg[23]_i_2_n_3 ;
  wire [10:0]reg_index;
  wire reg_index_valid;
  wire [23:0]s_axis_delta_tdata;
  wire s_axis_delta_tvalid;
  wire sel;
  wire sync;
  wire sync_INST_0_i_1_n_0;
  wire sysClk;
  wire [3:2]NLW_phase1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_phase1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_phasePlusDelta_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_phase_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_phase_reg[23]_i_2_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \bram_int_rdIndex[0]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
        .O(p_0_in__1[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \bram_int_rdIndex[10]_i_1 
       (.I0(nReset),
        .I1(s_axis_delta_tvalid),
        .O(\bram_int_rdIndex[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \bram_int_rdIndex[10]_i_2 
       (.I0(m_bram_int_rdaddr[9]),
        .I1(m_bram_int_rdaddr[7]),
        .I2(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I3(m_bram_int_rdaddr[6]),
        .I4(m_bram_int_rdaddr[8]),
        .I5(m_bram_int_rdaddr[10]),
        .O(p_0_in__1[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bram_int_rdIndex[10]_i_3 
       (.I0(m_bram_int_rdaddr[4]),
        .I1(m_bram_int_rdaddr[2]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[3]),
        .I5(m_bram_int_rdaddr[5]),
        .O(\bram_int_rdIndex[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram_int_rdIndex[1]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
        .I1(m_bram_int_rdaddr[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bram_int_rdIndex[2]_i_1 
       (.I0(m_bram_int_rdaddr[1]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bram_int_rdIndex[3]_i_1 
       (.I0(m_bram_int_rdaddr[2]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[1]),
        .I3(m_bram_int_rdaddr[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bram_int_rdIndex[4]_i_1 
       (.I0(m_bram_int_rdaddr[3]),
        .I1(m_bram_int_rdaddr[1]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[2]),
        .I4(m_bram_int_rdaddr[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bram_int_rdIndex[5]_i_1 
       (.I0(m_bram_int_rdaddr[4]),
        .I1(m_bram_int_rdaddr[2]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[3]),
        .I5(m_bram_int_rdaddr[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bram_int_rdIndex[6]_i_1 
       (.I0(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I1(m_bram_int_rdaddr[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \bram_int_rdIndex[7]_i_1 
       (.I0(m_bram_int_rdaddr[6]),
        .I1(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_rdaddr[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \bram_int_rdIndex[8]_i_1 
       (.I0(m_bram_int_rdaddr[7]),
        .I1(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_rdaddr[6]),
        .I3(m_bram_int_rdaddr[8]),
        .O(p_0_in__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \bram_int_rdIndex[9]_i_1 
       (.I0(m_bram_int_rdaddr[8]),
        .I1(m_bram_int_rdaddr[6]),
        .I2(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I3(m_bram_int_rdaddr[7]),
        .I4(m_bram_int_rdaddr[9]),
        .O(p_0_in__1[9]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(m_bram_int_rdaddr[0]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[10] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[10]),
        .Q(m_bram_int_rdaddr[10]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(m_bram_int_rdaddr[1]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(m_bram_int_rdaddr[2]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(m_bram_int_rdaddr[3]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(m_bram_int_rdaddr[4]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(m_bram_int_rdaddr[5]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(m_bram_int_rdaddr[6]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(m_bram_int_rdaddr[7]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[8] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[8]),
        .Q(m_bram_int_rdaddr[8]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[9] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__1[9]),
        .Q(m_bram_int_rdaddr[9]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_int_wrIndex[0]_i_1 
       (.I0(m_bram_int_wraddr[0]),
        .O(p_0_in__2[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \bram_int_wrIndex[10]_i_1 
       (.I0(nReset),
        .I1(phasePlusDeltaValid),
        .O(\bram_int_wrIndex[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \bram_int_wrIndex[10]_i_2 
       (.I0(m_bram_int_wraddr[9]),
        .I1(m_bram_int_wraddr[7]),
        .I2(\bram_int_wrIndex[10]_i_3_n_0 ),
        .I3(m_bram_int_wraddr[6]),
        .I4(m_bram_int_wraddr[8]),
        .I5(m_bram_int_wraddr[10]),
        .O(p_0_in__2[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bram_int_wrIndex[10]_i_3 
       (.I0(m_bram_int_wraddr[4]),
        .I1(m_bram_int_wraddr[2]),
        .I2(m_bram_int_wraddr[0]),
        .I3(m_bram_int_wraddr[1]),
        .I4(m_bram_int_wraddr[3]),
        .I5(m_bram_int_wraddr[5]),
        .O(\bram_int_wrIndex[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram_int_wrIndex[1]_i_1 
       (.I0(m_bram_int_wraddr[0]),
        .I1(m_bram_int_wraddr[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bram_int_wrIndex[2]_i_1 
       (.I0(m_bram_int_wraddr[1]),
        .I1(m_bram_int_wraddr[0]),
        .I2(m_bram_int_wraddr[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bram_int_wrIndex[3]_i_1 
       (.I0(m_bram_int_wraddr[2]),
        .I1(m_bram_int_wraddr[0]),
        .I2(m_bram_int_wraddr[1]),
        .I3(m_bram_int_wraddr[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bram_int_wrIndex[4]_i_1 
       (.I0(m_bram_int_wraddr[3]),
        .I1(m_bram_int_wraddr[1]),
        .I2(m_bram_int_wraddr[0]),
        .I3(m_bram_int_wraddr[2]),
        .I4(m_bram_int_wraddr[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bram_int_wrIndex[5]_i_1 
       (.I0(m_bram_int_wraddr[4]),
        .I1(m_bram_int_wraddr[2]),
        .I2(m_bram_int_wraddr[0]),
        .I3(m_bram_int_wraddr[1]),
        .I4(m_bram_int_wraddr[3]),
        .I5(m_bram_int_wraddr[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bram_int_wrIndex[6]_i_1 
       (.I0(\bram_int_wrIndex[10]_i_3_n_0 ),
        .I1(m_bram_int_wraddr[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \bram_int_wrIndex[7]_i_1 
       (.I0(m_bram_int_wraddr[6]),
        .I1(\bram_int_wrIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_wraddr[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \bram_int_wrIndex[8]_i_1 
       (.I0(m_bram_int_wraddr[7]),
        .I1(\bram_int_wrIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_wraddr[6]),
        .I3(m_bram_int_wraddr[8]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \bram_int_wrIndex[9]_i_1 
       (.I0(m_bram_int_wraddr[8]),
        .I1(m_bram_int_wraddr[6]),
        .I2(\bram_int_wrIndex[10]_i_3_n_0 ),
        .I3(m_bram_int_wraddr[7]),
        .I4(m_bram_int_wraddr[9]),
        .O(p_0_in__2[9]));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(m_bram_int_wraddr[0]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[10] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[10]),
        .Q(m_bram_int_wraddr[10]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(m_bram_int_wraddr[1]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[2]),
        .Q(m_bram_int_wraddr[2]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(m_bram_int_wraddr[3]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[4]),
        .Q(m_bram_int_wraddr[4]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[5]),
        .Q(m_bram_int_wraddr[5]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[6]),
        .Q(m_bram_int_wraddr[6]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[7]),
        .Q(m_bram_int_wraddr[7]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[8] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[8]),
        .Q(m_bram_int_wraddr[8]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[9] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__2[9]),
        .Q(m_bram_int_wraddr[9]),
        .S(\bram_int_wrIndex[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(reg_index[0]),
        .O(p_0_in__0[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \index[10]_i_1 
       (.I0(audioClkSync),
        .I1(nReset),
        .O(\index[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \index[10]_i_2 
       (.I0(reg_index[9]),
        .I1(reg_index[7]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(reg_index[6]),
        .I4(reg_index[8]),
        .I5(reg_index[10]),
        .O(sel));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \index[10]_i_3 
       (.I0(reg_index[9]),
        .I1(reg_index[7]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(reg_index[6]),
        .I4(reg_index[8]),
        .I5(reg_index[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \index[10]_i_4 
       (.I0(reg_index[4]),
        .I1(reg_index[2]),
        .I2(reg_index[0]),
        .I3(reg_index[1]),
        .I4(reg_index[3]),
        .I5(reg_index[5]),
        .O(\index[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(reg_index[0]),
        .I1(reg_index[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(reg_index[1]),
        .I1(reg_index[0]),
        .I2(reg_index[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(reg_index[2]),
        .I1(reg_index[0]),
        .I2(reg_index[1]),
        .I3(reg_index[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(reg_index[3]),
        .I1(reg_index[1]),
        .I2(reg_index[0]),
        .I3(reg_index[2]),
        .I4(reg_index[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(reg_index[4]),
        .I1(reg_index[2]),
        .I2(reg_index[0]),
        .I3(reg_index[1]),
        .I4(reg_index[3]),
        .I5(reg_index[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \index[6]_i_1 
       (.I0(\index[10]_i_4_n_0 ),
        .I1(reg_index[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \index[7]_i_1 
       (.I0(reg_index[6]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(reg_index[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \index[8]_i_1 
       (.I0(reg_index[7]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(reg_index[6]),
        .I3(reg_index[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \index[9]_i_1 
       (.I0(reg_index[8]),
        .I1(reg_index[6]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(reg_index[7]),
        .I4(reg_index[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[0] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(reg_index[0]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[10] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[10]),
        .Q(reg_index[10]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[1] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(reg_index[1]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[2] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(reg_index[2]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[3] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(reg_index[3]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[4] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[4]),
        .Q(reg_index[4]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[5] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[5]),
        .Q(reg_index[5]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[6] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[6]),
        .Q(reg_index[6]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[7] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[7]),
        .Q(reg_index[7]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[8] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[8]),
        .Q(reg_index[8]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[9] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in__0[9]),
        .Q(reg_index[9]),
        .R(\index[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    index_valid_i_1
       (.I0(sel),
        .I1(audioClkSync),
        .O(index_valid_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    index_valid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(index_valid_i_1_n_0),
        .Q(reg_index_valid),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    m_bram_int_rst_INST_0
       (.I0(nReset),
        .O(SR));
  CARRY4 phase1_carry
       (.CI(1'b0),
        .CO({NLW_phase1_carry_CO_UNCONNECTED[3:2],phase1,phase1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,phasePlusDelta[23],phase1_carry_i_1_n_0}),
        .O(NLW_phase1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,phase1_carry_i_2_n_0,phase1_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase1_carry_i_1
       (.I0(phasePlusDelta[21]),
        .O(phase1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase1_carry_i_2
       (.I0(phasePlusDelta[22]),
        .I1(phasePlusDelta[23]),
        .O(phase1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phase1_carry_i_3
       (.I0(phasePlusDelta[21]),
        .I1(phasePlusDelta[20]),
        .O(phase1_carry_i_3_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    phasePlusDeltaValid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(s_axis_delta_tvalid),
        .Q(phasePlusDeltaValid),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[11]_i_2 
       (.I0(m_bram_int_rddata[11]),
        .I1(s_axis_delta_tdata[11]),
        .O(\phasePlusDelta[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[11]_i_3 
       (.I0(m_bram_int_rddata[10]),
        .I1(s_axis_delta_tdata[10]),
        .O(\phasePlusDelta[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[11]_i_4 
       (.I0(m_bram_int_rddata[9]),
        .I1(s_axis_delta_tdata[9]),
        .O(\phasePlusDelta[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[11]_i_5 
       (.I0(m_bram_int_rddata[8]),
        .I1(s_axis_delta_tdata[8]),
        .O(\phasePlusDelta[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[15]_i_2 
       (.I0(m_bram_int_rddata[15]),
        .I1(s_axis_delta_tdata[15]),
        .O(\phasePlusDelta[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[15]_i_3 
       (.I0(m_bram_int_rddata[14]),
        .I1(s_axis_delta_tdata[14]),
        .O(\phasePlusDelta[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[15]_i_4 
       (.I0(m_bram_int_rddata[13]),
        .I1(s_axis_delta_tdata[13]),
        .O(\phasePlusDelta[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[15]_i_5 
       (.I0(m_bram_int_rddata[12]),
        .I1(s_axis_delta_tdata[12]),
        .O(\phasePlusDelta[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[19]_i_2 
       (.I0(m_bram_int_rddata[19]),
        .I1(s_axis_delta_tdata[19]),
        .O(\phasePlusDelta[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[19]_i_3 
       (.I0(m_bram_int_rddata[18]),
        .I1(s_axis_delta_tdata[18]),
        .O(\phasePlusDelta[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[19]_i_4 
       (.I0(m_bram_int_rddata[17]),
        .I1(s_axis_delta_tdata[17]),
        .O(\phasePlusDelta[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[19]_i_5 
       (.I0(m_bram_int_rddata[16]),
        .I1(s_axis_delta_tdata[16]),
        .O(\phasePlusDelta[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[23]_i_2 
       (.I0(m_bram_int_rddata[23]),
        .I1(s_axis_delta_tdata[23]),
        .O(\phasePlusDelta[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[23]_i_3 
       (.I0(m_bram_int_rddata[22]),
        .I1(s_axis_delta_tdata[22]),
        .O(\phasePlusDelta[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[23]_i_4 
       (.I0(m_bram_int_rddata[21]),
        .I1(s_axis_delta_tdata[21]),
        .O(\phasePlusDelta[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[23]_i_5 
       (.I0(m_bram_int_rddata[20]),
        .I1(s_axis_delta_tdata[20]),
        .O(\phasePlusDelta[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[3]_i_2 
       (.I0(m_bram_int_rddata[3]),
        .I1(s_axis_delta_tdata[3]),
        .O(\phasePlusDelta[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[3]_i_3 
       (.I0(m_bram_int_rddata[2]),
        .I1(s_axis_delta_tdata[2]),
        .O(\phasePlusDelta[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[3]_i_4 
       (.I0(m_bram_int_rddata[1]),
        .I1(s_axis_delta_tdata[1]),
        .O(\phasePlusDelta[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[3]_i_5 
       (.I0(m_bram_int_rddata[0]),
        .I1(s_axis_delta_tdata[0]),
        .O(\phasePlusDelta[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[7]_i_2 
       (.I0(m_bram_int_rddata[7]),
        .I1(s_axis_delta_tdata[7]),
        .O(\phasePlusDelta[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[7]_i_3 
       (.I0(m_bram_int_rddata[6]),
        .I1(s_axis_delta_tdata[6]),
        .O(\phasePlusDelta[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[7]_i_4 
       (.I0(m_bram_int_rddata[5]),
        .I1(s_axis_delta_tdata[5]),
        .O(\phasePlusDelta[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phasePlusDelta[7]_i_5 
       (.I0(m_bram_int_rddata[4]),
        .I1(s_axis_delta_tdata[4]),
        .O(\phasePlusDelta[7]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(phasePlusDelta[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[10] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(phasePlusDelta[10]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[11] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[11]),
        .Q(phasePlusDelta[11]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[11]_i_1 
       (.CI(\phasePlusDelta_reg[7]_i_1_n_0 ),
        .CO({\phasePlusDelta_reg[11]_i_1_n_0 ,\phasePlusDelta_reg[11]_i_1_n_1 ,\phasePlusDelta_reg[11]_i_1_n_2 ,\phasePlusDelta_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[11:8]),
        .O(p_0_in[11:8]),
        .S({\phasePlusDelta[11]_i_2_n_0 ,\phasePlusDelta[11]_i_3_n_0 ,\phasePlusDelta[11]_i_4_n_0 ,\phasePlusDelta[11]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[12] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .Q(phasePlusDelta[12]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[13] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[13]),
        .Q(phasePlusDelta[13]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[14] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[14]),
        .Q(phasePlusDelta[14]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[15] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .Q(phasePlusDelta[15]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[15]_i_1 
       (.CI(\phasePlusDelta_reg[11]_i_1_n_0 ),
        .CO({\phasePlusDelta_reg[15]_i_1_n_0 ,\phasePlusDelta_reg[15]_i_1_n_1 ,\phasePlusDelta_reg[15]_i_1_n_2 ,\phasePlusDelta_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[15:12]),
        .O(p_0_in[15:12]),
        .S({\phasePlusDelta[15]_i_2_n_0 ,\phasePlusDelta[15]_i_3_n_0 ,\phasePlusDelta[15]_i_4_n_0 ,\phasePlusDelta[15]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[16] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[16]),
        .Q(phasePlusDelta[16]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[17] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[17]),
        .Q(phasePlusDelta[17]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[18] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[18]),
        .Q(phasePlusDelta[18]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[19] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .Q(phasePlusDelta[19]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[19]_i_1 
       (.CI(\phasePlusDelta_reg[15]_i_1_n_0 ),
        .CO({\phasePlusDelta_reg[19]_i_1_n_0 ,\phasePlusDelta_reg[19]_i_1_n_1 ,\phasePlusDelta_reg[19]_i_1_n_2 ,\phasePlusDelta_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[19:16]),
        .O(p_0_in[19:16]),
        .S({\phasePlusDelta[19]_i_2_n_0 ,\phasePlusDelta[19]_i_3_n_0 ,\phasePlusDelta[19]_i_4_n_0 ,\phasePlusDelta[19]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(phasePlusDelta[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[20] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .Q(phasePlusDelta[20]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[21] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[21]),
        .Q(phasePlusDelta[21]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[22] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[22]),
        .Q(phasePlusDelta[22]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[23] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .Q(phasePlusDelta[23]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[23]_i_1 
       (.CI(\phasePlusDelta_reg[19]_i_1_n_0 ),
        .CO({\NLW_phasePlusDelta_reg[23]_i_1_CO_UNCONNECTED [3],\phasePlusDelta_reg[23]_i_1_n_1 ,\phasePlusDelta_reg[23]_i_1_n_2 ,\phasePlusDelta_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,m_bram_int_rddata[22:20]}),
        .O(p_0_in[23:20]),
        .S({\phasePlusDelta[23]_i_2_n_0 ,\phasePlusDelta[23]_i_3_n_0 ,\phasePlusDelta[23]_i_4_n_0 ,\phasePlusDelta[23]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(phasePlusDelta[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(phasePlusDelta[3]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\phasePlusDelta_reg[3]_i_1_n_0 ,\phasePlusDelta_reg[3]_i_1_n_1 ,\phasePlusDelta_reg[3]_i_1_n_2 ,\phasePlusDelta_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[3:0]),
        .O(p_0_in[3:0]),
        .S({\phasePlusDelta[3]_i_2_n_0 ,\phasePlusDelta[3]_i_3_n_0 ,\phasePlusDelta[3]_i_4_n_0 ,\phasePlusDelta[3]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(phasePlusDelta[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(phasePlusDelta[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(phasePlusDelta[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(phasePlusDelta[7]),
        .R(SR));
  CARRY4 \phasePlusDelta_reg[7]_i_1 
       (.CI(\phasePlusDelta_reg[3]_i_1_n_0 ),
        .CO({\phasePlusDelta_reg[7]_i_1_n_0 ,\phasePlusDelta_reg[7]_i_1_n_1 ,\phasePlusDelta_reg[7]_i_1_n_2 ,\phasePlusDelta_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[7:4]),
        .O(p_0_in[7:4]),
        .S({\phasePlusDelta[7]_i_2_n_0 ,\phasePlusDelta[7]_i_3_n_0 ,\phasePlusDelta[7]_i_4_n_0 ,\phasePlusDelta[7]_i_5_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[8] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(phasePlusDelta[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phasePlusDelta_reg[9] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(phasePlusDelta[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[21]_i_1 
       (.I0(phasePlusDelta[21]),
        .I1(phase0[21]),
        .I2(phase1),
        .O(\phase[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[22]_i_1 
       (.I0(phasePlusDelta[22]),
        .I1(phase0[22]),
        .I2(phase1),
        .O(\phase[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[23]_i_1 
       (.I0(phasePlusDelta[23]),
        .I1(phase0[23]),
        .I2(phase1),
        .O(\phase[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_3 
       (.I0(phasePlusDelta[23]),
        .O(\phase[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_4 
       (.I0(phasePlusDelta[22]),
        .O(\phase[23]_i_4_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[0] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[0]),
        .Q(m_bram_int_wrdata[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[10] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[10]),
        .Q(m_bram_int_wrdata[10]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[11] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[11]),
        .Q(m_bram_int_wrdata[11]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[12] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[12]),
        .Q(m_bram_int_wrdata[12]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[13] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[13]),
        .Q(m_bram_int_wrdata[13]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[14] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[14]),
        .Q(m_bram_int_wrdata[14]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[15] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[15]),
        .Q(m_bram_int_wrdata[15]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[16] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[16]),
        .Q(m_bram_int_wrdata[16]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[17] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[17]),
        .Q(m_bram_int_wrdata[17]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[18] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[18]),
        .Q(m_bram_int_wrdata[18]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[19] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[19]),
        .Q(m_bram_int_wrdata[19]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[1] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[1]),
        .Q(m_bram_int_wrdata[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[20] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[20]),
        .Q(m_bram_int_wrdata[20]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[21] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(\phase[21]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[21]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[22] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(\phase[22]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[22]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[23] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(\phase[23]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[23]),
        .R(SR));
  CARRY4 \phase_reg[23]_i_2 
       (.CI(1'b0),
        .CO({\NLW_phase_reg[23]_i_2_CO_UNCONNECTED [3:2],\phase_reg[23]_i_2_n_2 ,\phase_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,phasePlusDelta[22],1'b0}),
        .O({\NLW_phase_reg[23]_i_2_O_UNCONNECTED [3],phase0}),
        .S({1'b0,\phase[23]_i_3_n_0 ,\phase[23]_i_4_n_0 ,phasePlusDelta[21]}));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[2] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[2]),
        .Q(m_bram_int_wrdata[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[3] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[3]),
        .Q(m_bram_int_wrdata[3]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[4] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[4]),
        .Q(m_bram_int_wrdata[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[5] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[5]),
        .Q(m_bram_int_wrdata[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[6] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[6]),
        .Q(m_bram_int_wrdata[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[7] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[7]),
        .Q(m_bram_int_wrdata[7]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[8] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[8]),
        .Q(m_bram_int_wrdata[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[9] 
       (.C(sysClk),
        .CE(phasePlusDeltaValid),
        .D(phasePlusDelta[9]),
        .Q(m_bram_int_wrdata[9]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    phase_valid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(phasePlusDeltaValid),
        .Q(m_axis_phase_tvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    sync_INST_0
       (.I0(reg_index[3]),
        .I1(reg_index[4]),
        .I2(reg_index[2]),
        .I3(reg_index[1]),
        .I4(reg_index[0]),
        .I5(sync_INST_0_i_1_n_0),
        .O(sync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sync_INST_0_i_1
       (.I0(reg_index[7]),
        .I1(reg_index[8]),
        .I2(reg_index[5]),
        .I3(reg_index[6]),
        .I4(reg_index[10]),
        .I5(reg_index[9]),
        .O(sync_INST_0_i_1_n_0));
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
