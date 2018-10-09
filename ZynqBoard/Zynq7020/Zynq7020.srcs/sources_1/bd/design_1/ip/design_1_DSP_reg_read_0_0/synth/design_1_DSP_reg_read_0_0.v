// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:DSP_reg_read:1.0
// IP Revision: 1

(* X_CORE_INFO = "DSP_reg_read,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_DSP_reg_read_0_0,DSP_reg_read,{}" *)
(* CORE_GENERATION_INFO = "design_1_DSP_reg_read_0_0,DSP_reg_read,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=DSP_reg_read,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,EXT_MULT_DELAY=4}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_DSP_reg_read_0_0 (
  nReset,
  aclk,
  m_bram_addr,
  m_bram_clk,
  m_bram_rddata,
  m_bram_en,
  m_bram_rst,
  m_bram_we,
  index,
  index_valid,
  freq,
  const,
  freqXconst,
  m_axis_delta_tdata,
  m_axis_delta_tvalid,
  m_axis_gain_tdata,
  m_axis_gain_tvalid
);

input wire nReset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_delta:m_axis_gain, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
output wire [31 : 0] m_bram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_clk, ASSOCIATED_RESET m_bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_DSP_reg_read_0_0_m_bram_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_clk CLK" *)
output wire m_bram_clk;
input wire [31 : 0] m_bram_rddata;
output wire m_bram_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_rst RST" *)
output wire m_bram_rst;
output wire m_bram_we;
input wire [10 : 0] index;
input wire index_valid;
output wire [17 : 0] freq;
output wire [17 : 0] const;
input wire [35 : 0] freqXconst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_delta TDATA" *)
output wire [23 : 0] m_axis_delta_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_delta, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_delta TVALID" *)
output wire m_axis_delta_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TDATA" *)
output wire [13 : 0] m_axis_gain_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_gain, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TVALID" *)
output wire m_axis_gain_tvalid;

  DSP_reg_read #(
    .EXT_MULT_DELAY(4)
  ) inst (
    .nReset(nReset),
    .aclk(aclk),
    .m_bram_addr(m_bram_addr),
    .m_bram_clk(m_bram_clk),
    .m_bram_rddata(m_bram_rddata),
    .m_bram_en(m_bram_en),
    .m_bram_rst(m_bram_rst),
    .m_bram_we(m_bram_we),
    .index(index),
    .index_valid(index_valid),
    .freq(freq),
    .const(const),
    .freqXconst(freqXconst),
    .m_axis_delta_tdata(m_axis_delta_tdata),
    .m_axis_delta_tvalid(m_axis_delta_tvalid),
    .m_axis_gain_tdata(m_axis_gain_tdata),
    .m_axis_gain_tvalid(m_axis_gain_tvalid)
  );
endmodule
