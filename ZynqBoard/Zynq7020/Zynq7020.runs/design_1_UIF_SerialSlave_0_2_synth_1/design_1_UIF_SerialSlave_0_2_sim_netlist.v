// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:09 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_UIF_SerialSlave_0_2_sim_netlist.v
// Design      : design_1_UIF_SerialSlave_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UIF_SerialSlave
   (UIF_Slave_S_RXD,
    m_axis_st_tdata,
    m_axis_st_tvalid,
    s_axis_sr_tready,
    UIF_Slave_S_SCK,
    sysClk,
    nReset,
    s_axis_sr_tdata,
    UIF_Slave_S_TXD,
    s_axis_sr_tvalid,
    m_axis_st_tready);
  output UIF_Slave_S_RXD;
  output [7:0]m_axis_st_tdata;
  output m_axis_st_tvalid;
  output s_axis_sr_tready;
  input UIF_Slave_S_SCK;
  input sysClk;
  input nReset;
  input [7:0]s_axis_sr_tdata;
  input UIF_Slave_S_TXD;
  input s_axis_sr_tvalid;
  input m_axis_st_tready;

  wire [2:0]RXDBufferCount;
  wire \RXDBufferCount[0]_i_1_n_0 ;
  wire \RXDBufferCount[1]_i_1_n_0 ;
  wire \RXDBufferCount[2]_i_1_n_0 ;
  wire \RXDBufferCount[2]_i_2_n_0 ;
  wire RXDBufferValid_i_1_n_0;
  wire RXDBufferValid_reg_n_0;
  (* async_reg = "true" *) wire [1:0]RXDSync;
  wire [1:0]SCKEdgeBuffer;
  wire SCKFallEdge;
  wire SCKRiseEdge;
  (* async_reg = "true" *) wire [1:0]SCKSync;
  wire [6:0]TXDBuffer;
  wire \TXDBufferCount[0]_i_1_n_0 ;
  wire \TXDBufferCount[1]_i_1_n_0 ;
  wire \TXDBufferCount[2]_i_1_n_0 ;
  wire \TXDBufferCount_reg_n_0_[0] ;
  wire \TXDBufferCount_reg_n_0_[1] ;
  wire \TXDBufferCount_reg_n_0_[2] ;
  wire TXDBufferReady_i_1_n_0;
  wire TXDBufferReady_i_2_n_0;
  wire \TXDBuffer[0]_i_1_n_0 ;
  wire \TXDBuffer[0]_i_2_n_0 ;
  wire \TXDBuffer[7]_i_1_n_0 ;
  wire UIF_Slave_S_RXD;
  wire UIF_Slave_S_SCK;
  wire UIF_Slave_S_TXD;
  wire [7:0]m_axis_st_tdata;
  wire m_axis_st_tready;
  wire m_axis_st_tvalid;
  wire nReset;
  wire [7:0]p_0_in;
  wire [7:1]p_1_in;
  wire [7:0]s_axis_sr_tdata;
  wire s_axis_sr_tready;
  wire s_axis_sr_tvalid;
  wire sysClk;
  wire \timeOutCounter[7]_i_1_n_0 ;
  wire \timeOutCounter[7]_i_3_n_0 ;
  wire [7:0]timeOutCounter_reg__0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1900)) 
    \RXDBufferCount[0]_i_1 
       (.I0(RXDBufferCount[0]),
        .I1(\RXDBufferCount[2]_i_2_n_0 ),
        .I2(timeOutCounter_reg__0[7]),
        .I3(nReset),
        .O(\RXDBufferCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h06C60000)) 
    \RXDBufferCount[1]_i_1 
       (.I0(RXDBufferCount[0]),
        .I1(RXDBufferCount[1]),
        .I2(\RXDBufferCount[2]_i_2_n_0 ),
        .I3(timeOutCounter_reg__0[7]),
        .I4(nReset),
        .O(\RXDBufferCount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0078F07800000000)) 
    \RXDBufferCount[2]_i_1 
       (.I0(RXDBufferCount[0]),
        .I1(RXDBufferCount[1]),
        .I2(RXDBufferCount[2]),
        .I3(\RXDBufferCount[2]_i_2_n_0 ),
        .I4(timeOutCounter_reg__0[7]),
        .I5(nReset),
        .O(\RXDBufferCount[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \RXDBufferCount[2]_i_2 
       (.I0(SCKEdgeBuffer[0]),
        .I1(SCKEdgeBuffer[1]),
        .O(\RXDBufferCount[2]_i_2_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBufferCount_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\RXDBufferCount[0]_i_1_n_0 ),
        .Q(RXDBufferCount[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBufferCount_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\RXDBufferCount[1]_i_1_n_0 ),
        .Q(RXDBufferCount[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBufferCount_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\RXDBufferCount[2]_i_1_n_0 ),
        .Q(RXDBufferCount[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RXDBufferValid_i_1
       (.I0(SCKEdgeBuffer[0]),
        .I1(SCKEdgeBuffer[1]),
        .I2(RXDBufferCount[2]),
        .I3(nReset),
        .I4(RXDBufferCount[1]),
        .I5(RXDBufferCount[0]),
        .O(RXDBufferValid_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    RXDBufferValid_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(RXDBufferValid_i_1_n_0),
        .Q(RXDBufferValid_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \RXDBuffer[7]_i_1 
       (.I0(SCKEdgeBuffer[1]),
        .I1(SCKEdgeBuffer[0]),
        .O(SCKRiseEdge));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[0] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(RXDSync[0]),
        .Q(m_axis_st_tdata[0]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[1] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[0]),
        .Q(m_axis_st_tdata[1]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[2] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[1]),
        .Q(m_axis_st_tdata[2]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[3] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[2]),
        .Q(m_axis_st_tdata[3]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[4] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[3]),
        .Q(m_axis_st_tdata[4]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[5] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[4]),
        .Q(m_axis_st_tdata[5]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[6] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[5]),
        .Q(m_axis_st_tdata[6]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \RXDBuffer_reg[7] 
       (.C(sysClk),
        .CE(SCKRiseEdge),
        .D(m_axis_st_tdata[6]),
        .Q(m_axis_st_tdata[7]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RXDSync_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(RXDSync[1]),
        .Q(RXDSync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \RXDSync_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(UIF_Slave_S_TXD),
        .Q(RXDSync[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \SCKEdgeBuffer_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(SCKEdgeBuffer[1]),
        .Q(SCKEdgeBuffer[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \SCKEdgeBuffer_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(SCKSync[0]),
        .Q(SCKEdgeBuffer[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \SCKSync_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(SCKSync[1]),
        .Q(SCKSync[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \SCKSync_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(UIF_Slave_S_SCK),
        .Q(SCKSync[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hDF9AFFFF)) 
    \TXDBufferCount[0]_i_1 
       (.I0(\TXDBufferCount_reg_n_0_[0] ),
        .I1(SCKEdgeBuffer[1]),
        .I2(SCKEdgeBuffer[0]),
        .I3(timeOutCounter_reg__0[7]),
        .I4(nReset),
        .O(\TXDBufferCount[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDF9AEFAAFFFFFFFF)) 
    \TXDBufferCount[1]_i_1 
       (.I0(\TXDBufferCount_reg_n_0_[1] ),
        .I1(SCKEdgeBuffer[1]),
        .I2(SCKEdgeBuffer[0]),
        .I3(timeOutCounter_reg__0[7]),
        .I4(\TXDBufferCount_reg_n_0_[0] ),
        .I5(nReset),
        .O(\TXDBufferCount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD9EAEAEAFFFFFFFF)) 
    \TXDBufferCount[2]_i_1 
       (.I0(\TXDBufferCount_reg_n_0_[2] ),
        .I1(TXDBufferReady_i_2_n_0),
        .I2(timeOutCounter_reg__0[7]),
        .I3(\TXDBufferCount_reg_n_0_[0] ),
        .I4(\TXDBufferCount_reg_n_0_[1] ),
        .I5(nReset),
        .O(\TXDBufferCount[2]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBufferCount_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\TXDBufferCount[0]_i_1_n_0 ),
        .Q(\TXDBufferCount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBufferCount_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\TXDBufferCount[1]_i_1_n_0 ),
        .Q(\TXDBufferCount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBufferCount_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\TXDBufferCount[2]_i_1_n_0 ),
        .Q(\TXDBufferCount_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    TXDBufferReady_i_1
       (.I0(TXDBufferReady_i_2_n_0),
        .I1(nReset),
        .I2(s_axis_sr_tvalid),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(\TXDBufferCount_reg_n_0_[0] ),
        .I5(\TXDBufferCount_reg_n_0_[1] ),
        .O(TXDBufferReady_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    TXDBufferReady_i_2
       (.I0(SCKEdgeBuffer[1]),
        .I1(SCKEdgeBuffer[0]),
        .O(TXDBufferReady_i_2_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    TXDBufferReady_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(TXDBufferReady_i_1_n_0),
        .Q(s_axis_sr_tready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAA8AA00000000)) 
    \TXDBuffer[0]_i_1 
       (.I0(TXDBuffer[0]),
        .I1(\TXDBuffer[0]_i_2_n_0 ),
        .I2(SCKEdgeBuffer[1]),
        .I3(SCKEdgeBuffer[0]),
        .I4(s_axis_sr_tdata[0]),
        .I5(nReset),
        .O(\TXDBuffer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \TXDBuffer[0]_i_2 
       (.I0(\TXDBufferCount_reg_n_0_[1] ),
        .I1(\TXDBufferCount_reg_n_0_[0] ),
        .I2(\TXDBufferCount_reg_n_0_[2] ),
        .O(\TXDBuffer[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[1]_i_1 
       (.I0(TXDBuffer[0]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[2]_i_1 
       (.I0(TXDBuffer[1]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[3]_i_1 
       (.I0(TXDBuffer[2]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[4]_i_1 
       (.I0(TXDBuffer[3]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[5]_i_1 
       (.I0(TXDBuffer[4]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[6]_i_1 
       (.I0(TXDBuffer[5]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[6]),
        .O(p_1_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \TXDBuffer[7]_i_1 
       (.I0(nReset),
        .O(\TXDBuffer[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \TXDBuffer[7]_i_2 
       (.I0(SCKEdgeBuffer[0]),
        .I1(SCKEdgeBuffer[1]),
        .O(SCKFallEdge));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \TXDBuffer[7]_i_3 
       (.I0(TXDBuffer[6]),
        .I1(\TXDBufferCount_reg_n_0_[1] ),
        .I2(\TXDBufferCount_reg_n_0_[0] ),
        .I3(\TXDBufferCount_reg_n_0_[2] ),
        .I4(s_axis_sr_tdata[7]),
        .O(p_1_in[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\TXDBuffer[0]_i_1_n_0 ),
        .Q(TXDBuffer[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[1] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[1]),
        .Q(TXDBuffer[1]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[2] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[2]),
        .Q(TXDBuffer[2]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[3] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[3]),
        .Q(TXDBuffer[3]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[4] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[4]),
        .Q(TXDBuffer[4]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[5] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[5]),
        .Q(TXDBuffer[5]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[6] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[6]),
        .Q(TXDBuffer[6]),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \TXDBuffer_reg[7] 
       (.C(sysClk),
        .CE(SCKFallEdge),
        .D(p_1_in[7]),
        .Q(UIF_Slave_S_RXD),
        .R(\TXDBuffer[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_st_tvalid_INST_0
       (.I0(m_axis_st_tready),
        .I1(RXDBufferValid_reg_n_0),
        .O(m_axis_st_tvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \timeOutCounter[0]_i_1 
       (.I0(timeOutCounter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \timeOutCounter[1]_i_1 
       (.I0(timeOutCounter_reg__0[0]),
        .I1(timeOutCounter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \timeOutCounter[2]_i_1 
       (.I0(timeOutCounter_reg__0[1]),
        .I1(timeOutCounter_reg__0[0]),
        .I2(timeOutCounter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \timeOutCounter[3]_i_1 
       (.I0(timeOutCounter_reg__0[2]),
        .I1(timeOutCounter_reg__0[0]),
        .I2(timeOutCounter_reg__0[1]),
        .I3(timeOutCounter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \timeOutCounter[4]_i_1 
       (.I0(timeOutCounter_reg__0[3]),
        .I1(timeOutCounter_reg__0[1]),
        .I2(timeOutCounter_reg__0[0]),
        .I3(timeOutCounter_reg__0[2]),
        .I4(timeOutCounter_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \timeOutCounter[5]_i_1 
       (.I0(timeOutCounter_reg__0[4]),
        .I1(timeOutCounter_reg__0[2]),
        .I2(timeOutCounter_reg__0[0]),
        .I3(timeOutCounter_reg__0[1]),
        .I4(timeOutCounter_reg__0[3]),
        .I5(timeOutCounter_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \timeOutCounter[6]_i_1 
       (.I0(\timeOutCounter[7]_i_3_n_0 ),
        .I1(timeOutCounter_reg__0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h6FFF6F6F6F6F6F6F)) 
    \timeOutCounter[7]_i_1 
       (.I0(SCKEdgeBuffer[0]),
        .I1(SCKEdgeBuffer[1]),
        .I2(nReset),
        .I3(\timeOutCounter[7]_i_3_n_0 ),
        .I4(timeOutCounter_reg__0[6]),
        .I5(timeOutCounter_reg__0[7]),
        .O(\timeOutCounter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \timeOutCounter[7]_i_2 
       (.I0(timeOutCounter_reg__0[6]),
        .I1(\timeOutCounter[7]_i_3_n_0 ),
        .I2(timeOutCounter_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timeOutCounter[7]_i_3 
       (.I0(timeOutCounter_reg__0[4]),
        .I1(timeOutCounter_reg__0[2]),
        .I2(timeOutCounter_reg__0[0]),
        .I3(timeOutCounter_reg__0[1]),
        .I4(timeOutCounter_reg__0[3]),
        .I5(timeOutCounter_reg__0[5]),
        .O(\timeOutCounter[7]_i_3_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(timeOutCounter_reg__0[0]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(timeOutCounter_reg__0[1]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(timeOutCounter_reg__0[2]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(timeOutCounter_reg__0[3]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(timeOutCounter_reg__0[4]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[5] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(timeOutCounter_reg__0[5]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[6] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(timeOutCounter_reg__0[6]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \timeOutCounter_reg[7] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(timeOutCounter_reg__0[7]),
        .R(\timeOutCounter[7]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_UIF_SerialSlave_0_2,UIF_SerialSlave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UIF_SerialSlave,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    sysClk,
    UIF_Slave_S_SCK,
    UIF_Slave_S_RXD,
    UIF_Slave_S_TXD,
    m_axis_st_tdata,
    m_axis_st_tready,
    m_axis_st_tvalid,
    s_axis_sr_tdata,
    s_axis_sr_tready,
    s_axis_sr_tvalid);
  input nReset;
  input sysClk;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 UIF_Slave S_SCK" *) input UIF_Slave_S_SCK;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 UIF_Slave S_RXD" *) output UIF_Slave_S_RXD;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 UIF_Slave S_TXD" *) input UIF_Slave_S_TXD;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_st TDATA" *) output [7:0]m_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_st TREADY" *) input m_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_st TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_st, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_st_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_sr TDATA" *) input [7:0]s_axis_sr_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_sr TREADY" *) output s_axis_sr_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_sr TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_sr, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_sr_tvalid;

  wire UIF_Slave_S_RXD;
  wire UIF_Slave_S_SCK;
  wire UIF_Slave_S_TXD;
  wire [7:0]m_axis_st_tdata;
  wire m_axis_st_tready;
  wire m_axis_st_tvalid;
  wire nReset;
  wire [7:0]s_axis_sr_tdata;
  wire s_axis_sr_tready;
  wire s_axis_sr_tvalid;
  wire sysClk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UIF_SerialSlave inst
       (.UIF_Slave_S_RXD(UIF_Slave_S_RXD),
        .UIF_Slave_S_SCK(UIF_Slave_S_SCK),
        .UIF_Slave_S_TXD(UIF_Slave_S_TXD),
        .m_axis_st_tdata(m_axis_st_tdata),
        .m_axis_st_tready(m_axis_st_tready),
        .m_axis_st_tvalid(m_axis_st_tvalid),
        .nReset(nReset),
        .s_axis_sr_tdata(s_axis_sr_tdata),
        .s_axis_sr_tready(s_axis_sr_tready),
        .s_axis_sr_tvalid(s_axis_sr_tvalid),
        .sysClk(sysClk));
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
