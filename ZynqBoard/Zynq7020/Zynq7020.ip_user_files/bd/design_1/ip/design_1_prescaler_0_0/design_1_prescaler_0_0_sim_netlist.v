// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:09 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_prescaler_0_0/design_1_prescaler_0_0_sim_netlist.v
// Design      : design_1_prescaler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_prescaler_0_0,prescaler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "prescaler,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_prescaler_0_0
   (clk,
    nReset,
    clkOut);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input nReset;
  output clkOut;

  wire clk;
  wire clkOut;
  wire nReset;

  design_1_prescaler_0_0_prescaler inst
       (.clk(clk),
        .clkOut(clkOut),
        .nReset(nReset));
endmodule

(* ORIG_REF_NAME = "prescaler" *) 
module design_1_prescaler_0_0_prescaler
   (clkOut,
    nReset,
    clk);
  output clkOut;
  input nReset;
  input clk;

  wire clk;
  wire clkOut;
  wire clkOutReg_i_1_n_0;
  wire clkOutReg_i_2_n_0;
  wire clkOutReg_i_3_n_0;
  wire nReset;
  wire [9:0]p_0_in;
  wire \preScaler[9]_i_1_n_0 ;
  wire \preScaler[9]_i_3_n_0 ;
  wire [9:0]preScaler_reg__0;

  LUT4 #(
    .INIT(16'h8828)) 
    clkOutReg_i_1
       (.I0(nReset),
        .I1(clkOut),
        .I2(clkOutReg_i_2_n_0),
        .I3(clkOutReg_i_3_n_0),
        .O(clkOutReg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    clkOutReg_i_2
       (.I0(preScaler_reg__0[2]),
        .I1(preScaler_reg__0[3]),
        .I2(preScaler_reg__0[0]),
        .I3(preScaler_reg__0[1]),
        .I4(preScaler_reg__0[9]),
        .I5(preScaler_reg__0[8]),
        .O(clkOutReg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clkOutReg_i_3
       (.I0(preScaler_reg__0[5]),
        .I1(preScaler_reg__0[4]),
        .I2(preScaler_reg__0[7]),
        .I3(preScaler_reg__0[6]),
        .O(clkOutReg_i_3_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clkOutReg_reg
       (.C(clk),
        .CE(1'b1),
        .D(clkOutReg_i_1_n_0),
        .Q(clkOut),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \preScaler[0]_i_1 
       (.I0(preScaler_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \preScaler[3]_i_1 
       (.I0(preScaler_reg__0[2]),
        .I1(preScaler_reg__0[0]),
        .I2(preScaler_reg__0[1]),
        .I3(preScaler_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \preScaler[4]_i_1 
       (.I0(preScaler_reg__0[3]),
        .I1(preScaler_reg__0[1]),
        .I2(preScaler_reg__0[0]),
        .I3(preScaler_reg__0[2]),
        .I4(preScaler_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \preScaler[5]_i_1 
       (.I0(preScaler_reg__0[4]),
        .I1(preScaler_reg__0[2]),
        .I2(preScaler_reg__0[0]),
        .I3(preScaler_reg__0[1]),
        .I4(preScaler_reg__0[3]),
        .I5(preScaler_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \preScaler[6]_i_1 
       (.I0(\preScaler[9]_i_3_n_0 ),
        .I1(preScaler_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \preScaler[7]_i_1 
       (.I0(preScaler_reg__0[6]),
        .I1(\preScaler[9]_i_3_n_0 ),
        .I2(preScaler_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \preScaler[8]_i_1 
       (.I0(preScaler_reg__0[7]),
        .I1(\preScaler[9]_i_3_n_0 ),
        .I2(preScaler_reg__0[6]),
        .I3(preScaler_reg__0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFF555555D5555555)) 
    \preScaler[9]_i_1 
       (.I0(nReset),
        .I1(preScaler_reg__0[3]),
        .I2(preScaler_reg__0[2]),
        .I3(preScaler_reg__0[8]),
        .I4(preScaler_reg__0[9]),
        .I5(clkOutReg_i_3_n_0),
        .O(\preScaler[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \preScaler[9]_i_2 
       (.I0(preScaler_reg__0[8]),
        .I1(preScaler_reg__0[6]),
        .I2(\preScaler[9]_i_3_n_0 ),
        .I3(preScaler_reg__0[7]),
        .I4(preScaler_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \preScaler[9]_i_3 
       (.I0(preScaler_reg__0[4]),
        .I1(preScaler_reg__0[2]),
        .I2(preScaler_reg__0[0]),
        .I3(preScaler_reg__0[1]),
        .I4(preScaler_reg__0[3]),
        .I5(preScaler_reg__0[5]),
        .O(\preScaler[9]_i_3_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(preScaler_reg__0[0]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(preScaler_reg__0[1]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(preScaler_reg__0[2]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(preScaler_reg__0[3]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(preScaler_reg__0[4]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(preScaler_reg__0[5]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(preScaler_reg__0[6]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(preScaler_reg__0[7]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(preScaler_reg__0[8]),
        .R(\preScaler[9]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \preScaler_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(preScaler_reg__0[9]),
        .R(\preScaler[9]_i_1_n_0 ));
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
