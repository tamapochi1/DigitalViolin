// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct  6 16:50:32 2018
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
    m_bram_addr,
    m_bram_clk,
    m_bram_rddata,
    m_bram_en,
    m_bram_rst,
    m_bram_we,
    m_bram_int_rdaddr,
    m_bram_int_wraddr,
    m_bram_int_clk,
    m_bram_int_rddata,
    m_bram_int_wrdata,
    m_bram_int_rst,
    m_bram_int_we,
    m_axis_phase_tdata,
    m_axis_phase_tvalid,
    m_axis_gain_tdata,
    m_axis_gain_tvalid,
    sync);
  input nReset;
  input sysClk;
  input audioClk;
  output [31:0]m_bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_phase_gen_256_0_0_m_bram_clk" *) output m_bram_clk;
  input [31:0]m_bram_rddata;
  output m_bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_rst, POLARITY ACTIVE_LOW" *) output m_bram_rst;
  output m_bram_we;
  output [10:0]m_bram_int_rdaddr;
  output [10:0]m_bram_int_wraddr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_int_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_phase_gen_256_0_0_m_bram_int_clk" *) output m_bram_int_clk;
  input [23:0]m_bram_int_rddata;
  output [23:0]m_bram_int_wrdata;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_int_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_rst, POLARITY ACTIVE_LOW" *) output m_bram_int_rst;
  output m_bram_int_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TDATA" *) output [15:0]m_axis_phase_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phase, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_phase_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TDATA" *) output [9:0]m_axis_gain_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_gain, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_gain_tvalid;
  output sync;

  wire \<const0> ;
  wire audioClk;
  wire [9:0]m_axis_gain_tdata;
  wire m_axis_gain_tvalid;
  wire [15:0]m_axis_phase_tdata;
  wire [12:2]\^m_bram_addr ;
  wire [23:0]m_bram_int_rddata;
  wire [10:0]m_bram_int_wraddr;
  wire [7:0]\^m_bram_int_wrdata ;
  wire [31:0]m_bram_rddata;
  wire m_bram_rst;
  wire nReset;
  wire sync;
  wire sysClk;

  assign m_axis_phase_tvalid = m_axis_gain_tvalid;
  assign m_bram_addr[31] = \<const0> ;
  assign m_bram_addr[30] = \<const0> ;
  assign m_bram_addr[29] = \<const0> ;
  assign m_bram_addr[28] = \<const0> ;
  assign m_bram_addr[27] = \<const0> ;
  assign m_bram_addr[26] = \<const0> ;
  assign m_bram_addr[25] = \<const0> ;
  assign m_bram_addr[24] = \<const0> ;
  assign m_bram_addr[23] = \<const0> ;
  assign m_bram_addr[22] = \<const0> ;
  assign m_bram_addr[21] = \<const0> ;
  assign m_bram_addr[20] = \<const0> ;
  assign m_bram_addr[19] = \<const0> ;
  assign m_bram_addr[18] = \<const0> ;
  assign m_bram_addr[17] = \<const0> ;
  assign m_bram_addr[16] = \<const0> ;
  assign m_bram_addr[15] = \<const0> ;
  assign m_bram_addr[14] = \<const0> ;
  assign m_bram_addr[13] = \<const0> ;
  assign m_bram_addr[12:2] = \^m_bram_addr [12:2];
  assign m_bram_addr[1] = \<const0> ;
  assign m_bram_addr[0] = \<const0> ;
  assign m_bram_clk = sysClk;
  assign m_bram_en = nReset;
  assign m_bram_int_clk = sysClk;
  assign m_bram_int_rdaddr[10:0] = \^m_bram_addr [12:2];
  assign m_bram_int_rst = m_bram_rst;
  assign m_bram_int_we = m_axis_gain_tvalid;
  assign m_bram_int_wrdata[23:8] = m_axis_phase_tdata;
  assign m_bram_int_wrdata[7:0] = \^m_bram_int_wrdata [7:0];
  assign m_bram_we = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_phase_gen_256_0_0_phase_gen_256 inst
       (.SR(m_bram_rst),
        .audioClk(audioClk),
        .m_axis_gain_tdata(m_axis_gain_tdata),
        .m_axis_gain_tvalid(m_axis_gain_tvalid),
        .m_bram_int_rdaddr(\^m_bram_addr ),
        .m_bram_int_rddata(m_bram_int_rddata),
        .m_bram_int_wraddr(m_bram_int_wraddr),
        .m_bram_int_wrdata({m_axis_phase_tdata,\^m_bram_int_wrdata }),
        .m_bram_rddata(m_bram_rddata),
        .nReset(nReset),
        .sync(sync),
        .sysClk(sysClk));
endmodule

