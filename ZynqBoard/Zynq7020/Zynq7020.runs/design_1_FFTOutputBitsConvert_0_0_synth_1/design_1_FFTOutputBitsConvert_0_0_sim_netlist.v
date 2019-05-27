// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 28 01:35:34 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FFTOutputBitsConvert_0_0_sim_netlist.v
// Design      : design_1_FFTOutputBitsConvert_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTOutputBitsConverter
   (event_fft_complete,
    Q,
    bram_wddata,
    clk,
    s_axis_data_tvalid,
    nReset,
    s_axis_data_tdata);
  output event_fft_complete;
  output [9:0]Q;
  output [23:0]bram_wddata;
  input clk;
  input s_axis_data_tvalid;
  input nReset;
  input [47:0]s_axis_data_tdata;

  wire [9:0]Q;
  wire [23:0]bram_wddata;
  wire bram_wddata0__0_carry__0__0_n_0;
  wire bram_wddata0__0_carry__0__0_n_1;
  wire bram_wddata0__0_carry__0__0_n_2;
  wire bram_wddata0__0_carry__0__0_n_3;
  wire bram_wddata0__0_carry__0_i_1__0_n_0;
  wire bram_wddata0__0_carry__0_i_1_n_0;
  wire bram_wddata0__0_carry__0_i_2__0_n_0;
  wire bram_wddata0__0_carry__0_i_2_n_0;
  wire bram_wddata0__0_carry__0_i_3__0_n_0;
  wire bram_wddata0__0_carry__0_i_3_n_0;
  wire bram_wddata0__0_carry__0_i_4__0_n_0;
  wire bram_wddata0__0_carry__0_i_4_n_0;
  wire bram_wddata0__0_carry__0_i_5__0_n_0;
  wire bram_wddata0__0_carry__0_i_5_n_0;
  wire bram_wddata0__0_carry__0_i_6__0_n_0;
  wire bram_wddata0__0_carry__0_i_6_n_0;
  wire bram_wddata0__0_carry__0_i_7__0_n_0;
  wire bram_wddata0__0_carry__0_i_7_n_0;
  wire bram_wddata0__0_carry__0_i_8__0_n_0;
  wire bram_wddata0__0_carry__0_i_8_n_0;
  wire bram_wddata0__0_carry__0_n_0;
  wire bram_wddata0__0_carry__0_n_1;
  wire bram_wddata0__0_carry__0_n_2;
  wire bram_wddata0__0_carry__0_n_3;
  wire bram_wddata0__0_carry__1__0_n_1;
  wire bram_wddata0__0_carry__1__0_n_2;
  wire bram_wddata0__0_carry__1__0_n_3;
  wire bram_wddata0__0_carry__1_i_1__0_n_0;
  wire bram_wddata0__0_carry__1_i_1_n_0;
  wire bram_wddata0__0_carry__1_i_2__0_n_0;
  wire bram_wddata0__0_carry__1_i_2_n_0;
  wire bram_wddata0__0_carry__1_i_3__0_n_0;
  wire bram_wddata0__0_carry__1_i_3_n_0;
  wire bram_wddata0__0_carry__1_i_4__0_n_0;
  wire bram_wddata0__0_carry__1_i_4_n_0;
  wire bram_wddata0__0_carry__1_i_5__0_n_0;
  wire bram_wddata0__0_carry__1_i_5_n_0;
  wire bram_wddata0__0_carry__1_i_6__0_n_0;
  wire bram_wddata0__0_carry__1_i_6_n_0;
  wire bram_wddata0__0_carry__1_i_7__0_n_0;
  wire bram_wddata0__0_carry__1_i_7_n_0;
  wire bram_wddata0__0_carry__1_n_1;
  wire bram_wddata0__0_carry__1_n_2;
  wire bram_wddata0__0_carry__1_n_3;
  wire bram_wddata0__0_carry__2_n_0;
  wire bram_wddata0__0_carry__2_n_1;
  wire bram_wddata0__0_carry__2_n_2;
  wire bram_wddata0__0_carry__2_n_3;
  wire bram_wddata0__0_carry_i_1__0_n_0;
  wire bram_wddata0__0_carry_i_1_n_0;
  wire bram_wddata0__0_carry_i_2__0_n_0;
  wire bram_wddata0__0_carry_i_2_n_0;
  wire bram_wddata0__0_carry_i_3__0_n_0;
  wire bram_wddata0__0_carry_i_3_n_0;
  wire bram_wddata0__0_carry_i_4__0_n_0;
  wire bram_wddata0__0_carry_i_4_n_0;
  wire bram_wddata0__0_carry_i_5__0_n_0;
  wire bram_wddata0__0_carry_i_5_n_0;
  wire bram_wddata0__0_carry_i_6__0_n_0;
  wire bram_wddata0__0_carry_i_6_n_0;
  wire bram_wddata0__0_carry_i_7__0_n_0;
  wire bram_wddata0__0_carry_i_7_n_0;
  wire bram_wddata0__0_carry_n_0;
  wire bram_wddata0__0_carry_n_1;
  wire bram_wddata0__0_carry_n_2;
  wire bram_wddata0__0_carry_n_3;
  wire \byteCounter[9]_i_1_n_0 ;
  wire \byteCounter[9]_i_3_n_0 ;
  wire \byteCounter[9]_i_4_n_0 ;
  wire clk;
  wire complete_i_1_n_0;
  wire complete_i_2_n_0;
  wire event_fft_complete;
  wire nReset;
  wire [9:0]p_0_in;
  wire [47:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;
  wire started;
  wire started_i_1_n_0;
  wire [3:3]NLW_bram_wddata0__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__0_CO_UNCONNECTED;

  CARRY4 bram_wddata0__0_carry
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry_n_0,bram_wddata0__0_carry_n_1,bram_wddata0__0_carry_n_2,bram_wddata0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1_n_0,bram_wddata0__0_carry_i_2_n_0,bram_wddata0__0_carry_i_3_n_0,s_axis_data_tdata[11]}),
        .O(bram_wddata[3:0]),
        .S({bram_wddata0__0_carry_i_4_n_0,bram_wddata0__0_carry_i_5_n_0,bram_wddata0__0_carry_i_6_n_0,bram_wddata0__0_carry_i_7_n_0}));
  CARRY4 bram_wddata0__0_carry__0
       (.CI(bram_wddata0__0_carry_n_0),
        .CO({bram_wddata0__0_carry__0_n_0,bram_wddata0__0_carry__0_n_1,bram_wddata0__0_carry__0_n_2,bram_wddata0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1_n_0,bram_wddata0__0_carry__0_i_2_n_0,bram_wddata0__0_carry__0_i_3_n_0,bram_wddata0__0_carry__0_i_4_n_0}),
        .O(bram_wddata[7:4]),
        .S({bram_wddata0__0_carry__0_i_5_n_0,bram_wddata0__0_carry__0_i_6_n_0,bram_wddata0__0_carry__0_i_7_n_0,bram_wddata0__0_carry__0_i_8_n_0}));
  CARRY4 bram_wddata0__0_carry__0__0
       (.CI(bram_wddata0__0_carry__2_n_0),
        .CO({bram_wddata0__0_carry__0__0_n_0,bram_wddata0__0_carry__0__0_n_1,bram_wddata0__0_carry__0__0_n_2,bram_wddata0__0_carry__0__0_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__0_n_0,bram_wddata0__0_carry__0_i_2__0_n_0,bram_wddata0__0_carry__0_i_3__0_n_0,bram_wddata0__0_carry__0_i_4__0_n_0}),
        .O(bram_wddata[19:16]),
        .S({bram_wddata0__0_carry__0_i_5__0_n_0,bram_wddata0__0_carry__0_i_6__0_n_0,bram_wddata0__0_carry__0_i_7__0_n_0,bram_wddata0__0_carry__0_i_8__0_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_2__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_3__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_4__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_1_n_0),
        .O(bram_wddata0__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_1__0_n_0),
        .O(bram_wddata0__0_carry__0_i_5__0_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_2_n_0),
        .O(bram_wddata0__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_2__0_n_0),
        .O(bram_wddata0__0_carry__0_i_6__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_3_n_0),
        .O(bram_wddata0__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_3__0_n_0),
        .O(bram_wddata0__0_carry__0_i_7__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_4_n_0),
        .O(bram_wddata0__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_4__0_n_0),
        .O(bram_wddata0__0_carry__0_i_8__0_n_0));
  CARRY4 bram_wddata0__0_carry__1
       (.CI(bram_wddata0__0_carry__0_n_0),
        .CO({NLW_bram_wddata0__0_carry__1_CO_UNCONNECTED[3],bram_wddata0__0_carry__1_n_1,bram_wddata0__0_carry__1_n_2,bram_wddata0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1_n_0,bram_wddata0__0_carry__1_i_2_n_0,bram_wddata0__0_carry__1_i_3_n_0}),
        .O(bram_wddata[11:8]),
        .S({bram_wddata0__0_carry__1_i_4_n_0,bram_wddata0__0_carry__1_i_5_n_0,bram_wddata0__0_carry__1_i_6_n_0,bram_wddata0__0_carry__1_i_7_n_0}));
  CARRY4 bram_wddata0__0_carry__1__0
       (.CI(bram_wddata0__0_carry__0__0_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__0_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__0_n_1,bram_wddata0__0_carry__1__0_n_2,bram_wddata0__0_carry__1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__0_n_0,bram_wddata0__0_carry__1_i_2__0_n_0,bram_wddata0__0_carry__1_i_3__0_n_0}),
        .O(bram_wddata[23:20]),
        .S({bram_wddata0__0_carry__1_i_4__0_n_0,bram_wddata0__0_carry__1_i_5__0_n_0,bram_wddata0__0_carry__1_i_6__0_n_0,bram_wddata0__0_carry__1_i_7__0_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_1__0_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_2__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4
       (.I0(s_axis_data_tdata[22]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[10]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__0
       (.I0(s_axis_data_tdata[46]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[34]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5
       (.I0(bram_wddata0__0_carry__1_i_1_n_0),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[22]),
        .I3(s_axis_data_tdata[11]),
        .I4(s_axis_data_tdata[10]),
        .O(bram_wddata0__0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__0
       (.I0(bram_wddata0__0_carry__1_i_1__0_n_0),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[46]),
        .I3(s_axis_data_tdata[35]),
        .I4(s_axis_data_tdata[34]),
        .O(bram_wddata0__0_carry__1_i_5__0_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__1_i_2_n_0),
        .O(bram_wddata0__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__1_i_2__0_n_0),
        .O(bram_wddata0__0_carry__1_i_6__0_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__1_i_3_n_0),
        .O(bram_wddata0__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__1_i_3__0_n_0),
        .O(bram_wddata0__0_carry__1_i_7__0_n_0));
  CARRY4 bram_wddata0__0_carry__2
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__2_n_0,bram_wddata0__0_carry__2_n_1,bram_wddata0__0_carry__2_n_2,bram_wddata0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__0_n_0,bram_wddata0__0_carry_i_2__0_n_0,bram_wddata0__0_carry_i_3__0_n_0,s_axis_data_tdata[35]}),
        .O(bram_wddata[15:12]),
        .S({bram_wddata0__0_carry_i_4__0_n_0,bram_wddata0__0_carry_i_5__0_n_0,bram_wddata0__0_carry_i_6__0_n_0,bram_wddata0__0_carry_i_7__0_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[0]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[24]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_3__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_1_n_0),
        .O(bram_wddata0__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_1__0_n_0),
        .O(bram_wddata0__0_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_2_n_0),
        .O(bram_wddata0__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_2__0_n_0),
        .O(bram_wddata0__0_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_3_n_0),
        .O(bram_wddata0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_3__0_n_0),
        .O(bram_wddata0__0_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[0]),
        .O(bram_wddata0__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[24]),
        .O(bram_wddata0__0_carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \byteCounter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \byteCounter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \byteCounter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byteCounter[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \byteCounter[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \byteCounter[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\byteCounter[9]_i_4_n_0 ),
        .I3(Q[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byteCounter[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\byteCounter[9]_i_4_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \byteCounter[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\byteCounter[9]_i_4_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \byteCounter[9]_i_1 
       (.I0(\byteCounter[9]_i_3_n_0 ),
        .I1(\byteCounter[9]_i_4_n_0 ),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(s_axis_data_tvalid),
        .I5(nReset),
        .O(\byteCounter[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \byteCounter[9]_i_2 
       (.I0(Q[9]),
        .I1(\byteCounter[9]_i_4_n_0 ),
        .I2(\byteCounter[9]_i_3_n_0 ),
        .I3(Q[8]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \byteCounter[9]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\byteCounter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \byteCounter[9]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\byteCounter[9]_i_4_n_0 ));
  FDRE \byteCounter_reg[0] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[1] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[2] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[3] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[4] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[5] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[6] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[7] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[8] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[8]),
        .Q(Q[8]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[9] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(p_0_in[9]),
        .Q(Q[9]),
        .R(\byteCounter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    complete_i_1
       (.I0(complete_i_2_n_0),
        .I1(\byteCounter[9]_i_3_n_0 ),
        .I2(\byteCounter[9]_i_4_n_0 ),
        .I3(Q[9]),
        .I4(Q[8]),
        .I5(nReset),
        .O(complete_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    complete_i_2
       (.I0(event_fft_complete),
        .I1(started),
        .O(complete_i_2_n_0));
  FDRE complete_reg
       (.C(clk),
        .CE(1'b1),
        .D(complete_i_1_n_0),
        .Q(event_fft_complete),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCE00)) 
    started_i_1
       (.I0(started),
        .I1(s_axis_data_tvalid),
        .I2(event_fft_complete),
        .I3(nReset),
        .O(started_i_1_n_0));
  FDRE started_reg
       (.C(clk),
        .CE(1'b1),
        .D(started_i_1_n_0),
        .Q(started),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FFTOutputBitsConvert_0_0,FFTOutputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTOutputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    clk,
    bram_addr,
    bram_clk,
    bram_wddata,
    bram_en,
    bram_rst,
    bram_we,
    event_fft_complete,
    s_axis_data_tdata,
    s_axis_data_tready,
    s_axis_data_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_data, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_FFTOutputBitsConvert_0_0_bram_clk, INSERT_VIP 0" *) output bram_clk;
  output [31:0]bram_wddata;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output bram_we;
  output event_fft_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) input [63:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65532} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65500} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65484} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65484} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 13} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input s_axis_data_tvalid;

  wire \<const0> ;
  wire [11:2]\^bram_addr ;
  wire bram_rst;
  wire [27:0]\^bram_wddata ;
  wire clk;
  wire event_fft_complete;
  wire nReset;
  wire [63:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16] = \<const0> ;
  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11:2] = \^bram_addr [11:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = clk;
  assign bram_en = nReset;
  assign bram_wddata[31] = \<const0> ;
  assign bram_wddata[30] = \<const0> ;
  assign bram_wddata[29] = \<const0> ;
  assign bram_wddata[28] = \<const0> ;
  assign bram_wddata[27:16] = \^bram_wddata [27:16];
  assign bram_wddata[15] = \<const0> ;
  assign bram_wddata[14] = \<const0> ;
  assign bram_wddata[13] = \<const0> ;
  assign bram_wddata[12] = \<const0> ;
  assign bram_wddata[11:0] = \^bram_wddata [11:0];
  assign bram_we = s_axis_data_tvalid;
  assign s_axis_data_tready = nReset;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_INST_0
       (.I0(nReset),
        .O(bram_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTOutputBitsConverter inst
       (.Q(\^bram_addr ),
        .bram_wddata({\^bram_wddata [27:16],\^bram_wddata [11:0]}),
        .clk(clk),
        .event_fft_complete(event_fft_complete),
        .nReset(nReset),
        .s_axis_data_tdata({s_axis_data_tdata[59:48],s_axis_data_tdata[43:32],s_axis_data_tdata[27:16],s_axis_data_tdata[11:0]}),
        .s_axis_data_tvalid(s_axis_data_tvalid));
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
