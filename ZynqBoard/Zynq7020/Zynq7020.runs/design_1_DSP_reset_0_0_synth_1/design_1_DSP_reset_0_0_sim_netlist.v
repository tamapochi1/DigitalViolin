// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct 13 15:27:54 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DSP_reset_0_0_sim_netlist.v
// Design      : design_1_DSP_reset_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_reset
   (nResetSysClk,
    nResetAudio256Clk,
    nResetExt,
    sysClk,
    nResetInt,
    audio256Clk);
  output nResetSysClk;
  output nResetAudio256Clk;
  input nResetExt;
  input sysClk;
  input nResetInt;
  input audio256Clk;

  wire audio256Clk;
  wire nResetAudio256Clk;
  (* async_reg = "true" *) wire [1:0]nResetAudio256ClkBuf;
  wire nResetExt;
  wire nResetInt;
  wire nResetSysClk;
  (* async_reg = "true" *) wire [1:0]nResetSysClkBuf;
  wire sysClk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \nResetAudio256ClkBuf_reg[0] 
       (.C(audio256Clk),
        .CE(1'b1),
        .D(nResetAudio256ClkBuf[1]),
        .Q(nResetAudio256ClkBuf[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \nResetAudio256ClkBuf_reg[1] 
       (.C(audio256Clk),
        .CE(1'b1),
        .D(nResetInt),
        .Q(nResetAudio256ClkBuf[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    nResetAudio256Clk_INST_0
       (.I0(nResetAudio256ClkBuf[0]),
        .I1(nResetExt),
        .O(nResetAudio256Clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \nResetSysClkBuf_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(nResetSysClkBuf[1]),
        .Q(nResetSysClkBuf[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \nResetSysClkBuf_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(nResetExt),
        .Q(nResetSysClkBuf[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    nResetSysClk_INST_0
       (.I0(nResetSysClkBuf[0]),
        .I1(nResetInt),
        .O(nResetSysClk));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_DSP_reset_0_0,DSP_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DSP_reset,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nResetExt,
    nResetInt,
    sysClk,
    audio256Clk,
    nResetSysClk,
    nResetAudio256Clk);
  input nResetExt;
  input nResetInt;
  input sysClk;
  input audio256Clk;
  output nResetSysClk;
  output nResetAudio256Clk;

  wire audio256Clk;
  wire nResetAudio256Clk;
  wire nResetExt;
  wire nResetInt;
  wire nResetSysClk;
  wire sysClk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_reset inst
       (.audio256Clk(audio256Clk),
        .nResetAudio256Clk(nResetAudio256Clk),
        .nResetExt(nResetExt),
        .nResetInt(nResetInt),
        .nResetSysClk(nResetSysClk),
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
