// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:48:55 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_phase_gen_256_0_0/design_1_phase_gen_256_0_0_sim_netlist.v
// Design      : design_1_phase_gen_256_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_phase_gen_256_0_0,phase_gen_256,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "phase_gen_256,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_phase_gen_256_0_0
   (nReset,
    sysClk,
    audioClk,
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
  input audioClk;
  output [10:0]reg_index;
  output reg_index_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TDATA" *) input [23:0]s_axis_delta_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_delta, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 20000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_delta_tvalid;
  output [10:0]m_bram_int_rdaddr;
  output [10:0]m_bram_int_wraddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_int_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_clk, ASSOCIATED_RESET m_bram_int_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_phase_gen_256_0_0_m_bram_int_clk" *) output m_bram_int_clk;
  input [23:0]m_bram_int_rddata;
  output [23:0]m_bram_int_wrdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_int_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_rst, POLARITY ACTIVE_LOW" *) output m_bram_int_rst;
  output m_bram_int_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TDATA" *) output [15:0]m_axis_phase_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phase, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 20000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_phase_tvalid;
  output sync;

  wire audioClk;
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
  design_1_phase_gen_256_0_0_phase_gen_256 inst
       (.audioClk(audioClk),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .m_bram_int_rdaddr(m_bram_int_rdaddr),
        .m_bram_int_rddata(m_bram_int_rddata),
        .m_bram_int_rst(m_bram_int_rst),
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

(* ORIG_REF_NAME = "phase_gen_256" *) 
module design_1_phase_gen_256_0_0_phase_gen_256
   (m_bram_int_rst,
    reg_index_valid,
    m_bram_int_wraddr,
    m_bram_int_rdaddr,
    m_bram_int_wrdata,
    m_axis_phase_tvalid,
    reg_index,
    sync,
    nReset,
    s_axis_delta_tvalid,
    s_axis_delta_tdata,
    m_bram_int_rddata,
    sysClk,
    audioClk);
  output m_bram_int_rst;
  output reg_index_valid;
  output [10:0]m_bram_int_wraddr;
  output [10:0]m_bram_int_rdaddr;
  output [23:0]m_bram_int_wrdata;
  output m_axis_phase_tvalid;
  output [10:0]reg_index;
  output sync;
  input nReset;
  input s_axis_delta_tvalid;
  input [23:0]s_axis_delta_tdata;
  input [23:0]m_bram_int_rddata;
  input sysClk;
  input audioClk;

  wire audioClk;
  wire \bram_int_rdIndex[10]_i_1_n_0 ;
  wire \bram_int_rdIndex[10]_i_3_n_0 ;
  wire \index[10]_i_1_n_0 ;
  wire \index[10]_i_4_n_0 ;
  wire index_valid_i_1_n_0;
  wire m_axis_phase_tvalid;
  wire [10:0]m_bram_int_rdaddr;
  wire [23:0]m_bram_int_rddata;
  wire m_bram_int_rst;
  wire [10:0]m_bram_int_wraddr;
  wire [23:0]m_bram_int_wrdata;
  wire nReset;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire [23:0]phase0;
  wire phase0_carry__0_i_1_n_0;
  wire phase0_carry__0_i_2_n_0;
  wire phase0_carry__0_i_3_n_0;
  wire phase0_carry__0_i_4_n_0;
  wire phase0_carry__0_i_5_n_0;
  wire phase0_carry__0_i_5_n_1;
  wire phase0_carry__0_i_5_n_2;
  wire phase0_carry__0_i_5_n_3;
  wire phase0_carry__0_i_5_n_4;
  wire phase0_carry__0_i_5_n_5;
  wire phase0_carry__0_i_5_n_6;
  wire phase0_carry__0_i_5_n_7;
  wire phase0_carry__0_i_6_n_0;
  wire phase0_carry__0_i_7_n_0;
  wire phase0_carry__0_i_8_n_0;
  wire phase0_carry__0_i_9_n_0;
  wire phase0_carry__0_n_0;
  wire phase0_carry__0_n_1;
  wire phase0_carry__0_n_2;
  wire phase0_carry__0_n_3;
  wire phase0_carry__1_i_1_n_0;
  wire phase0_carry__1_i_2_n_0;
  wire phase0_carry__1_i_3_n_0;
  wire phase0_carry__1_i_4_n_0;
  wire phase0_carry__1_i_5_n_0;
  wire phase0_carry__1_i_5_n_1;
  wire phase0_carry__1_i_5_n_2;
  wire phase0_carry__1_i_5_n_3;
  wire phase0_carry__1_i_5_n_4;
  wire phase0_carry__1_i_5_n_5;
  wire phase0_carry__1_i_5_n_6;
  wire phase0_carry__1_i_5_n_7;
  wire phase0_carry__1_i_6_n_0;
  wire phase0_carry__1_i_7_n_0;
  wire phase0_carry__1_i_8_n_0;
  wire phase0_carry__1_i_9_n_0;
  wire phase0_carry__1_n_0;
  wire phase0_carry__1_n_1;
  wire phase0_carry__1_n_2;
  wire phase0_carry__1_n_3;
  wire phase0_carry__2_i_1_n_0;
  wire phase0_carry__2_i_2_n_0;
  wire phase0_carry__2_i_3_n_0;
  wire phase0_carry__2_i_4_n_0;
  wire phase0_carry__2_i_5_n_0;
  wire phase0_carry__2_i_5_n_1;
  wire phase0_carry__2_i_5_n_2;
  wire phase0_carry__2_i_5_n_3;
  wire phase0_carry__2_i_5_n_4;
  wire phase0_carry__2_i_5_n_5;
  wire phase0_carry__2_i_5_n_6;
  wire phase0_carry__2_i_5_n_7;
  wire phase0_carry__2_i_6_n_0;
  wire phase0_carry__2_i_7_n_0;
  wire phase0_carry__2_i_8_n_0;
  wire phase0_carry__2_i_9_n_0;
  wire phase0_carry__2_n_0;
  wire phase0_carry__2_n_1;
  wire phase0_carry__2_n_2;
  wire phase0_carry__2_n_3;
  wire phase0_carry__3_i_1_n_0;
  wire phase0_carry__3_i_2_n_0;
  wire phase0_carry__3_i_3_n_0;
  wire phase0_carry__3_i_4_n_0;
  wire phase0_carry__3_i_5_n_0;
  wire phase0_carry__3_i_5_n_1;
  wire phase0_carry__3_i_5_n_2;
  wire phase0_carry__3_i_5_n_3;
  wire phase0_carry__3_i_5_n_4;
  wire phase0_carry__3_i_5_n_5;
  wire phase0_carry__3_i_5_n_6;
  wire phase0_carry__3_i_5_n_7;
  wire phase0_carry__3_i_6_n_0;
  wire phase0_carry__3_i_7_n_0;
  wire phase0_carry__3_i_8_n_0;
  wire phase0_carry__3_i_9_n_0;
  wire phase0_carry__3_n_0;
  wire phase0_carry__3_n_1;
  wire phase0_carry__3_n_2;
  wire phase0_carry__3_n_3;
  wire phase0_carry__4_i_1_n_0;
  wire phase0_carry__4_i_2_n_2;
  wire phase0_carry__4_i_2_n_3;
  wire phase0_carry__4_i_2_n_5;
  wire phase0_carry__4_i_2_n_6;
  wire phase0_carry__4_i_2_n_7;
  wire phase0_carry__4_i_3_n_0;
  wire phase0_carry__4_i_4_n_0;
  wire phase0_carry__4_i_5_n_0;
  wire phase0_carry__4_i_6_n_0;
  wire phase0_carry__4_i_7_n_0;
  wire phase0_carry__4_i_8_n_0;
  wire phase0_carry__4_i_9_n_0;
  wire phase0_carry__4_n_1;
  wire phase0_carry__4_n_2;
  wire phase0_carry__4_n_3;
  wire phase0_carry_i_10_n_0;
  wire phase0_carry_i_1_n_0;
  wire phase0_carry_i_2_n_0;
  wire phase0_carry_i_3_n_0;
  wire phase0_carry_i_4_n_0;
  wire phase0_carry_i_5_n_0;
  wire phase0_carry_i_5_n_1;
  wire phase0_carry_i_5_n_2;
  wire phase0_carry_i_5_n_3;
  wire phase0_carry_i_5_n_4;
  wire phase0_carry_i_5_n_5;
  wire phase0_carry_i_5_n_6;
  wire phase0_carry_i_5_n_7;
  wire phase0_carry_i_6_n_0;
  wire phase0_carry_i_7_n_0;
  wire phase0_carry_i_8_n_0;
  wire phase0_carry_i_9_n_0;
  wire phase0_carry_n_0;
  wire phase0_carry_n_1;
  wire phase0_carry_n_2;
  wire phase0_carry_n_3;
  wire phase1;
  wire phase1_carry_i_1_n_0;
  wire phase1_carry_i_2_n_0;
  wire phase1_carry_i_3_n_0;
  wire phase1_carry_n_3;
  wire [23:0]phase2;
  wire phase2_carry__0_i_1_n_0;
  wire phase2_carry__0_i_2_n_0;
  wire phase2_carry__0_i_3_n_0;
  wire phase2_carry__0_i_4_n_0;
  wire phase2_carry__0_n_0;
  wire phase2_carry__0_n_1;
  wire phase2_carry__0_n_2;
  wire phase2_carry__0_n_3;
  wire phase2_carry__1_i_1_n_0;
  wire phase2_carry__1_i_2_n_0;
  wire phase2_carry__1_i_3_n_0;
  wire phase2_carry__1_i_4_n_0;
  wire phase2_carry__1_n_0;
  wire phase2_carry__1_n_1;
  wire phase2_carry__1_n_2;
  wire phase2_carry__1_n_3;
  wire phase2_carry__2_i_1_n_0;
  wire phase2_carry__2_i_2_n_0;
  wire phase2_carry__2_i_3_n_0;
  wire phase2_carry__2_i_4_n_0;
  wire phase2_carry__2_n_0;
  wire phase2_carry__2_n_1;
  wire phase2_carry__2_n_2;
  wire phase2_carry__2_n_3;
  wire phase2_carry__3_i_1_n_0;
  wire phase2_carry__3_i_2_n_0;
  wire phase2_carry__3_i_3_n_0;
  wire phase2_carry__3_i_4_n_0;
  wire phase2_carry__3_n_0;
  wire phase2_carry__3_n_1;
  wire phase2_carry__3_n_2;
  wire phase2_carry__3_n_3;
  wire phase2_carry__4_i_1_n_0;
  wire phase2_carry__4_i_2_n_0;
  wire phase2_carry__4_i_3_n_0;
  wire phase2_carry__4_i_4_n_0;
  wire phase2_carry__4_n_1;
  wire phase2_carry__4_n_2;
  wire phase2_carry__4_n_3;
  wire phase2_carry_i_1_n_0;
  wire phase2_carry_i_2_n_0;
  wire phase2_carry_i_3_n_0;
  wire phase2_carry_i_4_n_0;
  wire phase2_carry_n_0;
  wire phase2_carry_n_1;
  wire phase2_carry_n_2;
  wire phase2_carry_n_3;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[10]_i_1_n_0 ;
  wire \phase[11]_i_1_n_0 ;
  wire \phase[12]_i_1_n_0 ;
  wire \phase[13]_i_1_n_0 ;
  wire \phase[14]_i_1_n_0 ;
  wire \phase[15]_i_1_n_0 ;
  wire \phase[16]_i_1_n_0 ;
  wire \phase[17]_i_1_n_0 ;
  wire \phase[18]_i_1_n_0 ;
  wire \phase[19]_i_1_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[20]_i_1_n_0 ;
  wire \phase[21]_i_1_n_0 ;
  wire \phase[22]_i_1_n_0 ;
  wire \phase[23]_i_1_n_0 ;
  wire \phase[2]_i_1_n_0 ;
  wire \phase[3]_i_1_n_0 ;
  wire \phase[4]_i_1_n_0 ;
  wire \phase[5]_i_1_n_0 ;
  wire \phase[6]_i_1_n_0 ;
  wire \phase[7]_i_1_n_0 ;
  wire \phase[8]_i_1_n_0 ;
  wire \phase[9]_i_1_n_0 ;
  wire [1:0]preAudioClk;
  wire [10:0]reg_index;
  wire reg_index_valid;
  wire [23:0]s_axis_delta_tdata;
  wire s_axis_delta_tvalid;
  wire sel;
  wire sync;
  wire sync_INST_0_i_1_n_0;
  wire sysClk;
  wire [3:3]NLW_phase0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_phase0_carry__4_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_phase0_carry__4_i_2_O_UNCONNECTED;
  wire [3:2]NLW_phase1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_phase1_carry_O_UNCONNECTED;
  wire [3:3]NLW_phase2_carry__4_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \bram_int_rdIndex[0]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
        .O(p_0_in__0[0]));
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
        .O(p_0_in__0[10]));
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bram_int_rdIndex[1]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
        .I1(m_bram_int_rdaddr[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bram_int_rdIndex[2]_i_1 
       (.I0(m_bram_int_rdaddr[1]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bram_int_rdIndex[3]_i_1 
       (.I0(m_bram_int_rdaddr[2]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[1]),
        .I3(m_bram_int_rdaddr[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bram_int_rdIndex[4]_i_1 
       (.I0(m_bram_int_rdaddr[3]),
        .I1(m_bram_int_rdaddr[1]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[2]),
        .I4(m_bram_int_rdaddr[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bram_int_rdIndex[5]_i_1 
       (.I0(m_bram_int_rdaddr[4]),
        .I1(m_bram_int_rdaddr[2]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[3]),
        .I5(m_bram_int_rdaddr[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bram_int_rdIndex[6]_i_1 
       (.I0(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I1(m_bram_int_rdaddr[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \bram_int_rdIndex[7]_i_1 
       (.I0(m_bram_int_rdaddr[6]),
        .I1(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_rdaddr[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \bram_int_rdIndex[8]_i_1 
       (.I0(m_bram_int_rdaddr[7]),
        .I1(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I2(m_bram_int_rdaddr[6]),
        .I3(m_bram_int_rdaddr[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \bram_int_rdIndex[9]_i_1 
       (.I0(m_bram_int_rdaddr[8]),
        .I1(m_bram_int_rdaddr[6]),
        .I2(\bram_int_rdIndex[10]_i_3_n_0 ),
        .I3(m_bram_int_rdaddr[7]),
        .I4(m_bram_int_rdaddr[9]),
        .O(p_0_in__0[9]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(m_bram_int_rdaddr[0]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[10] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(m_bram_int_rdaddr[10]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(m_bram_int_rdaddr[1]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(m_bram_int_rdaddr[2]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(m_bram_int_rdaddr[3]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(m_bram_int_rdaddr[4]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(m_bram_int_rdaddr[5]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(m_bram_int_rdaddr[6]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(m_bram_int_rdaddr[7]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[8] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(m_bram_int_rdaddr[8]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_rdIndex_reg[9] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(m_bram_int_rdaddr[9]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[0]),
        .Q(m_bram_int_wraddr[0]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[10] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[10]),
        .Q(m_bram_int_wraddr[10]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[1]),
        .Q(m_bram_int_wraddr[1]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[2]),
        .Q(m_bram_int_wraddr[2]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[3]),
        .Q(m_bram_int_wraddr[3]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[4]),
        .Q(m_bram_int_wraddr[4]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[5]),
        .Q(m_bram_int_wraddr[5]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[6]),
        .Q(m_bram_int_wraddr[6]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[7]),
        .Q(m_bram_int_wraddr[7]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[8] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[8]),
        .Q(m_bram_int_wraddr[8]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bram_int_wrIndex_reg[9] 
       (.C(sysClk),
        .CE(1'b1),
        .D(m_bram_int_rdaddr[9]),
        .Q(m_bram_int_wraddr[9]),
        .R(\bram_int_rdIndex[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(reg_index[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h4F)) 
    \index[10]_i_1 
       (.I0(preAudioClk[1]),
        .I1(preAudioClk[0]),
        .I2(nReset),
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
        .O(p_0_in[10]));
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(reg_index[0]),
        .I1(reg_index[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(reg_index[1]),
        .I1(reg_index[0]),
        .I2(reg_index[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(reg_index[2]),
        .I1(reg_index[0]),
        .I2(reg_index[1]),
        .I3(reg_index[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(reg_index[3]),
        .I1(reg_index[1]),
        .I2(reg_index[0]),
        .I3(reg_index[2]),
        .I4(reg_index[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(reg_index[4]),
        .I1(reg_index[2]),
        .I2(reg_index[0]),
        .I3(reg_index[1]),
        .I4(reg_index[3]),
        .I5(reg_index[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \index[6]_i_1 
       (.I0(\index[10]_i_4_n_0 ),
        .I1(reg_index[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \index[7]_i_1 
       (.I0(reg_index[6]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(reg_index[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \index[8]_i_1 
       (.I0(reg_index[7]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(reg_index[6]),
        .I3(reg_index[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \index[9]_i_1 
       (.I0(reg_index[8]),
        .I1(reg_index[6]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(reg_index[7]),
        .I4(reg_index[9]),
        .O(p_0_in[9]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[0] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(reg_index[0]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[10] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[10]),
        .Q(reg_index[10]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[1] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(reg_index[1]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[2] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(reg_index[2]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[3] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(reg_index[3]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[4] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(reg_index[4]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[5] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(reg_index[5]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[6] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(reg_index[6]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[7] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(reg_index[7]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[8] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[8]),
        .Q(reg_index[8]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[9] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[9]),
        .Q(reg_index[9]),
        .R(\index[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    index_valid_i_1
       (.I0(sel),
        .I1(preAudioClk[1]),
        .I2(preAudioClk[0]),
        .O(index_valid_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    index_valid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(index_valid_i_1_n_0),
        .Q(reg_index_valid),
        .R(m_bram_int_rst));
  LUT1 #(
    .INIT(2'h1)) 
    m_bram_int_rst_INST_0
       (.I0(nReset),
        .O(m_bram_int_rst));
  CARRY4 phase0_carry
       (.CI(1'b0),
        .CO({phase0_carry_n_0,phase0_carry_n_1,phase0_carry_n_2,phase0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(s_axis_delta_tdata[3:0]),
        .O(phase0[3:0]),
        .S({phase0_carry_i_1_n_0,phase0_carry_i_2_n_0,phase0_carry_i_3_n_0,phase0_carry_i_4_n_0}));
  CARRY4 phase0_carry__0
       (.CI(phase0_carry_n_0),
        .CO({phase0_carry__0_n_0,phase0_carry__0_n_1,phase0_carry__0_n_2,phase0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_delta_tdata[7:4]),
        .O(phase0[7:4]),
        .S({phase0_carry__0_i_1_n_0,phase0_carry__0_i_2_n_0,phase0_carry__0_i_3_n_0,phase0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__0_i_1
       (.I0(s_axis_delta_tdata[7]),
        .I1(phase0_carry__0_i_5_n_5),
        .O(phase0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__0_i_2
       (.I0(s_axis_delta_tdata[6]),
        .I1(phase0_carry__0_i_5_n_6),
        .O(phase0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__0_i_3
       (.I0(s_axis_delta_tdata[5]),
        .I1(phase0_carry__0_i_5_n_7),
        .O(phase0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__0_i_4
       (.I0(s_axis_delta_tdata[4]),
        .I1(phase0_carry_i_5_n_4),
        .O(phase0_carry__0_i_4_n_0));
  CARRY4 phase0_carry__0_i_5
       (.CI(phase0_carry_i_5_n_0),
        .CO({phase0_carry__0_i_5_n_0,phase0_carry__0_i_5_n_1,phase0_carry__0_i_5_n_2,phase0_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase0_carry__0_i_5_n_4,phase0_carry__0_i_5_n_5,phase0_carry__0_i_5_n_6,phase0_carry__0_i_5_n_7}),
        .S({phase0_carry__0_i_6_n_0,phase0_carry__0_i_7_n_0,phase0_carry__0_i_8_n_0,phase0_carry__0_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__0_i_6
       (.I0(m_bram_int_rddata[8]),
        .O(phase0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__0_i_7
       (.I0(m_bram_int_rddata[7]),
        .O(phase0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__0_i_8
       (.I0(m_bram_int_rddata[6]),
        .O(phase0_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__0_i_9
       (.I0(m_bram_int_rddata[5]),
        .O(phase0_carry__0_i_9_n_0));
  CARRY4 phase0_carry__1
       (.CI(phase0_carry__0_n_0),
        .CO({phase0_carry__1_n_0,phase0_carry__1_n_1,phase0_carry__1_n_2,phase0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_delta_tdata[11:8]),
        .O(phase0[11:8]),
        .S({phase0_carry__1_i_1_n_0,phase0_carry__1_i_2_n_0,phase0_carry__1_i_3_n_0,phase0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__1_i_1
       (.I0(s_axis_delta_tdata[11]),
        .I1(phase0_carry__1_i_5_n_5),
        .O(phase0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__1_i_2
       (.I0(s_axis_delta_tdata[10]),
        .I1(phase0_carry__1_i_5_n_6),
        .O(phase0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__1_i_3
       (.I0(s_axis_delta_tdata[9]),
        .I1(phase0_carry__1_i_5_n_7),
        .O(phase0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__1_i_4
       (.I0(s_axis_delta_tdata[8]),
        .I1(phase0_carry__0_i_5_n_4),
        .O(phase0_carry__1_i_4_n_0));
  CARRY4 phase0_carry__1_i_5
       (.CI(phase0_carry__0_i_5_n_0),
        .CO({phase0_carry__1_i_5_n_0,phase0_carry__1_i_5_n_1,phase0_carry__1_i_5_n_2,phase0_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase0_carry__1_i_5_n_4,phase0_carry__1_i_5_n_5,phase0_carry__1_i_5_n_6,phase0_carry__1_i_5_n_7}),
        .S({phase0_carry__1_i_6_n_0,phase0_carry__1_i_7_n_0,phase0_carry__1_i_8_n_0,phase0_carry__1_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__1_i_6
       (.I0(m_bram_int_rddata[12]),
        .O(phase0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__1_i_7
       (.I0(m_bram_int_rddata[11]),
        .O(phase0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__1_i_8
       (.I0(m_bram_int_rddata[10]),
        .O(phase0_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__1_i_9
       (.I0(m_bram_int_rddata[9]),
        .O(phase0_carry__1_i_9_n_0));
  CARRY4 phase0_carry__2
       (.CI(phase0_carry__1_n_0),
        .CO({phase0_carry__2_n_0,phase0_carry__2_n_1,phase0_carry__2_n_2,phase0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_delta_tdata[15:12]),
        .O(phase0[15:12]),
        .S({phase0_carry__2_i_1_n_0,phase0_carry__2_i_2_n_0,phase0_carry__2_i_3_n_0,phase0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__2_i_1
       (.I0(s_axis_delta_tdata[15]),
        .I1(phase0_carry__2_i_5_n_5),
        .O(phase0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__2_i_2
       (.I0(s_axis_delta_tdata[14]),
        .I1(phase0_carry__2_i_5_n_6),
        .O(phase0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__2_i_3
       (.I0(s_axis_delta_tdata[13]),
        .I1(phase0_carry__2_i_5_n_7),
        .O(phase0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__2_i_4
       (.I0(s_axis_delta_tdata[12]),
        .I1(phase0_carry__1_i_5_n_4),
        .O(phase0_carry__2_i_4_n_0));
  CARRY4 phase0_carry__2_i_5
       (.CI(phase0_carry__1_i_5_n_0),
        .CO({phase0_carry__2_i_5_n_0,phase0_carry__2_i_5_n_1,phase0_carry__2_i_5_n_2,phase0_carry__2_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase0_carry__2_i_5_n_4,phase0_carry__2_i_5_n_5,phase0_carry__2_i_5_n_6,phase0_carry__2_i_5_n_7}),
        .S({phase0_carry__2_i_6_n_0,phase0_carry__2_i_7_n_0,phase0_carry__2_i_8_n_0,phase0_carry__2_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__2_i_6
       (.I0(m_bram_int_rddata[16]),
        .O(phase0_carry__2_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__2_i_7
       (.I0(m_bram_int_rddata[15]),
        .O(phase0_carry__2_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__2_i_8
       (.I0(m_bram_int_rddata[14]),
        .O(phase0_carry__2_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__2_i_9
       (.I0(m_bram_int_rddata[13]),
        .O(phase0_carry__2_i_9_n_0));
  CARRY4 phase0_carry__3
       (.CI(phase0_carry__2_n_0),
        .CO({phase0_carry__3_n_0,phase0_carry__3_n_1,phase0_carry__3_n_2,phase0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(s_axis_delta_tdata[19:16]),
        .O(phase0[19:16]),
        .S({phase0_carry__3_i_1_n_0,phase0_carry__3_i_2_n_0,phase0_carry__3_i_3_n_0,phase0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__3_i_1
       (.I0(s_axis_delta_tdata[19]),
        .I1(phase0_carry__3_i_5_n_5),
        .O(phase0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__3_i_2
       (.I0(s_axis_delta_tdata[18]),
        .I1(phase0_carry__3_i_5_n_6),
        .O(phase0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__3_i_3
       (.I0(s_axis_delta_tdata[17]),
        .I1(phase0_carry__3_i_5_n_7),
        .O(phase0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__3_i_4
       (.I0(s_axis_delta_tdata[16]),
        .I1(phase0_carry__2_i_5_n_4),
        .O(phase0_carry__3_i_4_n_0));
  CARRY4 phase0_carry__3_i_5
       (.CI(phase0_carry__2_i_5_n_0),
        .CO({phase0_carry__3_i_5_n_0,phase0_carry__3_i_5_n_1,phase0_carry__3_i_5_n_2,phase0_carry__3_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase0_carry__3_i_5_n_4,phase0_carry__3_i_5_n_5,phase0_carry__3_i_5_n_6,phase0_carry__3_i_5_n_7}),
        .S({phase0_carry__3_i_6_n_0,phase0_carry__3_i_7_n_0,phase0_carry__3_i_8_n_0,phase0_carry__3_i_9_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__3_i_6
       (.I0(m_bram_int_rddata[20]),
        .O(phase0_carry__3_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__3_i_7
       (.I0(m_bram_int_rddata[19]),
        .O(phase0_carry__3_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__3_i_8
       (.I0(m_bram_int_rddata[18]),
        .O(phase0_carry__3_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__3_i_9
       (.I0(m_bram_int_rddata[17]),
        .O(phase0_carry__3_i_9_n_0));
  CARRY4 phase0_carry__4
       (.CI(phase0_carry__3_n_0),
        .CO({NLW_phase0_carry__4_CO_UNCONNECTED[3],phase0_carry__4_n_1,phase0_carry__4_n_2,phase0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,phase0_carry__4_i_1_n_0,phase0_carry__4_i_2_n_7,s_axis_delta_tdata[20]}),
        .O(phase0[23:20]),
        .S({phase0_carry__4_i_3_n_0,phase0_carry__4_i_4_n_0,phase0_carry__4_i_5_n_0,phase0_carry__4_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase0_carry__4_i_1
       (.I0(phase0_carry__4_i_2_n_6),
        .I1(s_axis_delta_tdata[22]),
        .O(phase0_carry__4_i_1_n_0));
  CARRY4 phase0_carry__4_i_2
       (.CI(phase0_carry__3_i_5_n_0),
        .CO({NLW_phase0_carry__4_i_2_CO_UNCONNECTED[3:2],phase0_carry__4_i_2_n_2,phase0_carry__4_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,phase0_carry__4_i_7_n_0}),
        .O({NLW_phase0_carry__4_i_2_O_UNCONNECTED[3],phase0_carry__4_i_2_n_5,phase0_carry__4_i_2_n_6,phase0_carry__4_i_2_n_7}),
        .S({1'b0,phase0_carry__4_i_8_n_0,phase0_carry__4_i_9_n_0,m_bram_int_rddata[21]}));
  LUT4 #(
    .INIT(16'hD22D)) 
    phase0_carry__4_i_3
       (.I0(phase0_carry__4_i_2_n_6),
        .I1(s_axis_delta_tdata[22]),
        .I2(phase0_carry__4_i_2_n_5),
        .I3(s_axis_delta_tdata[23]),
        .O(phase0_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    phase0_carry__4_i_4
       (.I0(phase0_carry__4_i_2_n_6),
        .I1(s_axis_delta_tdata[22]),
        .I2(phase0_carry__4_i_2_n_7),
        .O(phase0_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase0_carry__4_i_5
       (.I0(phase0_carry__4_i_2_n_7),
        .I1(s_axis_delta_tdata[21]),
        .O(phase0_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry__4_i_6
       (.I0(s_axis_delta_tdata[20]),
        .I1(phase0_carry__3_i_5_n_4),
        .O(phase0_carry__4_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__4_i_7
       (.I0(m_bram_int_rddata[21]),
        .O(phase0_carry__4_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__4_i_8
       (.I0(m_bram_int_rddata[23]),
        .O(phase0_carry__4_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry__4_i_9
       (.I0(m_bram_int_rddata[22]),
        .O(phase0_carry__4_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry_i_1
       (.I0(s_axis_delta_tdata[3]),
        .I1(phase0_carry_i_5_n_5),
        .O(phase0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry_i_10
       (.I0(m_bram_int_rddata[1]),
        .O(phase0_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry_i_2
       (.I0(s_axis_delta_tdata[2]),
        .I1(phase0_carry_i_5_n_6),
        .O(phase0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry_i_3
       (.I0(s_axis_delta_tdata[1]),
        .I1(phase0_carry_i_5_n_7),
        .O(phase0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase0_carry_i_4
       (.I0(s_axis_delta_tdata[0]),
        .I1(m_bram_int_rddata[0]),
        .O(phase0_carry_i_4_n_0));
  CARRY4 phase0_carry_i_5
       (.CI(1'b0),
        .CO({phase0_carry_i_5_n_0,phase0_carry_i_5_n_1,phase0_carry_i_5_n_2,phase0_carry_i_5_n_3}),
        .CYINIT(phase0_carry_i_6_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({phase0_carry_i_5_n_4,phase0_carry_i_5_n_5,phase0_carry_i_5_n_6,phase0_carry_i_5_n_7}),
        .S({phase0_carry_i_7_n_0,phase0_carry_i_8_n_0,phase0_carry_i_9_n_0,phase0_carry_i_10_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry_i_6
       (.I0(m_bram_int_rddata[0]),
        .O(phase0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry_i_7
       (.I0(m_bram_int_rddata[4]),
        .O(phase0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry_i_8
       (.I0(m_bram_int_rddata[3]),
        .O(phase0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    phase0_carry_i_9
       (.I0(m_bram_int_rddata[2]),
        .O(phase0_carry_i_9_n_0));
  CARRY4 phase1_carry
       (.CI(1'b0),
        .CO({NLW_phase1_carry_CO_UNCONNECTED[3:2],phase1,phase1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,phase2[23],phase1_carry_i_1_n_0}),
        .O(NLW_phase1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,phase1_carry_i_2_n_0,phase1_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase1_carry_i_1
       (.I0(phase2[21]),
        .O(phase1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    phase1_carry_i_2
       (.I0(phase2[22]),
        .I1(phase2[23]),
        .O(phase1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phase1_carry_i_3
       (.I0(phase2[21]),
        .I1(phase2[20]),
        .O(phase1_carry_i_3_n_0));
  CARRY4 phase2_carry
       (.CI(1'b0),
        .CO({phase2_carry_n_0,phase2_carry_n_1,phase2_carry_n_2,phase2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[3:0]),
        .O(phase2[3:0]),
        .S({phase2_carry_i_1_n_0,phase2_carry_i_2_n_0,phase2_carry_i_3_n_0,phase2_carry_i_4_n_0}));
  CARRY4 phase2_carry__0
       (.CI(phase2_carry_n_0),
        .CO({phase2_carry__0_n_0,phase2_carry__0_n_1,phase2_carry__0_n_2,phase2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[7:4]),
        .O(phase2[7:4]),
        .S({phase2_carry__0_i_1_n_0,phase2_carry__0_i_2_n_0,phase2_carry__0_i_3_n_0,phase2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_1
       (.I0(m_bram_int_rddata[7]),
        .I1(s_axis_delta_tdata[7]),
        .O(phase2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_2
       (.I0(m_bram_int_rddata[6]),
        .I1(s_axis_delta_tdata[6]),
        .O(phase2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_3
       (.I0(m_bram_int_rddata[5]),
        .I1(s_axis_delta_tdata[5]),
        .O(phase2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_4
       (.I0(m_bram_int_rddata[4]),
        .I1(s_axis_delta_tdata[4]),
        .O(phase2_carry__0_i_4_n_0));
  CARRY4 phase2_carry__1
       (.CI(phase2_carry__0_n_0),
        .CO({phase2_carry__1_n_0,phase2_carry__1_n_1,phase2_carry__1_n_2,phase2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[11:8]),
        .O(phase2[11:8]),
        .S({phase2_carry__1_i_1_n_0,phase2_carry__1_i_2_n_0,phase2_carry__1_i_3_n_0,phase2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_1
       (.I0(m_bram_int_rddata[11]),
        .I1(s_axis_delta_tdata[11]),
        .O(phase2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_2
       (.I0(m_bram_int_rddata[10]),
        .I1(s_axis_delta_tdata[10]),
        .O(phase2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_3
       (.I0(m_bram_int_rddata[9]),
        .I1(s_axis_delta_tdata[9]),
        .O(phase2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_4
       (.I0(m_bram_int_rddata[8]),
        .I1(s_axis_delta_tdata[8]),
        .O(phase2_carry__1_i_4_n_0));
  CARRY4 phase2_carry__2
       (.CI(phase2_carry__1_n_0),
        .CO({phase2_carry__2_n_0,phase2_carry__2_n_1,phase2_carry__2_n_2,phase2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[15:12]),
        .O(phase2[15:12]),
        .S({phase2_carry__2_i_1_n_0,phase2_carry__2_i_2_n_0,phase2_carry__2_i_3_n_0,phase2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_1
       (.I0(m_bram_int_rddata[15]),
        .I1(s_axis_delta_tdata[15]),
        .O(phase2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_2
       (.I0(m_bram_int_rddata[14]),
        .I1(s_axis_delta_tdata[14]),
        .O(phase2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_3
       (.I0(m_bram_int_rddata[13]),
        .I1(s_axis_delta_tdata[13]),
        .O(phase2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_4
       (.I0(m_bram_int_rddata[12]),
        .I1(s_axis_delta_tdata[12]),
        .O(phase2_carry__2_i_4_n_0));
  CARRY4 phase2_carry__3
       (.CI(phase2_carry__2_n_0),
        .CO({phase2_carry__3_n_0,phase2_carry__3_n_1,phase2_carry__3_n_2,phase2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(m_bram_int_rddata[19:16]),
        .O(phase2[19:16]),
        .S({phase2_carry__3_i_1_n_0,phase2_carry__3_i_2_n_0,phase2_carry__3_i_3_n_0,phase2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_1
       (.I0(m_bram_int_rddata[19]),
        .I1(s_axis_delta_tdata[19]),
        .O(phase2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_2
       (.I0(m_bram_int_rddata[18]),
        .I1(s_axis_delta_tdata[18]),
        .O(phase2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_3
       (.I0(m_bram_int_rddata[17]),
        .I1(s_axis_delta_tdata[17]),
        .O(phase2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_4
       (.I0(m_bram_int_rddata[16]),
        .I1(s_axis_delta_tdata[16]),
        .O(phase2_carry__3_i_4_n_0));
  CARRY4 phase2_carry__4
       (.CI(phase2_carry__3_n_0),
        .CO({NLW_phase2_carry__4_CO_UNCONNECTED[3],phase2_carry__4_n_1,phase2_carry__4_n_2,phase2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,m_bram_int_rddata[22:20]}),
        .O(phase2[23:20]),
        .S({phase2_carry__4_i_1_n_0,phase2_carry__4_i_2_n_0,phase2_carry__4_i_3_n_0,phase2_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_1
       (.I0(m_bram_int_rddata[23]),
        .I1(s_axis_delta_tdata[23]),
        .O(phase2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_2
       (.I0(m_bram_int_rddata[22]),
        .I1(s_axis_delta_tdata[22]),
        .O(phase2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_3
       (.I0(m_bram_int_rddata[21]),
        .I1(s_axis_delta_tdata[21]),
        .O(phase2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_4
       (.I0(m_bram_int_rddata[20]),
        .I1(s_axis_delta_tdata[20]),
        .O(phase2_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_1
       (.I0(m_bram_int_rddata[3]),
        .I1(s_axis_delta_tdata[3]),
        .O(phase2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_2
       (.I0(m_bram_int_rddata[2]),
        .I1(s_axis_delta_tdata[2]),
        .O(phase2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_3
       (.I0(m_bram_int_rddata[1]),
        .I1(s_axis_delta_tdata[1]),
        .O(phase2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_4
       (.I0(m_bram_int_rddata[0]),
        .I1(s_axis_delta_tdata[0]),
        .O(phase2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[0]_i_1 
       (.I0(phase2[0]),
        .I1(phase0[0]),
        .I2(phase1),
        .O(\phase[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[10]_i_1 
       (.I0(phase2[10]),
        .I1(phase0[10]),
        .I2(phase1),
        .O(\phase[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[11]_i_1 
       (.I0(phase2[11]),
        .I1(phase0[11]),
        .I2(phase1),
        .O(\phase[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[12]_i_1 
       (.I0(phase2[12]),
        .I1(phase0[12]),
        .I2(phase1),
        .O(\phase[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[13]_i_1 
       (.I0(phase2[13]),
        .I1(phase0[13]),
        .I2(phase1),
        .O(\phase[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[14]_i_1 
       (.I0(phase2[14]),
        .I1(phase0[14]),
        .I2(phase1),
        .O(\phase[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[15]_i_1 
       (.I0(phase2[15]),
        .I1(phase0[15]),
        .I2(phase1),
        .O(\phase[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[16]_i_1 
       (.I0(phase2[16]),
        .I1(phase0[16]),
        .I2(phase1),
        .O(\phase[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[17]_i_1 
       (.I0(phase2[17]),
        .I1(phase0[17]),
        .I2(phase1),
        .O(\phase[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[18]_i_1 
       (.I0(phase2[18]),
        .I1(phase0[18]),
        .I2(phase1),
        .O(\phase[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[19]_i_1 
       (.I0(phase2[19]),
        .I1(phase0[19]),
        .I2(phase1),
        .O(\phase[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[1]_i_1 
       (.I0(phase2[1]),
        .I1(phase0[1]),
        .I2(phase1),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[20]_i_1 
       (.I0(phase2[20]),
        .I1(phase0[20]),
        .I2(phase1),
        .O(\phase[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[21]_i_1 
       (.I0(phase2[21]),
        .I1(phase0[21]),
        .I2(phase1),
        .O(\phase[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[22]_i_1 
       (.I0(phase2[22]),
        .I1(phase0[22]),
        .I2(phase1),
        .O(\phase[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[23]_i_1 
       (.I0(phase2[23]),
        .I1(phase0[23]),
        .I2(phase1),
        .O(\phase[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[2]_i_1 
       (.I0(phase2[2]),
        .I1(phase0[2]),
        .I2(phase1),
        .O(\phase[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[3]_i_1 
       (.I0(phase2[3]),
        .I1(phase0[3]),
        .I2(phase1),
        .O(\phase[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[4]_i_1 
       (.I0(phase2[4]),
        .I1(phase0[4]),
        .I2(phase1),
        .O(\phase[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[5]_i_1 
       (.I0(phase2[5]),
        .I1(phase0[5]),
        .I2(phase1),
        .O(\phase[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[6]_i_1 
       (.I0(phase2[6]),
        .I1(phase0[6]),
        .I2(phase1),
        .O(\phase[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[7]_i_1 
       (.I0(phase2[7]),
        .I1(phase0[7]),
        .I2(phase1),
        .O(\phase[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[8]_i_1 
       (.I0(phase2[8]),
        .I1(phase0[8]),
        .I2(phase1),
        .O(\phase[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[9]_i_1 
       (.I0(phase2[9]),
        .I1(phase0[9]),
        .I2(phase1),
        .O(\phase[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[0] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[0]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[0]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[10] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[10]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[10]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[11] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[11]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[11]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[12] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[12]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[12]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[13] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[13]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[13]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[14] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[14]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[14]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[15] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[15]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[15]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[16] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[16]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[16]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[17] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[17]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[17]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[18] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[18]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[18]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[19] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[19]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[19]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[1] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[1]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[1]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[20] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[20]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[20]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[21] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[21]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[21]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[22] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[22]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[22]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[23] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[23]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[23]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[2] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[2]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[2]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[3] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[3]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[3]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[4] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[4]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[4]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[5] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[5]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[5]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[6] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[6]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[6]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[7] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[7]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[7]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[8] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[8]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[8]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[9] 
       (.C(sysClk),
        .CE(s_axis_delta_tvalid),
        .D(\phase[9]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[9]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    phase_valid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(s_axis_delta_tvalid),
        .Q(m_axis_phase_tvalid),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preAudioClk_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(audioClk),
        .Q(preAudioClk[0]),
        .R(m_bram_int_rst));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preAudioClk_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(preAudioClk[0]),
        .Q(preAudioClk[1]),
        .R(m_bram_int_rst));
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
