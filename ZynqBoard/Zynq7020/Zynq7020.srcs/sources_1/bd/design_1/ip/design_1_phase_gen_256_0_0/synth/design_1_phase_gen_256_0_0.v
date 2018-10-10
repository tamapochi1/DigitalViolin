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


// IP VLNV: xilinx.com:module_ref:phase_gen_256:1.0
// IP Revision: 1

(* X_CORE_INFO = "phase_gen_256,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_phase_gen_256_0_0,phase_gen_256,{}" *)
(* CORE_GENERATION_INFO = "design_1_phase_gen_256_0_0,phase_gen_256,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=phase_gen_256,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,M_TWO=0xC00000,M_ONE=0xE00000,ONE=0x200000}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_phase_gen_256_0_0 (
  nReset,
  sysClk,
  audioClk,
  reg_index,
  reg_index_valid,
  s_axis_delta_tdata,
  s_axis_delta_tvalid,
  m_bram_int_rdaddr,
  m_bram_int_wraddr,
  m_bram_int_clk,
  m_bram_int_rddata,
  m_bram_int_wrdata,
  m_bram_int_rst,
  m_bram_int_we,
  m_axis_phase_tdata,
  m_axis_phase_tvalid,
  sync
);

input wire nReset;
input wire sysClk;
input wire audioClk;
output wire [10 : 0] reg_index;
output wire reg_index_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TDATA" *)
input wire [23 : 0] s_axis_delta_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_delta, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_delta TVALID" *)
input wire s_axis_delta_tvalid;
output wire [10 : 0] m_bram_int_rdaddr;
output wire [10 : 0] m_bram_int_wraddr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_clk, ASSOCIATED_RESET m_bram_int_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_phase_gen_256_0_0_m_bram_int_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_int_clk CLK" *)
output wire m_bram_int_clk;
input wire [23 : 0] m_bram_int_rddata;
output wire [23 : 0] m_bram_int_wrdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_int_rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_int_rst RST" *)
output wire m_bram_int_rst;
output wire m_bram_int_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TDATA" *)
output wire [15 : 0] m_axis_phase_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_phase, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_phase TVALID" *)
output wire m_axis_phase_tvalid;
output wire sync;

  phase_gen_256 #(
    .M_TWO(24'HC00000),
    .M_ONE(24'HE00000),
    .ONE(24'H200000)
  ) inst (
    .nReset(nReset),
    .sysClk(sysClk),
    .audioClk(audioClk),
    .reg_index(reg_index),
    .reg_index_valid(reg_index_valid),
    .s_axis_delta_tdata(s_axis_delta_tdata),
    .s_axis_delta_tvalid(s_axis_delta_tvalid),
    .m_bram_int_rdaddr(m_bram_int_rdaddr),
    .m_bram_int_wraddr(m_bram_int_wraddr),
    .m_bram_int_clk(m_bram_int_clk),
    .m_bram_int_rddata(m_bram_int_rddata),
    .m_bram_int_wrdata(m_bram_int_wrdata),
    .m_bram_int_rst(m_bram_int_rst),
    .m_bram_int_we(m_bram_int_we),
    .m_axis_phase_tdata(m_axis_phase_tdata),
    .m_axis_phase_tvalid(m_axis_phase_tvalid),
    .sync(sync)
  );
endmodule