(* ORIG_REF_NAME = "phase_gen_256" *) 
module design_1_phase_gen_256_0_0_phase_gen_256
   (SR,
    m_bram_int_wraddr,
    m_bram_int_rdaddr,
    m_bram_int_wrdata,
    m_axis_gain_tvalid,
    m_axis_gain_tdata,
    sync,
    m_bram_int_rddata,
    m_bram_rddata,
    sysClk,
    audioClk,
    nReset);
  output [0:0]SR;
  output [10:0]m_bram_int_wraddr;
  output [10:0]m_bram_int_rdaddr;
  output [23:0]m_bram_int_wrdata;
  output m_axis_gain_tvalid;
  output [9:0]m_axis_gain_tdata;
  output sync;
  input [23:0]m_bram_int_rddata;
  input [31:0]m_bram_rddata;
  input sysClk;
  input audioClk;
  input nReset;

  wire [0:0]SR;
  wire active;
  wire active_i_1_n_0;
  wire audioClk;
  wire \index[10]_i_1_n_0 ;
  wire \index[10]_i_4_n_0 ;
  wire [9:0]m_axis_gain_tdata;
  wire m_axis_gain_tvalid;
  wire [10:0]m_bram_int_rdaddr;
  wire [23:0]m_bram_int_rddata;
  wire [10:0]m_bram_int_wraddr;
  wire [23:0]m_bram_int_wrdata;
  wire [31:0]m_bram_rddata;
  wire nReset;
  wire [10:0]p_0_in;
  wire [23:0]phase0;
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
  wire phase2_carry__4_i_5_n_0;
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
  wire \phase[11]_i_10_n_0 ;
  wire \phase[11]_i_11_n_0 ;
  wire \phase[11]_i_1_n_0 ;
  wire \phase[11]_i_3_n_0 ;
  wire \phase[11]_i_4_n_0 ;
  wire \phase[11]_i_5_n_0 ;
  wire \phase[11]_i_6_n_0 ;
  wire \phase[11]_i_8_n_0 ;
  wire \phase[11]_i_9_n_0 ;
  wire \phase[12]_i_1_n_0 ;
  wire \phase[13]_i_1_n_0 ;
  wire \phase[14]_i_1_n_0 ;
  wire \phase[15]_i_10_n_0 ;
  wire \phase[15]_i_11_n_0 ;
  wire \phase[15]_i_1_n_0 ;
  wire \phase[15]_i_3_n_0 ;
  wire \phase[15]_i_4_n_0 ;
  wire \phase[15]_i_5_n_0 ;
  wire \phase[15]_i_6_n_0 ;
  wire \phase[15]_i_8_n_0 ;
  wire \phase[15]_i_9_n_0 ;
  wire \phase[16]_i_1_n_0 ;
  wire \phase[17]_i_1_n_0 ;
  wire \phase[18]_i_1_n_0 ;
  wire \phase[19]_i_10_n_0 ;
  wire \phase[19]_i_11_n_0 ;
  wire \phase[19]_i_1_n_0 ;
  wire \phase[19]_i_3_n_0 ;
  wire \phase[19]_i_4_n_0 ;
  wire \phase[19]_i_5_n_0 ;
  wire \phase[19]_i_6_n_0 ;
  wire \phase[19]_i_8_n_0 ;
  wire \phase[19]_i_9_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[20]_i_1_n_0 ;
  wire \phase[21]_i_1_n_0 ;
  wire \phase[22]_i_1_n_0 ;
  wire \phase[23]_i_10_n_0 ;
  wire \phase[23]_i_11_n_0 ;
  wire \phase[23]_i_12_n_0 ;
  wire \phase[23]_i_13_n_0 ;
  wire \phase[23]_i_14_n_0 ;
  wire \phase[23]_i_15_n_0 ;
  wire \phase[23]_i_1_n_0 ;
  wire \phase[23]_i_3_n_0 ;
  wire \phase[23]_i_4_n_0 ;
  wire \phase[23]_i_6_n_0 ;
  wire \phase[23]_i_7_n_0 ;
  wire \phase[23]_i_9_n_0 ;
  wire \phase[2]_i_1_n_0 ;
  wire \phase[3]_i_1_n_0 ;
  wire \phase[3]_i_3_n_0 ;
  wire \phase[3]_i_4_n_0 ;
  wire \phase[3]_i_5_n_0 ;
  wire \phase[3]_i_6_n_0 ;
  wire \phase[4]_i_1_n_0 ;
  wire \phase[5]_i_1_n_0 ;
  wire \phase[6]_i_1_n_0 ;
  wire \phase[7]_i_10_n_0 ;
  wire \phase[7]_i_11_n_0 ;
  wire \phase[7]_i_12_n_0 ;
  wire \phase[7]_i_1_n_0 ;
  wire \phase[7]_i_3_n_0 ;
  wire \phase[7]_i_4_n_0 ;
  wire \phase[7]_i_5_n_0 ;
  wire \phase[7]_i_6_n_0 ;
  wire \phase[7]_i_8_n_0 ;
  wire \phase[7]_i_9_n_0 ;
  wire \phase[8]_i_1_n_0 ;
  wire \phase[9]_i_1_n_0 ;
  wire \phase_reg[11]_i_2_n_0 ;
  wire \phase_reg[11]_i_2_n_1 ;
  wire \phase_reg[11]_i_2_n_2 ;
  wire \phase_reg[11]_i_2_n_3 ;
  wire \phase_reg[11]_i_7_n_0 ;
  wire \phase_reg[11]_i_7_n_1 ;
  wire \phase_reg[11]_i_7_n_2 ;
  wire \phase_reg[11]_i_7_n_3 ;
  wire \phase_reg[11]_i_7_n_4 ;
  wire \phase_reg[11]_i_7_n_5 ;
  wire \phase_reg[11]_i_7_n_6 ;
  wire \phase_reg[11]_i_7_n_7 ;
  wire \phase_reg[15]_i_2_n_0 ;
  wire \phase_reg[15]_i_2_n_1 ;
  wire \phase_reg[15]_i_2_n_2 ;
  wire \phase_reg[15]_i_2_n_3 ;
  wire \phase_reg[15]_i_7_n_0 ;
  wire \phase_reg[15]_i_7_n_1 ;
  wire \phase_reg[15]_i_7_n_2 ;
  wire \phase_reg[15]_i_7_n_3 ;
  wire \phase_reg[15]_i_7_n_4 ;
  wire \phase_reg[15]_i_7_n_5 ;
  wire \phase_reg[15]_i_7_n_6 ;
  wire \phase_reg[15]_i_7_n_7 ;
  wire \phase_reg[19]_i_2_n_0 ;
  wire \phase_reg[19]_i_2_n_1 ;
  wire \phase_reg[19]_i_2_n_2 ;
  wire \phase_reg[19]_i_2_n_3 ;
  wire \phase_reg[19]_i_7_n_0 ;
  wire \phase_reg[19]_i_7_n_1 ;
  wire \phase_reg[19]_i_7_n_2 ;
  wire \phase_reg[19]_i_7_n_3 ;
  wire \phase_reg[19]_i_7_n_4 ;
  wire \phase_reg[19]_i_7_n_5 ;
  wire \phase_reg[19]_i_7_n_6 ;
  wire \phase_reg[19]_i_7_n_7 ;
  wire \phase_reg[23]_i_2_n_1 ;
  wire \phase_reg[23]_i_2_n_2 ;
  wire \phase_reg[23]_i_2_n_3 ;
  wire \phase_reg[23]_i_5_n_2 ;
  wire \phase_reg[23]_i_5_n_3 ;
  wire \phase_reg[23]_i_5_n_5 ;
  wire \phase_reg[23]_i_5_n_6 ;
  wire \phase_reg[23]_i_5_n_7 ;
  wire \phase_reg[23]_i_8_n_0 ;
  wire \phase_reg[23]_i_8_n_1 ;
  wire \phase_reg[23]_i_8_n_2 ;
  wire \phase_reg[23]_i_8_n_3 ;
  wire \phase_reg[23]_i_8_n_4 ;
  wire \phase_reg[23]_i_8_n_5 ;
  wire \phase_reg[23]_i_8_n_6 ;
  wire \phase_reg[23]_i_8_n_7 ;
  wire \phase_reg[3]_i_2_n_0 ;
  wire \phase_reg[3]_i_2_n_1 ;
  wire \phase_reg[3]_i_2_n_2 ;
  wire \phase_reg[3]_i_2_n_3 ;
  wire \phase_reg[7]_i_2_n_0 ;
  wire \phase_reg[7]_i_2_n_1 ;
  wire \phase_reg[7]_i_2_n_2 ;
  wire \phase_reg[7]_i_2_n_3 ;
  wire \phase_reg[7]_i_7_n_0 ;
  wire \phase_reg[7]_i_7_n_1 ;
  wire \phase_reg[7]_i_7_n_2 ;
  wire \phase_reg[7]_i_7_n_3 ;
  wire \phase_reg[7]_i_7_n_4 ;
  wire \phase_reg[7]_i_7_n_5 ;
  wire \phase_reg[7]_i_7_n_6 ;
  wire \phase_reg[7]_i_7_n_7 ;
  wire [1:0]preAudioClk;
  wire sel;
  wire sync;
  wire sync_INST_0_i_1_n_0;
  wire sysClk;
  wire [3:2]NLW_phase1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_phase1_carry_O_UNCONNECTED;
  wire [3:3]NLW_phase2_carry__4_CO_UNCONNECTED;
  wire [3:3]\NLW_phase_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_phase_reg[23]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_phase_reg[23]_i_5_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    active_i_1
       (.I0(sel),
        .I1(preAudioClk[1]),
        .I2(preAudioClk[0]),
        .O(active_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    active_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(active_i_1_n_0),
        .Q(active),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[0] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[22]),
        .Q(m_axis_gain_tdata[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[1] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[23]),
        .Q(m_axis_gain_tdata[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[2] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[24]),
        .Q(m_axis_gain_tdata[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[3] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[25]),
        .Q(m_axis_gain_tdata[3]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[4] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[26]),
        .Q(m_axis_gain_tdata[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[5] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[27]),
        .Q(m_axis_gain_tdata[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[6] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[28]),
        .Q(m_axis_gain_tdata[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[7] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[29]),
        .Q(m_axis_gain_tdata[7]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[8] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[30]),
        .Q(m_axis_gain_tdata[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gain_reg[9] 
       (.C(sysClk),
        .CE(active),
        .D(m_bram_rddata[31]),
        .Q(m_axis_gain_tdata[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
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
       (.I0(m_bram_int_rdaddr[9]),
        .I1(m_bram_int_rdaddr[7]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(m_bram_int_rdaddr[6]),
        .I4(m_bram_int_rdaddr[8]),
        .I5(m_bram_int_rdaddr[10]),
        .O(sel));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \index[10]_i_3 
       (.I0(m_bram_int_rdaddr[9]),
        .I1(m_bram_int_rdaddr[7]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(m_bram_int_rdaddr[6]),
        .I4(m_bram_int_rdaddr[8]),
        .I5(m_bram_int_rdaddr[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \index[10]_i_4 
       (.I0(m_bram_int_rdaddr[4]),
        .I1(m_bram_int_rdaddr[2]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[3]),
        .I5(m_bram_int_rdaddr[5]),
        .O(\index[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(m_bram_int_rdaddr[0]),
        .I1(m_bram_int_rdaddr[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(m_bram_int_rdaddr[1]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(m_bram_int_rdaddr[2]),
        .I1(m_bram_int_rdaddr[0]),
        .I2(m_bram_int_rdaddr[1]),
        .I3(m_bram_int_rdaddr[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(m_bram_int_rdaddr[3]),
        .I1(m_bram_int_rdaddr[1]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[2]),
        .I4(m_bram_int_rdaddr[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(m_bram_int_rdaddr[4]),
        .I1(m_bram_int_rdaddr[2]),
        .I2(m_bram_int_rdaddr[0]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[3]),
        .I5(m_bram_int_rdaddr[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \index[6]_i_1 
       (.I0(\index[10]_i_4_n_0 ),
        .I1(m_bram_int_rdaddr[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \index[7]_i_1 
       (.I0(m_bram_int_rdaddr[6]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(m_bram_int_rdaddr[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \index[8]_i_1 
       (.I0(m_bram_int_rdaddr[7]),
        .I1(\index[10]_i_4_n_0 ),
        .I2(m_bram_int_rdaddr[6]),
        .I3(m_bram_int_rdaddr[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \index[9]_i_1 
       (.I0(m_bram_int_rdaddr[8]),
        .I1(m_bram_int_rdaddr[6]),
        .I2(\index[10]_i_4_n_0 ),
        .I3(m_bram_int_rdaddr[7]),
        .I4(m_bram_int_rdaddr[9]),
        .O(p_0_in[9]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[0] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(m_bram_int_rdaddr[0]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[10] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[10]),
        .Q(m_bram_int_rdaddr[10]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[1] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(m_bram_int_rdaddr[1]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[2] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(m_bram_int_rdaddr[2]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[3] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(m_bram_int_rdaddr[3]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[4] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(m_bram_int_rdaddr[4]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[5] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(m_bram_int_rdaddr[5]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[6] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(m_bram_int_rdaddr[6]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[7] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(m_bram_int_rdaddr[7]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[8] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[8]),
        .Q(m_bram_int_rdaddr[8]),
        .R(\index[10]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \index_reg[9] 
       (.C(sysClk),
        .CE(sel),
        .D(p_0_in[9]),
        .Q(m_bram_int_rdaddr[9]),
        .R(\index[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    m_bram_int_rst_INST_0
       (.I0(nReset),
        .O(SR));
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
        .I1(m_bram_rddata[7]),
        .O(phase2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_2
       (.I0(m_bram_int_rddata[6]),
        .I1(m_bram_rddata[6]),
        .O(phase2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_3
       (.I0(m_bram_int_rddata[5]),
        .I1(m_bram_rddata[5]),
        .O(phase2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__0_i_4
       (.I0(m_bram_int_rddata[4]),
        .I1(m_bram_rddata[4]),
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
        .I1(m_bram_rddata[11]),
        .O(phase2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_2
       (.I0(m_bram_int_rddata[10]),
        .I1(m_bram_rddata[10]),
        .O(phase2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_3
       (.I0(m_bram_int_rddata[9]),
        .I1(m_bram_rddata[9]),
        .O(phase2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__1_i_4
       (.I0(m_bram_int_rddata[8]),
        .I1(m_bram_rddata[8]),
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
        .I1(m_bram_rddata[15]),
        .O(phase2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_2
       (.I0(m_bram_int_rddata[14]),
        .I1(m_bram_rddata[14]),
        .O(phase2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_3
       (.I0(m_bram_int_rddata[13]),
        .I1(m_bram_rddata[13]),
        .O(phase2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__2_i_4
       (.I0(m_bram_int_rddata[12]),
        .I1(m_bram_rddata[12]),
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
        .I1(m_bram_rddata[19]),
        .O(phase2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_2
       (.I0(m_bram_int_rddata[18]),
        .I1(m_bram_rddata[18]),
        .O(phase2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_3
       (.I0(m_bram_int_rddata[17]),
        .I1(m_bram_rddata[17]),
        .O(phase2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__3_i_4
       (.I0(m_bram_int_rddata[16]),
        .I1(m_bram_rddata[16]),
        .O(phase2_carry__3_i_4_n_0));
  CARRY4 phase2_carry__4
       (.CI(phase2_carry__3_n_0),
        .CO({NLW_phase2_carry__4_CO_UNCONNECTED[3],phase2_carry__4_n_1,phase2_carry__4_n_2,phase2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,phase2_carry__4_i_1_n_0,m_bram_rddata[21],m_bram_int_rddata[20]}),
        .O(phase2[23:20]),
        .S({phase2_carry__4_i_2_n_0,phase2_carry__4_i_3_n_0,phase2_carry__4_i_4_n_0,phase2_carry__4_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    phase2_carry__4_i_1
       (.I0(m_bram_rddata[21]),
        .O(phase2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    phase2_carry__4_i_2
       (.I0(m_bram_int_rddata[22]),
        .I1(m_bram_int_rddata[23]),
        .O(phase2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_3
       (.I0(m_bram_rddata[21]),
        .I1(m_bram_int_rddata[22]),
        .O(phase2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_4
       (.I0(m_bram_rddata[21]),
        .I1(m_bram_int_rddata[21]),
        .O(phase2_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry__4_i_5
       (.I0(m_bram_int_rddata[20]),
        .I1(m_bram_rddata[20]),
        .O(phase2_carry__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_1
       (.I0(m_bram_int_rddata[3]),
        .I1(m_bram_rddata[3]),
        .O(phase2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_2
       (.I0(m_bram_int_rddata[2]),
        .I1(m_bram_rddata[2]),
        .O(phase2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_3
       (.I0(m_bram_int_rddata[1]),
        .I1(m_bram_rddata[1]),
        .O(phase2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    phase2_carry_i_4
       (.I0(m_bram_int_rddata[0]),
        .I1(m_bram_rddata[0]),
        .O(phase2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[0]_i_1 
       (.I0(phase2[0]),
        .I1(phase0[0]),
        .I2(phase1),
        .O(\phase[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[10]_i_1 
       (.I0(phase2[10]),
        .I1(phase0[10]),
        .I2(phase1),
        .O(\phase[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[11]_i_1 
       (.I0(phase2[11]),
        .I1(phase0[11]),
        .I2(phase1),
        .O(\phase[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[11]_i_10 
       (.I0(m_bram_int_rddata[6]),
        .O(\phase[11]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[11]_i_11 
       (.I0(m_bram_int_rddata[5]),
        .O(\phase[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[11]_i_3 
       (.I0(m_bram_rddata[11]),
        .I1(\phase_reg[15]_i_7_n_5 ),
        .O(\phase[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[11]_i_4 
       (.I0(m_bram_rddata[10]),
        .I1(\phase_reg[15]_i_7_n_6 ),
        .O(\phase[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[11]_i_5 
       (.I0(m_bram_rddata[9]),
        .I1(\phase_reg[15]_i_7_n_7 ),
        .O(\phase[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[11]_i_6 
       (.I0(m_bram_rddata[8]),
        .I1(\phase_reg[11]_i_7_n_4 ),
        .O(\phase[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[11]_i_8 
       (.I0(m_bram_int_rddata[8]),
        .O(\phase[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[11]_i_9 
       (.I0(m_bram_int_rddata[7]),
        .O(\phase[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[12]_i_1 
       (.I0(phase2[12]),
        .I1(phase0[12]),
        .I2(phase1),
        .O(\phase[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[13]_i_1 
       (.I0(phase2[13]),
        .I1(phase0[13]),
        .I2(phase1),
        .O(\phase[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[14]_i_1 
       (.I0(phase2[14]),
        .I1(phase0[14]),
        .I2(phase1),
        .O(\phase[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[15]_i_1 
       (.I0(phase2[15]),
        .I1(phase0[15]),
        .I2(phase1),
        .O(\phase[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[15]_i_10 
       (.I0(m_bram_int_rddata[10]),
        .O(\phase[15]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[15]_i_11 
       (.I0(m_bram_int_rddata[9]),
        .O(\phase[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[15]_i_3 
       (.I0(m_bram_rddata[15]),
        .I1(\phase_reg[19]_i_7_n_5 ),
        .O(\phase[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[15]_i_4 
       (.I0(m_bram_rddata[14]),
        .I1(\phase_reg[19]_i_7_n_6 ),
        .O(\phase[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[15]_i_5 
       (.I0(m_bram_rddata[13]),
        .I1(\phase_reg[19]_i_7_n_7 ),
        .O(\phase[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[15]_i_6 
       (.I0(m_bram_rddata[12]),
        .I1(\phase_reg[15]_i_7_n_4 ),
        .O(\phase[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[15]_i_8 
       (.I0(m_bram_int_rddata[12]),
        .O(\phase[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[15]_i_9 
       (.I0(m_bram_int_rddata[11]),
        .O(\phase[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[16]_i_1 
       (.I0(phase2[16]),
        .I1(phase0[16]),
        .I2(phase1),
        .O(\phase[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[17]_i_1 
       (.I0(phase2[17]),
        .I1(phase0[17]),
        .I2(phase1),
        .O(\phase[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[18]_i_1 
       (.I0(phase2[18]),
        .I1(phase0[18]),
        .I2(phase1),
        .O(\phase[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[19]_i_1 
       (.I0(phase2[19]),
        .I1(phase0[19]),
        .I2(phase1),
        .O(\phase[19]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[19]_i_10 
       (.I0(m_bram_int_rddata[14]),
        .O(\phase[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[19]_i_11 
       (.I0(m_bram_int_rddata[13]),
        .O(\phase[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[19]_i_3 
       (.I0(m_bram_rddata[19]),
        .I1(\phase_reg[23]_i_8_n_5 ),
        .O(\phase[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[19]_i_4 
       (.I0(m_bram_rddata[18]),
        .I1(\phase_reg[23]_i_8_n_6 ),
        .O(\phase[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[19]_i_5 
       (.I0(m_bram_rddata[17]),
        .I1(\phase_reg[23]_i_8_n_7 ),
        .O(\phase[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[19]_i_6 
       (.I0(m_bram_rddata[16]),
        .I1(\phase_reg[19]_i_7_n_4 ),
        .O(\phase[19]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[19]_i_8 
       (.I0(m_bram_int_rddata[16]),
        .O(\phase[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[19]_i_9 
       (.I0(m_bram_int_rddata[15]),
        .O(\phase[19]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[1]_i_1 
       (.I0(phase2[1]),
        .I1(phase0[1]),
        .I2(phase1),
        .O(\phase[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[20]_i_1 
       (.I0(phase2[20]),
        .I1(phase0[20]),
        .I2(phase1),
        .O(\phase[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[21]_i_1 
       (.I0(phase2[21]),
        .I1(phase0[21]),
        .I2(phase1),
        .O(\phase[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[22]_i_1 
       (.I0(phase2[22]),
        .I1(phase0[22]),
        .I2(phase1),
        .O(\phase[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[23]_i_1 
       (.I0(phase2[23]),
        .I1(phase0[23]),
        .I2(phase1),
        .O(\phase[23]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_10 
       (.I0(m_bram_int_rddata[23]),
        .O(\phase[23]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_11 
       (.I0(m_bram_int_rddata[22]),
        .O(\phase[23]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_12 
       (.I0(m_bram_int_rddata[20]),
        .O(\phase[23]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_13 
       (.I0(m_bram_int_rddata[19]),
        .O(\phase[23]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_14 
       (.I0(m_bram_int_rddata[18]),
        .O(\phase[23]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_15 
       (.I0(m_bram_int_rddata[17]),
        .O(\phase[23]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_3 
       (.I0(\phase_reg[23]_i_5_n_6 ),
        .O(\phase[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_4 
       (.I0(\phase_reg[23]_i_5_n_7 ),
        .O(\phase[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \phase[23]_i_6 
       (.I0(\phase_reg[23]_i_5_n_7 ),
        .I1(m_bram_rddata[21]),
        .O(\phase[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[23]_i_7 
       (.I0(m_bram_rddata[20]),
        .I1(\phase_reg[23]_i_8_n_4 ),
        .O(\phase[23]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[23]_i_9 
       (.I0(m_bram_int_rddata[21]),
        .O(\phase[23]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[2]_i_1 
       (.I0(phase2[2]),
        .I1(phase0[2]),
        .I2(phase1),
        .O(\phase[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[3]_i_1 
       (.I0(phase2[3]),
        .I1(phase0[3]),
        .I2(phase1),
        .O(\phase[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[3]_i_3 
       (.I0(m_bram_rddata[3]),
        .I1(\phase_reg[7]_i_7_n_5 ),
        .O(\phase[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[3]_i_4 
       (.I0(m_bram_rddata[2]),
        .I1(\phase_reg[7]_i_7_n_6 ),
        .O(\phase[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[3]_i_5 
       (.I0(m_bram_rddata[1]),
        .I1(\phase_reg[7]_i_7_n_7 ),
        .O(\phase[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[3]_i_6 
       (.I0(m_bram_rddata[0]),
        .I1(m_bram_int_rddata[0]),
        .O(\phase[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[4]_i_1 
       (.I0(phase2[4]),
        .I1(phase0[4]),
        .I2(phase1),
        .O(\phase[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[5]_i_1 
       (.I0(phase2[5]),
        .I1(phase0[5]),
        .I2(phase1),
        .O(\phase[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[6]_i_1 
       (.I0(phase2[6]),
        .I1(phase0[6]),
        .I2(phase1),
        .O(\phase[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[7]_i_1 
       (.I0(phase2[7]),
        .I1(phase0[7]),
        .I2(phase1),
        .O(\phase[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[7]_i_10 
       (.I0(m_bram_int_rddata[3]),
        .O(\phase[7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[7]_i_11 
       (.I0(m_bram_int_rddata[2]),
        .O(\phase[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[7]_i_12 
       (.I0(m_bram_int_rddata[1]),
        .O(\phase[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[7]_i_3 
       (.I0(m_bram_rddata[7]),
        .I1(\phase_reg[11]_i_7_n_5 ),
        .O(\phase[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[7]_i_4 
       (.I0(m_bram_rddata[6]),
        .I1(\phase_reg[11]_i_7_n_6 ),
        .O(\phase[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[7]_i_5 
       (.I0(m_bram_rddata[5]),
        .I1(\phase_reg[11]_i_7_n_7 ),
        .O(\phase[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \phase[7]_i_6 
       (.I0(m_bram_rddata[4]),
        .I1(\phase_reg[7]_i_7_n_4 ),
        .O(\phase[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[7]_i_8 
       (.I0(m_bram_int_rddata[0]),
        .O(\phase[7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase[7]_i_9 
       (.I0(m_bram_int_rddata[4]),
        .O(\phase[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[8]_i_1 
       (.I0(phase2[8]),
        .I1(phase0[8]),
        .I2(phase1),
        .O(\phase[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \phase[9]_i_1 
       (.I0(phase2[9]),
        .I1(phase0[9]),
        .I2(phase1),
        .O(\phase[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    phase_gain_valid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(active),
        .Q(m_axis_gain_tvalid),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[0] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[0]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[10] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[10]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[10]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[11] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[11]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[11]),
        .R(SR));
  CARRY4 \phase_reg[11]_i_2 
       (.CI(\phase_reg[7]_i_2_n_0 ),
        .CO({\phase_reg[11]_i_2_n_0 ,\phase_reg[11]_i_2_n_1 ,\phase_reg[11]_i_2_n_2 ,\phase_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_rddata[11:8]),
        .O(phase0[11:8]),
        .S({\phase[11]_i_3_n_0 ,\phase[11]_i_4_n_0 ,\phase[11]_i_5_n_0 ,\phase[11]_i_6_n_0 }));
  CARRY4 \phase_reg[11]_i_7 
       (.CI(\phase_reg[7]_i_7_n_0 ),
        .CO({\phase_reg[11]_i_7_n_0 ,\phase_reg[11]_i_7_n_1 ,\phase_reg[11]_i_7_n_2 ,\phase_reg[11]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[11]_i_7_n_4 ,\phase_reg[11]_i_7_n_5 ,\phase_reg[11]_i_7_n_6 ,\phase_reg[11]_i_7_n_7 }),
        .S({\phase[11]_i_8_n_0 ,\phase[11]_i_9_n_0 ,\phase[11]_i_10_n_0 ,\phase[11]_i_11_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[12] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[12]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[12]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[13] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[13]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[13]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[14] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[14]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[14]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[15] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[15]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[15]),
        .R(SR));
  CARRY4 \phase_reg[15]_i_2 
       (.CI(\phase_reg[11]_i_2_n_0 ),
        .CO({\phase_reg[15]_i_2_n_0 ,\phase_reg[15]_i_2_n_1 ,\phase_reg[15]_i_2_n_2 ,\phase_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_rddata[15:12]),
        .O(phase0[15:12]),
        .S({\phase[15]_i_3_n_0 ,\phase[15]_i_4_n_0 ,\phase[15]_i_5_n_0 ,\phase[15]_i_6_n_0 }));
  CARRY4 \phase_reg[15]_i_7 
       (.CI(\phase_reg[11]_i_7_n_0 ),
        .CO({\phase_reg[15]_i_7_n_0 ,\phase_reg[15]_i_7_n_1 ,\phase_reg[15]_i_7_n_2 ,\phase_reg[15]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[15]_i_7_n_4 ,\phase_reg[15]_i_7_n_5 ,\phase_reg[15]_i_7_n_6 ,\phase_reg[15]_i_7_n_7 }),
        .S({\phase[15]_i_8_n_0 ,\phase[15]_i_9_n_0 ,\phase[15]_i_10_n_0 ,\phase[15]_i_11_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[16] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[16]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[16]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[17] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[17]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[17]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[18] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[18]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[18]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[19] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[19]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[19]),
        .R(SR));
  CARRY4 \phase_reg[19]_i_2 
       (.CI(\phase_reg[15]_i_2_n_0 ),
        .CO({\phase_reg[19]_i_2_n_0 ,\phase_reg[19]_i_2_n_1 ,\phase_reg[19]_i_2_n_2 ,\phase_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_rddata[19:16]),
        .O(phase0[19:16]),
        .S({\phase[19]_i_3_n_0 ,\phase[19]_i_4_n_0 ,\phase[19]_i_5_n_0 ,\phase[19]_i_6_n_0 }));
  CARRY4 \phase_reg[19]_i_7 
       (.CI(\phase_reg[15]_i_7_n_0 ),
        .CO({\phase_reg[19]_i_7_n_0 ,\phase_reg[19]_i_7_n_1 ,\phase_reg[19]_i_7_n_2 ,\phase_reg[19]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[19]_i_7_n_4 ,\phase_reg[19]_i_7_n_5 ,\phase_reg[19]_i_7_n_6 ,\phase_reg[19]_i_7_n_7 }),
        .S({\phase[19]_i_8_n_0 ,\phase[19]_i_9_n_0 ,\phase[19]_i_10_n_0 ,\phase[19]_i_11_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[1] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[1]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[20] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[20]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[20]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[21] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[21]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[21]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[22] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[22]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[22]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[23] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[23]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[23]),
        .R(SR));
  CARRY4 \phase_reg[23]_i_2 
       (.CI(\phase_reg[19]_i_2_n_0 ),
        .CO({\NLW_phase_reg[23]_i_2_CO_UNCONNECTED [3],\phase_reg[23]_i_2_n_1 ,\phase_reg[23]_i_2_n_2 ,\phase_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\phase[23]_i_3_n_0 ,\phase[23]_i_4_n_0 ,m_bram_rddata[20]}),
        .O(phase0[23:20]),
        .S({\phase_reg[23]_i_5_n_5 ,\phase_reg[23]_i_5_n_6 ,\phase[23]_i_6_n_0 ,\phase[23]_i_7_n_0 }));
  CARRY4 \phase_reg[23]_i_5 
       (.CI(\phase_reg[23]_i_8_n_0 ),
        .CO({\NLW_phase_reg[23]_i_5_CO_UNCONNECTED [3:2],\phase_reg[23]_i_5_n_2 ,\phase_reg[23]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\phase[23]_i_9_n_0 }),
        .O({\NLW_phase_reg[23]_i_5_O_UNCONNECTED [3],\phase_reg[23]_i_5_n_5 ,\phase_reg[23]_i_5_n_6 ,\phase_reg[23]_i_5_n_7 }),
        .S({1'b0,\phase[23]_i_10_n_0 ,\phase[23]_i_11_n_0 ,m_bram_int_rddata[21]}));
  CARRY4 \phase_reg[23]_i_8 
       (.CI(\phase_reg[19]_i_7_n_0 ),
        .CO({\phase_reg[23]_i_8_n_0 ,\phase_reg[23]_i_8_n_1 ,\phase_reg[23]_i_8_n_2 ,\phase_reg[23]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[23]_i_8_n_4 ,\phase_reg[23]_i_8_n_5 ,\phase_reg[23]_i_8_n_6 ,\phase_reg[23]_i_8_n_7 }),
        .S({\phase[23]_i_12_n_0 ,\phase[23]_i_13_n_0 ,\phase[23]_i_14_n_0 ,\phase[23]_i_15_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[2] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[2]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[3] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[3]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[3]),
        .R(SR));
  CARRY4 \phase_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\phase_reg[3]_i_2_n_0 ,\phase_reg[3]_i_2_n_1 ,\phase_reg[3]_i_2_n_2 ,\phase_reg[3]_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI(m_bram_rddata[3:0]),
        .O(phase0[3:0]),
        .S({\phase[3]_i_3_n_0 ,\phase[3]_i_4_n_0 ,\phase[3]_i_5_n_0 ,\phase[3]_i_6_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[4] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[4]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[5] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[5]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[6] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[6]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[7] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[7]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[7]),
        .R(SR));
  CARRY4 \phase_reg[7]_i_2 
       (.CI(\phase_reg[3]_i_2_n_0 ),
        .CO({\phase_reg[7]_i_2_n_0 ,\phase_reg[7]_i_2_n_1 ,\phase_reg[7]_i_2_n_2 ,\phase_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_bram_rddata[7:4]),
        .O(phase0[7:4]),
        .S({\phase[7]_i_3_n_0 ,\phase[7]_i_4_n_0 ,\phase[7]_i_5_n_0 ,\phase[7]_i_6_n_0 }));
  CARRY4 \phase_reg[7]_i_7 
       (.CI(1'b0),
        .CO({\phase_reg[7]_i_7_n_0 ,\phase_reg[7]_i_7_n_1 ,\phase_reg[7]_i_7_n_2 ,\phase_reg[7]_i_7_n_3 }),
        .CYINIT(\phase[7]_i_8_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phase_reg[7]_i_7_n_4 ,\phase_reg[7]_i_7_n_5 ,\phase_reg[7]_i_7_n_6 ,\phase_reg[7]_i_7_n_7 }),
        .S({\phase[7]_i_9_n_0 ,\phase[7]_i_10_n_0 ,\phase[7]_i_11_n_0 ,\phase[7]_i_12_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[8] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[8]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \phase_reg[9] 
       (.C(sysClk),
        .CE(active),
        .D(\phase[9]_i_1_n_0 ),
        .Q(m_bram_int_wrdata[9]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preAudioClk_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(audioClk),
        .Q(preAudioClk[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preAudioClk_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(preAudioClk[0]),
        .Q(preAudioClk[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[0] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[0]),
        .Q(m_bram_int_wraddr[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[10] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[10]),
        .Q(m_bram_int_wraddr[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[1] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[1]),
        .Q(m_bram_int_wraddr[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[2] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[2]),
        .Q(m_bram_int_wraddr[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[3] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[3]),
        .Q(m_bram_int_wraddr[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[4] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[4]),
        .Q(m_bram_int_wraddr[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[5] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[5]),
        .Q(m_bram_int_wraddr[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[6] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[6]),
        .Q(m_bram_int_wraddr[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[7] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[7]),
        .Q(m_bram_int_wraddr[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[8] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[8]),
        .Q(m_bram_int_wraddr[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preIndex_reg[9] 
       (.C(sysClk),
        .CE(nReset),
        .D(m_bram_int_rdaddr[9]),
        .Q(m_bram_int_wraddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    sync_INST_0
       (.I0(m_bram_int_rdaddr[3]),
        .I1(m_bram_int_rdaddr[4]),
        .I2(m_bram_int_rdaddr[2]),
        .I3(m_bram_int_rdaddr[1]),
        .I4(m_bram_int_rdaddr[0]),
        .I5(sync_INST_0_i_1_n_0),
        .O(sync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sync_INST_0_i_1
       (.I0(m_bram_int_rdaddr[7]),
        .I1(m_bram_int_rdaddr[8]),
        .I2(m_bram_int_rdaddr[5]),
        .I3(m_bram_int_rdaddr[6]),
        .I4(m_bram_int_rdaddr[10]),
        .I5(m_bram_int_rdaddr[9]),
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
