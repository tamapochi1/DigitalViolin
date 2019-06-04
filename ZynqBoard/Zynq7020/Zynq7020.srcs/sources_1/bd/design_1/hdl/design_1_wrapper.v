//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jun  5 00:38:30 2019
//Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DAC_BICK_0,
    DAC_LRCK_0,
    DAC_MCLK_0,
    DAC_SDT_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    RGB_OUT_0,
    SPI_Master_CSn_1,
    UART_1_rxd,
    UART_1_txd,
    UIF_Master_1_h_rxd,
    UIF_Master_1_h_sck,
    UIF_Master_1_h_txd,
    UIF_Res_1,
    UIF_Slave_1_s_rxd,
    UIF_Slave_1_s_sck,
    UIF_Slave_1_s_txd,
    USB_nRESET_0);
  output DAC_BICK_0;
  output DAC_LRCK_0;
  output DAC_MCLK_0;
  output DAC_SDT_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [2:0]RGB_OUT_0;
  output SPI_Master_CSn_1;
  input UART_1_rxd;
  output UART_1_txd;
  input UIF_Master_1_h_rxd;
  output UIF_Master_1_h_sck;
  output UIF_Master_1_h_txd;
  output UIF_Res_1;
  output UIF_Slave_1_s_rxd;
  input UIF_Slave_1_s_sck;
  input UIF_Slave_1_s_txd;
  output USB_nRESET_0;

  wire DAC_BICK_0;
  wire DAC_LRCK_0;
  wire DAC_MCLK_0;
  wire DAC_SDT_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [2:0]RGB_OUT_0;
  wire SPI_Master_CSn_1;
  wire UART_1_rxd;
  wire UART_1_txd;
  wire UIF_Master_1_h_rxd;
  wire UIF_Master_1_h_sck;
  wire UIF_Master_1_h_txd;
  wire UIF_Res_1;
  wire UIF_Slave_1_s_rxd;
  wire UIF_Slave_1_s_sck;
  wire UIF_Slave_1_s_txd;
  wire USB_nRESET_0;

  design_1 design_1_i
       (.DAC_BICK_0(DAC_BICK_0),
        .DAC_LRCK_0(DAC_LRCK_0),
        .DAC_MCLK_0(DAC_MCLK_0),
        .DAC_SDT_0(DAC_SDT_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .RGB_OUT_0(RGB_OUT_0),
        .SPI_Master_CSn_1(SPI_Master_CSn_1),
        .UART_1_rxd(UART_1_rxd),
        .UART_1_txd(UART_1_txd),
        .UIF_Master_1_h_rxd(UIF_Master_1_h_rxd),
        .UIF_Master_1_h_sck(UIF_Master_1_h_sck),
        .UIF_Master_1_h_txd(UIF_Master_1_h_txd),
        .UIF_Res_1(UIF_Res_1),
        .UIF_Slave_1_s_rxd(UIF_Slave_1_s_rxd),
        .UIF_Slave_1_s_sck(UIF_Slave_1_s_sck),
        .UIF_Slave_1_s_txd(UIF_Slave_1_s_txd),
        .USB_nRESET_0(USB_nRESET_0));
endmodule
