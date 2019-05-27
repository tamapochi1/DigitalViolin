// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:FFTInputBitsConverter:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_FFTInputBitsConverter_0_0 (
  nReset,
  clk,
  bram_addr,
  bram_clk,
  bram_rddata,
  bram_en,
  bram_rst,
  bram_we,
  start,
  scale,
  m_axis_data_tdata,
  m_axis_data_tready,
  m_axis_data_tvalid,
  m_axis_config_tdata,
  m_axis_config_tready,
  m_axis_config_tvalid
);

input wire nReset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_config:m_axis_data, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
output wire [31 : 0] bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_FFTInputBitsConverter_0_0_bram_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *)
output wire bram_clk;
input wire [31 : 0] bram_rddata;
output wire bram_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *)
output wire bram_rst;
output wire bram_we;
input wire start;
input wire [19 : 0] scale;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *)
output wire [63 : 0] m_axis_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *)
input wire m_axis_data_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *)
output wire m_axis_data_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *)
output wire [47 : 0] m_axis_config_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *)
input wire m_axis_config_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *)
output wire m_axis_config_tvalid;

  FFTInputBitsConverter #(
    .FFT_SIZE(1024)
  ) inst (
    .nReset(nReset),
    .clk(clk),
    .bram_addr(bram_addr),
    .bram_clk(bram_clk),
    .bram_rddata(bram_rddata),
    .bram_en(bram_en),
    .bram_rst(bram_rst),
    .bram_we(bram_we),
    .start(start),
    .scale(scale),
    .m_axis_data_tdata(m_axis_data_tdata),
    .m_axis_data_tready(m_axis_data_tready),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .m_axis_config_tdata(m_axis_config_tdata),
    .m_axis_config_tready(m_axis_config_tready),
    .m_axis_config_tvalid(m_axis_config_tvalid)
  );
endmodule
