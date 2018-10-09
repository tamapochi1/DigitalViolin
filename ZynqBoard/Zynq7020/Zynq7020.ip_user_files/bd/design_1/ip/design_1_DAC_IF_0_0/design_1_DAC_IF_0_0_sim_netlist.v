// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct  5 23:45:46 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_DAC_IF_0_0/design_1_DAC_IF_0_0_sim_netlist.v
// Design      : design_1_DAC_IF_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DAC_IF_0_0,DAC_IF,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DAC_IF,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_DAC_IF_0_0
   (nReset,
    dataL,
    dataR,
    clk_256fs,
    DAC_MCLK,
    DAC_BICK,
    DAC_LRCK,
    DAC_SDT);
  input nReset;
  input [15:0]dataL;
  input [15:0]dataR;
  input clk_256fs;
  output DAC_MCLK;
  output DAC_BICK;
  output DAC_LRCK;
  output DAC_SDT;

  wire DAC_BICK;
  wire DAC_LRCK;
  wire DAC_MCLK;
  wire DAC_SDT;
  wire clk_256fs;
  wire [15:0]dataL;
  wire [15:0]dataR;
  wire nReset;

  LUT2 #(
    .INIT(4'h8)) 
    DAC_MCLK_INST_0
       (.I0(clk_256fs),
        .I1(nReset),
        .O(DAC_MCLK));
  design_1_DAC_IF_0_0_DAC_IF inst
       (.D({dataL,dataR}),
        .DAC_BICK(DAC_BICK),
        .DAC_LRCK(DAC_LRCK),
        .DAC_SDT(DAC_SDT),
        .clk_256fs(clk_256fs),
        .nReset(nReset));
endmodule

(* ORIG_REF_NAME = "DAC_IF" *) 
module design_1_DAC_IF_0_0_DAC_IF
   (DAC_SDT,
    DAC_LRCK,
    DAC_BICK,
    clk_256fs,
    nReset,
    D);
  output DAC_SDT;
  output DAC_LRCK;
  output DAC_BICK;
  input clk_256fs;
  input nReset;
  input [31:0]D;

  wire [31:0]D;
  wire DAC_BICK;
  wire DAC_LRCK;
  wire DAC_SDT;
  wire SDT_i_10_n_0;
  wire SDT_i_11_n_0;
  wire SDT_i_12_n_0;
  wire SDT_i_13_n_0;
  wire SDT_i_14_n_0;
  wire SDT_i_15_n_0;
  wire SDT_i_1_n_0;
  wire SDT_i_8_n_0;
  wire SDT_i_9_n_0;
  wire SDT_reg_i_2_n_0;
  wire SDT_reg_i_3_n_0;
  wire SDT_reg_i_4_n_0;
  wire SDT_reg_i_5_n_0;
  wire SDT_reg_i_6_n_0;
  wire SDT_reg_i_7_n_0;
  wire bitCounter;
  wire [0:0]bitCounter0;
  wire \bitCounter[1]_i_1_n_0 ;
  wire \bitCounter[2]_i_1_n_0 ;
  wire \bitCounter[3]_i_1_n_0 ;
  wire \bitCounter[4]_i_1_n_0 ;
  wire \bitCounter[4]_i_2_n_0 ;
  wire \bitCounter[4]_i_3_n_0 ;
  wire \bitCounter[4]_i_4_n_0 ;
  wire [4:0]bitCounter_reg__0;
  wire clk_256fs;
  wire [31:0]dataBuf;
  wire nReset;
  wire p_0_in;
  wire [1:0]prescalerBICK;
  wire \prescalerBICK[0]_i_1_n_0 ;
  wire \prescalerBICK[1]_i_1_n_0 ;
  wire \prescalerBICK[2]_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    DAC_LRCK_INST_0
       (.I0(bitCounter_reg__0[4]),
        .O(DAC_LRCK));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    SDT_i_1
       (.I0(DAC_SDT),
        .I1(\bitCounter[4]_i_2_n_0 ),
        .I2(SDT_reg_i_2_n_0),
        .I3(bitCounter_reg__0[4]),
        .I4(SDT_reg_i_3_n_0),
        .I5(nReset),
        .O(SDT_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_10
       (.I0(dataBuf[11]),
        .I1(dataBuf[10]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[9]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[8]),
        .O(SDT_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_11
       (.I0(dataBuf[15]),
        .I1(dataBuf[14]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[13]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[12]),
        .O(SDT_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_12
       (.I0(dataBuf[19]),
        .I1(dataBuf[18]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[17]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[16]),
        .O(SDT_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_13
       (.I0(dataBuf[23]),
        .I1(dataBuf[22]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[21]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[20]),
        .O(SDT_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_14
       (.I0(dataBuf[27]),
        .I1(dataBuf[26]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[25]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[24]),
        .O(SDT_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_15
       (.I0(dataBuf[31]),
        .I1(dataBuf[30]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[29]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[28]),
        .O(SDT_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_8
       (.I0(dataBuf[3]),
        .I1(dataBuf[2]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[1]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[0]),
        .O(SDT_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SDT_i_9
       (.I0(dataBuf[7]),
        .I1(dataBuf[6]),
        .I2(bitCounter_reg__0[1]),
        .I3(dataBuf[5]),
        .I4(bitCounter_reg__0[0]),
        .I5(dataBuf[4]),
        .O(SDT_i_9_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    SDT_reg
       (.C(clk_256fs),
        .CE(1'b1),
        .D(SDT_i_1_n_0),
        .Q(DAC_SDT),
        .R(1'b0));
  MUXF8 SDT_reg_i_2
       (.I0(SDT_reg_i_4_n_0),
        .I1(SDT_reg_i_5_n_0),
        .O(SDT_reg_i_2_n_0),
        .S(bitCounter_reg__0[3]));
  MUXF8 SDT_reg_i_3
       (.I0(SDT_reg_i_6_n_0),
        .I1(SDT_reg_i_7_n_0),
        .O(SDT_reg_i_3_n_0),
        .S(bitCounter_reg__0[3]));
  MUXF7 SDT_reg_i_4
       (.I0(SDT_i_8_n_0),
        .I1(SDT_i_9_n_0),
        .O(SDT_reg_i_4_n_0),
        .S(bitCounter_reg__0[2]));
  MUXF7 SDT_reg_i_5
       (.I0(SDT_i_10_n_0),
        .I1(SDT_i_11_n_0),
        .O(SDT_reg_i_5_n_0),
        .S(bitCounter_reg__0[2]));
  MUXF7 SDT_reg_i_6
       (.I0(SDT_i_12_n_0),
        .I1(SDT_i_13_n_0),
        .O(SDT_reg_i_6_n_0),
        .S(bitCounter_reg__0[2]));
  MUXF7 SDT_reg_i_7
       (.I0(SDT_i_14_n_0),
        .I1(SDT_i_15_n_0),
        .O(SDT_reg_i_7_n_0),
        .S(bitCounter_reg__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bitCounter[0]_i_1 
       (.I0(bitCounter_reg__0[0]),
        .O(bitCounter0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bitCounter[1]_i_1 
       (.I0(bitCounter_reg__0[0]),
        .I1(bitCounter_reg__0[1]),
        .O(\bitCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \bitCounter[2]_i_1 
       (.I0(bitCounter_reg__0[1]),
        .I1(bitCounter_reg__0[0]),
        .I2(bitCounter_reg__0[2]),
        .O(\bitCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \bitCounter[3]_i_1 
       (.I0(bitCounter_reg__0[2]),
        .I1(bitCounter_reg__0[0]),
        .I2(bitCounter_reg__0[1]),
        .I3(bitCounter_reg__0[3]),
        .O(\bitCounter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \bitCounter[4]_i_1 
       (.I0(\bitCounter[4]_i_4_n_0 ),
        .I1(prescalerBICK[1]),
        .I2(prescalerBICK[0]),
        .I3(DAC_BICK),
        .I4(nReset),
        .O(\bitCounter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \bitCounter[4]_i_2 
       (.I0(prescalerBICK[1]),
        .I1(prescalerBICK[0]),
        .I2(DAC_BICK),
        .O(\bitCounter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \bitCounter[4]_i_3 
       (.I0(bitCounter_reg__0[3]),
        .I1(bitCounter_reg__0[1]),
        .I2(bitCounter_reg__0[0]),
        .I3(bitCounter_reg__0[2]),
        .I4(bitCounter_reg__0[4]),
        .O(\bitCounter[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bitCounter[4]_i_4 
       (.I0(bitCounter_reg__0[3]),
        .I1(bitCounter_reg__0[1]),
        .I2(bitCounter_reg__0[0]),
        .I3(bitCounter_reg__0[4]),
        .I4(bitCounter_reg__0[2]),
        .O(\bitCounter[4]_i_4_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[0] 
       (.C(clk_256fs),
        .CE(\bitCounter[4]_i_2_n_0 ),
        .D(bitCounter0),
        .Q(bitCounter_reg__0[0]),
        .S(\bitCounter[4]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[1] 
       (.C(clk_256fs),
        .CE(\bitCounter[4]_i_2_n_0 ),
        .D(\bitCounter[1]_i_1_n_0 ),
        .Q(bitCounter_reg__0[1]),
        .S(\bitCounter[4]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[2] 
       (.C(clk_256fs),
        .CE(\bitCounter[4]_i_2_n_0 ),
        .D(\bitCounter[2]_i_1_n_0 ),
        .Q(bitCounter_reg__0[2]),
        .S(\bitCounter[4]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[3] 
       (.C(clk_256fs),
        .CE(\bitCounter[4]_i_2_n_0 ),
        .D(\bitCounter[3]_i_1_n_0 ),
        .Q(bitCounter_reg__0[3]),
        .S(\bitCounter[4]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[4] 
       (.C(clk_256fs),
        .CE(\bitCounter[4]_i_2_n_0 ),
        .D(\bitCounter[4]_i_3_n_0 ),
        .Q(bitCounter_reg__0[4]),
        .S(\bitCounter[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dataBuf[31]_i_1 
       (.I0(nReset),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \dataBuf[31]_i_2 
       (.I0(\bitCounter[4]_i_2_n_0 ),
        .I1(bitCounter_reg__0[2]),
        .I2(bitCounter_reg__0[4]),
        .I3(bitCounter_reg__0[0]),
        .I4(bitCounter_reg__0[1]),
        .I5(bitCounter_reg__0[3]),
        .O(bitCounter));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[0] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[0]),
        .Q(dataBuf[0]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[10] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[10]),
        .Q(dataBuf[10]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[11] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[11]),
        .Q(dataBuf[11]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[12] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[12]),
        .Q(dataBuf[12]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[13] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[13]),
        .Q(dataBuf[13]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[14] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[14]),
        .Q(dataBuf[14]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[15] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[15]),
        .Q(dataBuf[15]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[16] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[16]),
        .Q(dataBuf[16]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[17] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[17]),
        .Q(dataBuf[17]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[18] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[18]),
        .Q(dataBuf[18]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[19] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[19]),
        .Q(dataBuf[19]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[1] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[1]),
        .Q(dataBuf[1]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[20] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[20]),
        .Q(dataBuf[20]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[21] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[21]),
        .Q(dataBuf[21]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[22] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[22]),
        .Q(dataBuf[22]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[23] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[23]),
        .Q(dataBuf[23]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[24] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[24]),
        .Q(dataBuf[24]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[25] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[25]),
        .Q(dataBuf[25]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[26] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[26]),
        .Q(dataBuf[26]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[27] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[27]),
        .Q(dataBuf[27]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[28] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[28]),
        .Q(dataBuf[28]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[29] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[29]),
        .Q(dataBuf[29]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[2] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[2]),
        .Q(dataBuf[2]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[30] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[30]),
        .Q(dataBuf[30]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[31] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[31]),
        .Q(dataBuf[31]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[3] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[3]),
        .Q(dataBuf[3]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[4] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[4]),
        .Q(dataBuf[4]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[5] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[5]),
        .Q(dataBuf[5]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[6] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[6]),
        .Q(dataBuf[6]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[7] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[7]),
        .Q(dataBuf[7]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[8] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[8]),
        .Q(dataBuf[8]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuf_reg[9] 
       (.C(clk_256fs),
        .CE(bitCounter),
        .D(D[9]),
        .Q(dataBuf[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \prescalerBICK[0]_i_1 
       (.I0(nReset),
        .I1(prescalerBICK[0]),
        .O(\prescalerBICK[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \prescalerBICK[1]_i_1 
       (.I0(nReset),
        .I1(prescalerBICK[1]),
        .I2(prescalerBICK[0]),
        .O(\prescalerBICK[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \prescalerBICK[2]_i_1 
       (.I0(nReset),
        .I1(prescalerBICK[1]),
        .I2(prescalerBICK[0]),
        .I3(DAC_BICK),
        .O(\prescalerBICK[2]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \prescalerBICK_reg[0] 
       (.C(clk_256fs),
        .CE(1'b1),
        .D(\prescalerBICK[0]_i_1_n_0 ),
        .Q(prescalerBICK[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \prescalerBICK_reg[1] 
       (.C(clk_256fs),
        .CE(1'b1),
        .D(\prescalerBICK[1]_i_1_n_0 ),
        .Q(prescalerBICK[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \prescalerBICK_reg[2] 
       (.C(clk_256fs),
        .CE(1'b1),
        .D(\prescalerBICK[2]_i_1_n_0 ),
        .Q(DAC_BICK),
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
