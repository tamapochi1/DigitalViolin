//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jun  9 19:19:15 2019
//Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_0_addr,
    DDR_0_ba,
    DDR_0_cas_n,
    DDR_0_ck_n,
    DDR_0_ck_p,
    DDR_0_cke,
    DDR_0_cs_n,
    DDR_0_dm,
    DDR_0_dq,
    DDR_0_dqs_n,
    DDR_0_dqs_p,
    DDR_0_odt,
    DDR_0_ras_n,
    DDR_0_reset_n,
    DDR_0_we_n,
    FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio,
    FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb,
    RGB_OUT_0,
    SPI_Master_CSn_1,
    SPI_Master_CSn_2,
    SPI_Master_CSn_3,
    UIF_Master_1_h_rxd,
    UIF_Master_1_h_sck,
    UIF_Master_1_h_txd,
    UIF_Master_2_h_rxd,
    UIF_Master_2_h_sck,
    UIF_Master_2_h_txd,
    UIF_Master_3_h_rxd,
    UIF_Master_3_h_sck,
    UIF_Master_3_h_txd);
  inout [14:0]DDR_0_addr;
  inout [2:0]DDR_0_ba;
  inout DDR_0_cas_n;
  inout DDR_0_ck_n;
  inout DDR_0_ck_p;
  inout DDR_0_cke;
  inout DDR_0_cs_n;
  inout [1:0]DDR_0_dm;
  inout [15:0]DDR_0_dq;
  inout [1:0]DDR_0_dqs_n;
  inout [1:0]DDR_0_dqs_p;
  inout DDR_0_odt;
  inout DDR_0_ras_n;
  inout DDR_0_reset_n;
  inout DDR_0_we_n;
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [31:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
  output [2:0]RGB_OUT_0;
  output SPI_Master_CSn_1;
  output SPI_Master_CSn_2;
  output SPI_Master_CSn_3;
  input UIF_Master_1_h_rxd;
  output UIF_Master_1_h_sck;
  output UIF_Master_1_h_txd;
  input UIF_Master_2_h_rxd;
  output UIF_Master_2_h_sck;
  output UIF_Master_2_h_txd;
  input UIF_Master_3_h_rxd;
  output UIF_Master_3_h_sck;
  output UIF_Master_3_h_txd;

  wire [14:0]DDR_0_addr;
  wire [2:0]DDR_0_ba;
  wire DDR_0_cas_n;
  wire DDR_0_ck_n;
  wire DDR_0_ck_p;
  wire DDR_0_cke;
  wire DDR_0_cs_n;
  wire [1:0]DDR_0_dm;
  wire [15:0]DDR_0_dq;
  wire [1:0]DDR_0_dqs_n;
  wire [1:0]DDR_0_dqs_p;
  wire DDR_0_odt;
  wire DDR_0_ras_n;
  wire DDR_0_reset_n;
  wire DDR_0_we_n;
  wire FIXED_IO_0_ddr_vrn;
  wire FIXED_IO_0_ddr_vrp;
  wire [31:0]FIXED_IO_0_mio;
  wire FIXED_IO_0_ps_clk;
  wire FIXED_IO_0_ps_porb;
  wire FIXED_IO_0_ps_srstb;
  wire [2:0]RGB_OUT_0;
  wire SPI_Master_CSn_1;
  wire SPI_Master_CSn_2;
  wire SPI_Master_CSn_3;
  wire UIF_Master_1_h_rxd;
  wire UIF_Master_1_h_sck;
  wire UIF_Master_1_h_txd;
  wire UIF_Master_2_h_rxd;
  wire UIF_Master_2_h_sck;
  wire UIF_Master_2_h_txd;
  wire UIF_Master_3_h_rxd;
  wire UIF_Master_3_h_sck;
  wire UIF_Master_3_h_txd;

  design_1 design_1_i
       (.DDR_0_addr(DDR_0_addr),
        .DDR_0_ba(DDR_0_ba),
        .DDR_0_cas_n(DDR_0_cas_n),
        .DDR_0_ck_n(DDR_0_ck_n),
        .DDR_0_ck_p(DDR_0_ck_p),
        .DDR_0_cke(DDR_0_cke),
        .DDR_0_cs_n(DDR_0_cs_n),
        .DDR_0_dm(DDR_0_dm),
        .DDR_0_dq(DDR_0_dq),
        .DDR_0_dqs_n(DDR_0_dqs_n),
        .DDR_0_dqs_p(DDR_0_dqs_p),
        .DDR_0_odt(DDR_0_odt),
        .DDR_0_ras_n(DDR_0_ras_n),
        .DDR_0_reset_n(DDR_0_reset_n),
        .DDR_0_we_n(DDR_0_we_n),
        .FIXED_IO_0_ddr_vrn(FIXED_IO_0_ddr_vrn),
        .FIXED_IO_0_ddr_vrp(FIXED_IO_0_ddr_vrp),
        .FIXED_IO_0_mio(FIXED_IO_0_mio),
        .FIXED_IO_0_ps_clk(FIXED_IO_0_ps_clk),
        .FIXED_IO_0_ps_porb(FIXED_IO_0_ps_porb),
        .FIXED_IO_0_ps_srstb(FIXED_IO_0_ps_srstb),
        .RGB_OUT_0(RGB_OUT_0),
        .SPI_Master_CSn_1(SPI_Master_CSn_1),
        .SPI_Master_CSn_2(SPI_Master_CSn_2),
        .SPI_Master_CSn_3(SPI_Master_CSn_3),
        .UIF_Master_1_h_rxd(UIF_Master_1_h_rxd),
        .UIF_Master_1_h_sck(UIF_Master_1_h_sck),
        .UIF_Master_1_h_txd(UIF_Master_1_h_txd),
        .UIF_Master_2_h_rxd(UIF_Master_2_h_rxd),
        .UIF_Master_2_h_sck(UIF_Master_2_h_sck),
        .UIF_Master_2_h_txd(UIF_Master_2_h_txd),
        .UIF_Master_3_h_rxd(UIF_Master_3_h_rxd),
        .UIF_Master_3_h_sck(UIF_Master_3_h_sck),
        .UIF_Master_3_h_txd(UIF_Master_3_h_txd));
endmodule
