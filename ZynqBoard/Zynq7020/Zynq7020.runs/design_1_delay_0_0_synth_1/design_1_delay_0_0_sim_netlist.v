// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct  9 21:51:27 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_delay_0_0_sim_netlist.v
// Design      : design_1_delay_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay
   (m_axis_out_tdata,
    m_axis_out_tvalid,
    aclk,
    s_axis_in_tdata,
    aclk_0,
    s_axis_in_tvalid,
    nReset);
  output [13:0]m_axis_out_tdata;
  output m_axis_out_tvalid;
  input aclk;
  input [13:0]s_axis_in_tdata;
  input aclk_0;
  input s_axis_in_tvalid;
  input nReset;

  wire aclk;
  wire aclk_0;
  wire \dataBuffer_reg[1][0]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][10]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][11]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][12]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][13]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][1]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][2]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][3]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][4]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][5]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][6]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][7]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][8]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[1][9]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire \dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire dataBuffer_reg_gate__0_n_0;
  wire dataBuffer_reg_gate__10_n_0;
  wire dataBuffer_reg_gate__11_n_0;
  wire dataBuffer_reg_gate__12_n_0;
  wire dataBuffer_reg_gate__1_n_0;
  wire dataBuffer_reg_gate__2_n_0;
  wire dataBuffer_reg_gate__3_n_0;
  wire dataBuffer_reg_gate__4_n_0;
  wire dataBuffer_reg_gate__5_n_0;
  wire dataBuffer_reg_gate__6_n_0;
  wire dataBuffer_reg_gate__7_n_0;
  wire dataBuffer_reg_gate__8_n_0;
  wire dataBuffer_reg_gate__9_n_0;
  wire dataBuffer_reg_gate_n_0;
  wire dataBuffer_reg_r_0_n_0;
  wire dataBuffer_reg_r_10_n_0;
  wire dataBuffer_reg_r_11_n_0;
  wire dataBuffer_reg_r_12_n_0;
  wire dataBuffer_reg_r_13_n_0;
  wire dataBuffer_reg_r_14_n_0;
  wire dataBuffer_reg_r_15_n_0;
  wire dataBuffer_reg_r_16_n_0;
  wire dataBuffer_reg_r_17_n_0;
  wire dataBuffer_reg_r_18_n_0;
  wire dataBuffer_reg_r_19_n_0;
  wire dataBuffer_reg_r_1_n_0;
  wire dataBuffer_reg_r_20_n_0;
  wire dataBuffer_reg_r_21_n_0;
  wire dataBuffer_reg_r_22_n_0;
  wire dataBuffer_reg_r_2_n_0;
  wire dataBuffer_reg_r_3_n_0;
  wire dataBuffer_reg_r_4_n_0;
  wire dataBuffer_reg_r_5_n_0;
  wire dataBuffer_reg_r_6_n_0;
  wire dataBuffer_reg_r_7_n_0;
  wire dataBuffer_reg_r_8_n_0;
  wire dataBuffer_reg_r_9_n_0;
  wire dataBuffer_reg_r_n_0;
  wire [13:0]m_axis_out_tdata;
  wire m_axis_out_tvalid;
  wire nReset;
  wire p_0_in;
  wire [13:0]s_axis_in_tdata;
  wire s_axis_in_tvalid;
  wire \validBuffer_reg[1]_inst_dataBuffer_reg_r_22_n_0 ;
  wire \validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21_n_0 ;
  wire validBuffer_reg_gate_n_0;
  wire \NLW_dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;
  wire \NLW_validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \dataBuffer[0][13]_i_1 
       (.I0(nReset),
        .O(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__12_n_0),
        .Q(m_axis_out_tdata[0]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][10] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__2_n_0),
        .Q(m_axis_out_tdata[10]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][11] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__1_n_0),
        .Q(m_axis_out_tdata[11]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][12] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__0_n_0),
        .Q(m_axis_out_tdata[12]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][13] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate_n_0),
        .Q(m_axis_out_tdata[13]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__11_n_0),
        .Q(m_axis_out_tdata[1]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][2] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__10_n_0),
        .Q(m_axis_out_tdata[2]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][3] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__9_n_0),
        .Q(m_axis_out_tdata[3]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][4] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__8_n_0),
        .Q(m_axis_out_tdata[4]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][5] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__7_n_0),
        .Q(m_axis_out_tdata[5]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][6] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__6_n_0),
        .Q(m_axis_out_tdata[6]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][7] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__5_n_0),
        .Q(m_axis_out_tdata[7]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][8] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__4_n_0),
        .Q(m_axis_out_tdata[8]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0][9] 
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_gate__3_n_0),
        .Q(m_axis_out_tdata[9]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][0]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][0]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][10]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][10]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][11]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][11]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][12]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][12]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][13]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][13]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][1]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][1]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][2]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][2]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][3]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][3]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][4]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][4]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][5]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][5]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][6]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][6]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][7]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][7]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][8]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][8]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1][9]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\dataBuffer_reg[1][9]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[0]),
        .Q(\dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][0]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[10]),
        .Q(\dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][10]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[11]),
        .Q(\dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][11]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[12]),
        .Q(\dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][12]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[13]),
        .Q(\dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][13]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[1]),
        .Q(\dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][1]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[2]),
        .Q(\dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][2]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[3]),
        .Q(\dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][3]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[4]),
        .Q(\dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][4]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[5]),
        .Q(\dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][5]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[6]),
        .Q(\dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][6]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[7]),
        .Q(\dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][7]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[8]),
        .Q(\dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][8]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/dataBuffer_reg[2] " *) 
  (* srl_name = "\inst/dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tdata[9]),
        .Q(\dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_dataBuffer_reg[2][9]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate
       (.I0(\dataBuffer_reg[1][13]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__0
       (.I0(\dataBuffer_reg[1][12]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__1
       (.I0(\dataBuffer_reg[1][11]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__10
       (.I0(\dataBuffer_reg[1][2]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__11
       (.I0(\dataBuffer_reg[1][1]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__12
       (.I0(\dataBuffer_reg[1][0]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__2
       (.I0(\dataBuffer_reg[1][10]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__3
       (.I0(\dataBuffer_reg[1][9]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__4
       (.I0(\dataBuffer_reg[1][8]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__5
       (.I0(\dataBuffer_reg[1][7]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__6
       (.I0(\dataBuffer_reg[1][6]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__7
       (.I0(\dataBuffer_reg[1][5]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__8
       (.I0(\dataBuffer_reg[1][4]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dataBuffer_reg_gate__9
       (.I0(\dataBuffer_reg[1][3]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(dataBuffer_reg_gate__9_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(dataBuffer_reg_r_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_0
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_n_0),
        .Q(dataBuffer_reg_r_0_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_1
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_0_n_0),
        .Q(dataBuffer_reg_r_1_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_10
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_9_n_0),
        .Q(dataBuffer_reg_r_10_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_11
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_10_n_0),
        .Q(dataBuffer_reg_r_11_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_12
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_11_n_0),
        .Q(dataBuffer_reg_r_12_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_13
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_12_n_0),
        .Q(dataBuffer_reg_r_13_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_14
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_13_n_0),
        .Q(dataBuffer_reg_r_14_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_15
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_14_n_0),
        .Q(dataBuffer_reg_r_15_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_16
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_15_n_0),
        .Q(dataBuffer_reg_r_16_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_17
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_16_n_0),
        .Q(dataBuffer_reg_r_17_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_18
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_17_n_0),
        .Q(dataBuffer_reg_r_18_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_19
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_18_n_0),
        .Q(dataBuffer_reg_r_19_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_2
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_1_n_0),
        .Q(dataBuffer_reg_r_2_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_20
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_19_n_0),
        .Q(dataBuffer_reg_r_20_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_21
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_20_n_0),
        .Q(dataBuffer_reg_r_21_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_22
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_21_n_0),
        .Q(dataBuffer_reg_r_22_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_3
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_2_n_0),
        .Q(dataBuffer_reg_r_3_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_4
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_3_n_0),
        .Q(dataBuffer_reg_r_4_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_5
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_4_n_0),
        .Q(dataBuffer_reg_r_5_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_6
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_5_n_0),
        .Q(dataBuffer_reg_r_6_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_7
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_6_n_0),
        .Q(dataBuffer_reg_r_7_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_8
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_7_n_0),
        .Q(dataBuffer_reg_r_8_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    dataBuffer_reg_r_9
       (.C(aclk),
        .CE(1'b1),
        .D(dataBuffer_reg_r_8_n_0),
        .Q(dataBuffer_reg_r_9_n_0),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \validBuffer_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(validBuffer_reg_gate_n_0),
        .Q(m_axis_out_tvalid),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \validBuffer_reg[1]_inst_dataBuffer_reg_r_22 
       (.C(aclk),
        .CE(1'b1),
        .D(\validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q(\validBuffer_reg[1]_inst_dataBuffer_reg_r_22_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/validBuffer_reg " *) 
  (* srl_name = "\inst/validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21 
       (.A({1'b1,1'b0,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(aclk_0),
        .D(s_axis_in_tvalid),
        .Q(\validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21_n_0 ),
        .Q31(\NLW_validBuffer_reg[2]_srl23___inst_dataBuffer_reg_r_21_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h8)) 
    validBuffer_reg_gate
       (.I0(\validBuffer_reg[1]_inst_dataBuffer_reg_r_22_n_0 ),
        .I1(dataBuffer_reg_r_22_n_0),
        .O(validBuffer_reg_gate_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_delay_0_0,delay,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "delay,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    aclk,
    s_axis_in_tdata,
    s_axis_in_tvalid,
    m_axis_out_tdata,
    m_axis_out_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_out:s_axis_in, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_in TDATA" *) input [13:0]s_axis_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_in TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input s_axis_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_out TDATA" *) output [13:0]m_axis_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_out TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output m_axis_out_tvalid;

  wire aclk;
  wire [13:0]m_axis_out_tdata;
  wire m_axis_out_tvalid;
  wire nReset;
  wire [13:0]s_axis_in_tdata;
  wire s_axis_in_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_delay inst
       (.aclk(aclk),
        .aclk_0(aclk),
        .m_axis_out_tdata(m_axis_out_tdata),
        .m_axis_out_tvalid(m_axis_out_tvalid),
        .nReset(nReset),
        .s_axis_in_tdata(s_axis_in_tdata),
        .s_axis_in_tvalid(s_axis_in_tvalid));
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
