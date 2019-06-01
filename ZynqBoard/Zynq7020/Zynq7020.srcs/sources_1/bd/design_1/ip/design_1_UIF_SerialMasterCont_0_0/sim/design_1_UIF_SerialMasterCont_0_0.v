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


// IP VLNV: xilinx.com:module_ref:UIF_SerialMasterController:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_UIF_SerialMasterCont_0_0 (
  nReset,
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
  busy
);

input wire nReset;
input wire sysClk;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_SCK" *)
output wire UIF_Master_H_SCK;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_RXD" *)
input wire UIF_Master_H_RXD;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Master:1.0 UIF_Master H_TXD" *)
output wire UIF_Master_H_TXD;
output wire SPI_Master_CSn;
input wire start;
input wire [11 : 0] txFifoCount;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_SCK" *)
output wire internal_S_SCK;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_RXD" *)
input wire internal_S_RXD;
(* X_INTERFACE_INFO = "tamapochi1:user:UIF_Slave:1.0 internal S_TXD" *)
output wire internal_S_TXD;
output wire busy;

  UIF_SerialMasterController #(
    .preScale(24)
  ) inst (
    .nReset(nReset),
    .sysClk(sysClk),
    .UIF_Master_H_SCK(UIF_Master_H_SCK),
    .UIF_Master_H_RXD(UIF_Master_H_RXD),
    .UIF_Master_H_TXD(UIF_Master_H_TXD),
    .SPI_Master_CSn(SPI_Master_CSn),
    .start(start),
    .txFifoCount(txFifoCount),
    .internal_S_SCK(internal_S_SCK),
    .internal_S_RXD(internal_S_RXD),
    .internal_S_TXD(internal_S_TXD),
    .busy(busy)
  );
endmodule
