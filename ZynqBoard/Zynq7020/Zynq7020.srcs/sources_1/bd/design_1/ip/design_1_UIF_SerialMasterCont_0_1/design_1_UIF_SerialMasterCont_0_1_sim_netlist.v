// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jun  9 05:40:18 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_UIF_SerialMasterCont_0_1/design_1_UIF_SerialMasterCont_0_1_sim_netlist.v
// Design      : design_1_UIF_SerialMasterCont_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_UIF_SerialMasterCont_0_1,UIF_SerialMasterController,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UIF_SerialMasterController,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_UIF_SerialMasterCont_0_1
   (nReset,
    sysClk,
    UIF_Master_H_SCK,
    UIF_Master_H_RXD,
    UIF_Master_H_TXD,
    SPI_Master_CSn,
    start,
    txFifoCount,
    internal_S_SCK,
    internal_S_RXD,
    internal_S_TXD,
    busy);
  input nReset;
  input sysClk;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_SCK" *) output UIF_Master_H_SCK;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_RXD" *) input UIF_Master_H_RXD;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_TXD" *) output UIF_Master_H_TXD;
  output SPI_Master_CSn;
  input start;
  input [11:0]txFifoCount;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_SCK" *) output internal_S_SCK;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_RXD" *) input internal_S_RXD;
  (* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_TXD" *) output internal_S_TXD;
  output busy;

  wire SPI_Master_CSn;
  wire UIF_Master_H_RXD;
  wire busy;
  wire internal_S_RXD;
  wire internal_S_SCK;
  wire nReset;
  wire start;
  wire sysClk;
  wire [11:0]txFifoCount;

  assign UIF_Master_H_SCK = internal_S_SCK;
  assign UIF_Master_H_TXD = internal_S_RXD;
  assign internal_S_TXD = UIF_Master_H_RXD;
  design_1_UIF_SerialMasterCont_0_1_UIF_SerialMasterController inst
       (.SPI_Master_CSn(SPI_Master_CSn),
        .cs_reg_0(busy),
        .internal_S_SCK(internal_S_SCK),
        .nReset(nReset),
        .start(start),
        .sysClk(sysClk),
        .txFifoCount(txFifoCount));
endmodule

(* ORIG_REF_NAME = "UIF_SerialMasterController" *) 
module design_1_UIF_SerialMasterCont_0_1_UIF_SerialMasterController
   (cs_reg_0,
    internal_S_SCK,
    SPI_Master_CSn,
    nReset,
    sysClk,
    start,
    txFifoCount);
  output cs_reg_0;
  output internal_S_SCK;
  output SPI_Master_CSn;
  input nReset;
  input sysClk;
  input start;
  input [11:0]txFifoCount;

  wire SPI_Master_CSn;
  wire [1:1]bitCounter;
  wire \bitCounter[0]_i_1_n_0 ;
  wire \bitCounter[1]_i_1_n_0 ;
  wire \bitCounter[2]_i_1_n_0 ;
  wire \bitCounter[2]_i_3_n_0 ;
  wire \bitCounter[3]_i_1_n_0 ;
  wire \bitCounter[3]_i_2_n_0 ;
  wire \bitCounter_reg_n_0_[0] ;
  wire \bitCounter_reg_n_0_[1] ;
  wire \bitCounter_reg_n_0_[2] ;
  wire \bitCounter_reg_n_0_[3] ;
  wire \byteCounter[0]_i_10_n_0 ;
  wire \byteCounter[0]_i_11_n_0 ;
  wire \byteCounter[0]_i_12_n_0 ;
  wire \byteCounter[0]_i_2_n_0 ;
  wire \byteCounter[0]_i_4_n_0 ;
  wire \byteCounter[0]_i_5_n_0 ;
  wire \byteCounter[0]_i_6_n_0 ;
  wire \byteCounter[0]_i_7_n_0 ;
  wire \byteCounter[0]_i_8_n_0 ;
  wire \byteCounter[0]_i_9_n_0 ;
  wire \byteCounter[4]_i_2_n_0 ;
  wire \byteCounter[4]_i_3_n_0 ;
  wire \byteCounter[4]_i_4_n_0 ;
  wire \byteCounter[4]_i_5_n_0 ;
  wire \byteCounter[4]_i_6_n_0 ;
  wire \byteCounter[4]_i_7_n_0 ;
  wire \byteCounter[4]_i_8_n_0 ;
  wire \byteCounter[4]_i_9_n_0 ;
  wire \byteCounter[8]_i_2_n_0 ;
  wire \byteCounter[8]_i_3_n_0 ;
  wire \byteCounter[8]_i_4_n_0 ;
  wire \byteCounter[8]_i_5_n_0 ;
  wire \byteCounter[8]_i_6_n_0 ;
  wire \byteCounter[8]_i_7_n_0 ;
  wire \byteCounter[8]_i_8_n_0 ;
  wire [11:0]byteCounter_reg;
  wire \byteCounter_reg[0]_i_3_n_0 ;
  wire \byteCounter_reg[0]_i_3_n_1 ;
  wire \byteCounter_reg[0]_i_3_n_2 ;
  wire \byteCounter_reg[0]_i_3_n_3 ;
  wire \byteCounter_reg[0]_i_3_n_4 ;
  wire \byteCounter_reg[0]_i_3_n_5 ;
  wire \byteCounter_reg[0]_i_3_n_6 ;
  wire \byteCounter_reg[0]_i_3_n_7 ;
  wire \byteCounter_reg[4]_i_1_n_0 ;
  wire \byteCounter_reg[4]_i_1_n_1 ;
  wire \byteCounter_reg[4]_i_1_n_2 ;
  wire \byteCounter_reg[4]_i_1_n_3 ;
  wire \byteCounter_reg[4]_i_1_n_4 ;
  wire \byteCounter_reg[4]_i_1_n_5 ;
  wire \byteCounter_reg[4]_i_1_n_6 ;
  wire \byteCounter_reg[4]_i_1_n_7 ;
  wire \byteCounter_reg[8]_i_1_n_1 ;
  wire \byteCounter_reg[8]_i_1_n_2 ;
  wire \byteCounter_reg[8]_i_1_n_3 ;
  wire \byteCounter_reg[8]_i_1_n_4 ;
  wire \byteCounter_reg[8]_i_1_n_5 ;
  wire \byteCounter_reg[8]_i_1_n_6 ;
  wire \byteCounter_reg[8]_i_1_n_7 ;
  wire clear;
  wire cs0;
  wire cs_i_1_n_0;
  wire cs_i_2_n_0;
  wire cs_i_4_n_0;
  wire cs_i_5_n_0;
  wire cs_reg_0;
  wire ending_i_1_n_0;
  wire ending_reg_n_0;
  wire internal_S_SCK;
  wire nReset;
  wire [4:0]p_0_in;
  wire \preScaler[4]_i_1_n_0 ;
  wire [4:0]preScaler_reg__0;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire spiClk;
  wire spiClk_i_1_n_0;
  wire start;
  wire sysClk;
  wire [11:0]txFifoCount;
  wire [3:3]\NLW_byteCounter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    SPI_Master_CSn_INST_0
       (.I0(cs_reg_0),
        .O(SPI_Master_CSn));
  LUT5 #(
    .INIT(32'hB0900000)) 
    \bitCounter[0]_i_1 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(cs_i_2_n_0),
        .I2(cs0),
        .I3(\bitCounter_reg_n_0_[3] ),
        .I4(nReset),
        .O(\bitCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA06000000000000)) 
    \bitCounter[1]_i_1 
       (.I0(\bitCounter_reg_n_0_[1] ),
        .I1(\bitCounter_reg_n_0_[0] ),
        .I2(\bitCounter_reg_n_0_[3] ),
        .I3(cs_i_2_n_0),
        .I4(nReset),
        .I5(cs0),
        .O(\bitCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \bitCounter[2]_i_1 
       (.I0(\bitCounter_reg_n_0_[2] ),
        .I1(cs_i_2_n_0),
        .I2(\bitCounter_reg_n_0_[0] ),
        .I3(\bitCounter_reg_n_0_[1] ),
        .I4(bitCounter),
        .O(\bitCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01FFFFFF01FF01FF)) 
    \bitCounter[2]_i_2 
       (.I0(cs_i_4_n_0),
        .I1(\bitCounter[2]_i_3_n_0 ),
        .I2(cs_i_5_n_0),
        .I3(nReset),
        .I4(cs_i_2_n_0),
        .I5(\bitCounter_reg_n_0_[3] ),
        .O(bitCounter));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bitCounter[2]_i_3 
       (.I0(byteCounter_reg[5]),
        .I1(byteCounter_reg[4]),
        .I2(byteCounter_reg[7]),
        .I3(byteCounter_reg[6]),
        .O(\bitCounter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF002000000000000)) 
    \bitCounter[3]_i_1 
       (.I0(\bitCounter_reg_n_0_[0] ),
        .I1(\bitCounter[3]_i_2_n_0 ),
        .I2(\bitCounter_reg_n_0_[3] ),
        .I3(cs_i_2_n_0),
        .I4(nReset),
        .I5(cs0),
        .O(\bitCounter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bitCounter[3]_i_2 
       (.I0(\bitCounter_reg_n_0_[1] ),
        .I1(\bitCounter_reg_n_0_[2] ),
        .O(\bitCounter[3]_i_2_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\bitCounter[0]_i_1_n_0 ),
        .Q(\bitCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\bitCounter[1]_i_1_n_0 ),
        .Q(\bitCounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\bitCounter[2]_i_1_n_0 ),
        .Q(\bitCounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bitCounter_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(\bitCounter[3]_i_1_n_0 ),
        .Q(\bitCounter_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \byteCounter[0]_i_1 
       (.I0(nReset),
        .O(clear));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[0]_i_10 
       (.I0(txFifoCount[2]),
        .I1(byteCounter_reg[2]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[0]_i_11 
       (.I0(txFifoCount[1]),
        .I1(byteCounter_reg[1]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[0]_i_12 
       (.I0(txFifoCount[0]),
        .I1(byteCounter_reg[0]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h2020FF20)) 
    \byteCounter[0]_i_2 
       (.I0(\byteCounter[0]_i_4_n_0 ),
        .I1(cs_i_2_n_0),
        .I2(cs0),
        .I3(start),
        .I4(cs_reg_0),
        .O(\byteCounter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \byteCounter[0]_i_4 
       (.I0(\bitCounter_reg_n_0_[2] ),
        .I1(\bitCounter_reg_n_0_[1] ),
        .I2(\bitCounter_reg_n_0_[0] ),
        .I3(\bitCounter_reg_n_0_[3] ),
        .O(\byteCounter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[0]_i_5 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[0]_i_6 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[0]_i_7 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[0]_i_8 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[0]_i_9 
       (.I0(txFifoCount[3]),
        .I1(byteCounter_reg[3]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[4]_i_2 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[4]_i_3 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[4]_i_4 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[4]_i_5 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[4]_i_6 
       (.I0(txFifoCount[7]),
        .I1(byteCounter_reg[7]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[4]_i_7 
       (.I0(txFifoCount[6]),
        .I1(byteCounter_reg[6]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[4]_i_8 
       (.I0(txFifoCount[5]),
        .I1(byteCounter_reg[5]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[4]_i_9 
       (.I0(txFifoCount[4]),
        .I1(byteCounter_reg[4]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[8]_i_2 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[8]_i_3 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \byteCounter[8]_i_4 
       (.I0(cs_reg_0),
        .I1(start),
        .O(\byteCounter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7545)) 
    \byteCounter[8]_i_5 
       (.I0(byteCounter_reg[11]),
        .I1(cs_reg_0),
        .I2(start),
        .I3(txFifoCount[11]),
        .O(\byteCounter[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[8]_i_6 
       (.I0(txFifoCount[10]),
        .I1(byteCounter_reg[10]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[8]_i_7 
       (.I0(txFifoCount[9]),
        .I1(byteCounter_reg[9]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h33A3)) 
    \byteCounter[8]_i_8 
       (.I0(txFifoCount[8]),
        .I1(byteCounter_reg[8]),
        .I2(start),
        .I3(cs_reg_0),
        .O(\byteCounter[8]_i_8_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[0] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[0]_i_3_n_7 ),
        .Q(byteCounter_reg[0]),
        .R(clear));
  CARRY4 \byteCounter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\byteCounter_reg[0]_i_3_n_0 ,\byteCounter_reg[0]_i_3_n_1 ,\byteCounter_reg[0]_i_3_n_2 ,\byteCounter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\byteCounter[0]_i_5_n_0 ,\byteCounter[0]_i_6_n_0 ,\byteCounter[0]_i_7_n_0 ,\byteCounter[0]_i_8_n_0 }),
        .O({\byteCounter_reg[0]_i_3_n_4 ,\byteCounter_reg[0]_i_3_n_5 ,\byteCounter_reg[0]_i_3_n_6 ,\byteCounter_reg[0]_i_3_n_7 }),
        .S({\byteCounter[0]_i_9_n_0 ,\byteCounter[0]_i_10_n_0 ,\byteCounter[0]_i_11_n_0 ,\byteCounter[0]_i_12_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[10] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[8]_i_1_n_5 ),
        .Q(byteCounter_reg[10]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[11] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[8]_i_1_n_4 ),
        .Q(byteCounter_reg[11]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[1] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[0]_i_3_n_6 ),
        .Q(byteCounter_reg[1]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[2] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[0]_i_3_n_5 ),
        .Q(byteCounter_reg[2]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[3] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[0]_i_3_n_4 ),
        .Q(byteCounter_reg[3]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[4] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[4]_i_1_n_7 ),
        .Q(byteCounter_reg[4]),
        .R(clear));
  CARRY4 \byteCounter_reg[4]_i_1 
       (.CI(\byteCounter_reg[0]_i_3_n_0 ),
        .CO({\byteCounter_reg[4]_i_1_n_0 ,\byteCounter_reg[4]_i_1_n_1 ,\byteCounter_reg[4]_i_1_n_2 ,\byteCounter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\byteCounter[4]_i_2_n_0 ,\byteCounter[4]_i_3_n_0 ,\byteCounter[4]_i_4_n_0 ,\byteCounter[4]_i_5_n_0 }),
        .O({\byteCounter_reg[4]_i_1_n_4 ,\byteCounter_reg[4]_i_1_n_5 ,\byteCounter_reg[4]_i_1_n_6 ,\byteCounter_reg[4]_i_1_n_7 }),
        .S({\byteCounter[4]_i_6_n_0 ,\byteCounter[4]_i_7_n_0 ,\byteCounter[4]_i_8_n_0 ,\byteCounter[4]_i_9_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[5] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[4]_i_1_n_6 ),
        .Q(byteCounter_reg[5]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[6] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[4]_i_1_n_5 ),
        .Q(byteCounter_reg[6]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[7] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[4]_i_1_n_4 ),
        .Q(byteCounter_reg[7]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[8] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[8]_i_1_n_7 ),
        .Q(byteCounter_reg[8]),
        .R(clear));
  CARRY4 \byteCounter_reg[8]_i_1 
       (.CI(\byteCounter_reg[4]_i_1_n_0 ),
        .CO({\NLW_byteCounter_reg[8]_i_1_CO_UNCONNECTED [3],\byteCounter_reg[8]_i_1_n_1 ,\byteCounter_reg[8]_i_1_n_2 ,\byteCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\byteCounter[8]_i_2_n_0 ,\byteCounter[8]_i_3_n_0 ,\byteCounter[8]_i_4_n_0 }),
        .O({\byteCounter_reg[8]_i_1_n_4 ,\byteCounter_reg[8]_i_1_n_5 ,\byteCounter_reg[8]_i_1_n_6 ,\byteCounter_reg[8]_i_1_n_7 }),
        .S({\byteCounter[8]_i_5_n_0 ,\byteCounter[8]_i_6_n_0 ,\byteCounter[8]_i_7_n_0 ,\byteCounter[8]_i_8_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \byteCounter_reg[9] 
       (.C(sysClk),
        .CE(\byteCounter[0]_i_2_n_0 ),
        .D(\byteCounter_reg[8]_i_1_n_6 ),
        .Q(byteCounter_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAFA20000)) 
    cs_i_1
       (.I0(cs_reg_0),
        .I1(ending_reg_n_0),
        .I2(cs_i_2_n_0),
        .I3(cs0),
        .I4(nReset),
        .O(cs_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    cs_i_2
       (.I0(preScaler_reg__0[1]),
        .I1(preScaler_reg__0[2]),
        .I2(preScaler_reg__0[4]),
        .I3(preScaler_reg__0[3]),
        .I4(preScaler_reg__0[0]),
        .I5(spiClk),
        .O(cs_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cs_i_3
       (.I0(cs_i_4_n_0),
        .I1(byteCounter_reg[5]),
        .I2(byteCounter_reg[4]),
        .I3(byteCounter_reg[7]),
        .I4(byteCounter_reg[6]),
        .I5(cs_i_5_n_0),
        .O(cs0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_4
       (.I0(byteCounter_reg[9]),
        .I1(byteCounter_reg[8]),
        .I2(byteCounter_reg[11]),
        .I3(byteCounter_reg[10]),
        .O(cs_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cs_i_5
       (.I0(byteCounter_reg[1]),
        .I1(byteCounter_reg[0]),
        .I2(byteCounter_reg[3]),
        .I3(byteCounter_reg[2]),
        .O(cs_i_5_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    cs_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(cs_i_1_n_0),
        .Q(cs_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8084)) 
    ending_i_1
       (.I0(ending_reg_n_0),
        .I1(nReset),
        .I2(cs_i_2_n_0),
        .I3(cs0),
        .O(ending_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    ending_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(ending_i_1_n_0),
        .Q(ending_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \preScaler[0]_i_1 
       (.I0(preScaler_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \preScaler[1]_i_1 
       (.I0(preScaler_reg__0[0]),
        .I1(preScaler_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \preScaler[2]_i_1 
       (.I0(preScaler_reg__0[1]),
        .I1(preScaler_reg__0[0]),
        .I2(preScaler_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \preScaler[3]_i_1 
       (.I0(preScaler_reg__0[2]),
        .I1(preScaler_reg__0[0]),
        .I2(preScaler_reg__0[1]),
        .I3(preScaler_reg__0[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h8F)) 
    \preScaler[4]_i_1 
       (.I0(preScaler_reg__0[4]),
        .I1(preScaler_reg__0[3]),
        .I2(nReset),
        .O(\preScaler[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \preScaler[4]_i_2 
       (.I0(preScaler_reg__0[3]),
        .I1(preScaler_reg__0[1]),
        .I2(preScaler_reg__0[0]),
        .I3(preScaler_reg__0[2]),
        .I4(preScaler_reg__0[4]),
        .O(p_0_in[4]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(preScaler_reg__0[0]),
        .R(\preScaler[4]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(preScaler_reg__0[1]),
        .R(\preScaler[4]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(preScaler_reg__0[2]),
        .R(\preScaler[4]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(preScaler_reg__0[3]),
        .R(\preScaler[4]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(preScaler_reg__0[4]),
        .R(\preScaler[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF75557FFFFFFFF)) 
    sclk_i_1
       (.I0(cs_reg_0),
        .I1(spiClk),
        .I2(sclk_i_2_n_0),
        .I3(ending_reg_n_0),
        .I4(internal_S_SCK),
        .I5(nReset),
        .O(sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    sclk_i_2
       (.I0(preScaler_reg__0[0]),
        .I1(preScaler_reg__0[3]),
        .I2(preScaler_reg__0[4]),
        .I3(preScaler_reg__0[2]),
        .I4(preScaler_reg__0[1]),
        .O(sclk_i_2_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    sclk_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(internal_S_SCK),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h90)) 
    spiClk_i_1
       (.I0(spiClk),
        .I1(sclk_i_2_n_0),
        .I2(nReset),
        .O(spiClk_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    spiClk_reg
       (.C(sysClk),
        .CE(1'b1),
        .D(spiClk_i_1_n_0),
        .Q(spiClk),
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
