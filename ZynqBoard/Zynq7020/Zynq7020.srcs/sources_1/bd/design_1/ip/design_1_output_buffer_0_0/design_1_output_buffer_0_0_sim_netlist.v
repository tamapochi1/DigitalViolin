// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Sep 27 15:14:15 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_output_buffer_0_0/design_1_output_buffer_0_0_sim_netlist.v
// Design      : design_1_output_buffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_output_buffer_0_0,output_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "output_buffer,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_output_buffer_0_0
   (nReset,
    sysClk,
    s_axis_in_tdata,
    s_axis_in_tvalid,
    outData);
  input nReset;
  input sysClk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_in TDATA" *) input [31:0]s_axis_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_in TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 12288000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency complex_width format long minimum {} maximum {}} value 16} stride {attribs {resolve_type generated dependency complex_stride format long minimum {} maximum {}} value 16} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} real {fixed {fractwidth {attribs {resolve_type generated dependency complex_fractwidth format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cartesian_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cartesian_tuser} enabled {attribs {resolve_type generated dependency cart_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cart_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_phase_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value phase_tuser} enabled {attribs {resolve_type generated dependency phase_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency phase_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency phase_offset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER_WIDTH 0}" *) input s_axis_in_tvalid;
  output [15:0]outData;

  wire nReset;
  wire [15:0]outData;
  wire [31:0]s_axis_in_tdata;
  wire s_axis_in_tvalid;
  wire sysClk;

  design_1_output_buffer_0_0_output_buffer inst
       (.nReset(nReset),
        .outData(outData),
        .s_axis_in_tdata(s_axis_in_tdata[31:16]),
        .s_axis_in_tvalid(s_axis_in_tvalid),
        .sysClk(sysClk));
endmodule

(* ORIG_REF_NAME = "output_buffer" *) 
module design_1_output_buffer_0_0_output_buffer
   (outData,
    s_axis_in_tvalid,
    s_axis_in_tdata,
    sysClk,
    nReset);
  output [15:0]outData;
  input s_axis_in_tvalid;
  input [15:0]s_axis_in_tdata;
  input sysClk;
  input nReset;

  wire nReset;
  wire [15:0]outData;
  wire p_0_in;
  wire [15:0]s_axis_in_tdata;
  wire s_axis_in_tvalid;
  wire sysClk;

  LUT1 #(
    .INIT(2'h1)) 
    \dataBuffer[15]_i_1 
       (.I0(nReset),
        .O(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[0] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[0]),
        .Q(outData[0]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[10] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[10]),
        .Q(outData[10]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[11] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[11]),
        .Q(outData[11]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[12] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[12]),
        .Q(outData[12]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[13] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[13]),
        .Q(outData[13]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[14] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[14]),
        .Q(outData[14]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[15] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[15]),
        .Q(outData[15]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[1] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[1]),
        .Q(outData[1]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[2] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[2]),
        .Q(outData[2]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[3] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[3]),
        .Q(outData[3]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[4] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[4]),
        .Q(outData[4]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[5] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[5]),
        .Q(outData[5]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[6] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[6]),
        .Q(outData[6]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[7] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[7]),
        .Q(outData[7]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[8] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[8]),
        .Q(outData[8]),
        .R(p_0_in));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \dataBuffer_reg[9] 
       (.C(sysClk),
        .CE(s_axis_in_tvalid),
        .D(s_axis_in_tdata[9]),
        .Q(outData[9]),
        .R(p_0_in));
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
