// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct  5 20:39:03 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mixer_0_0/design_1_mixer_0_0_sim_netlist.v
// Design      : design_1_mixer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mixer_0_0,mixer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mixer,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mixer_0_0
   (S1,
    S2,
    O1,
    O2);
  input [15:0]S1;
  input [15:0]S2;
  output [15:0]O1;
  output [15:0]O2;

  wire [15:0]O2;
  wire [15:0]S1;
  wire [15:0]S2;

  assign O1[15:0] = O2;
  design_1_mixer_0_0_mixer inst
       (.O2(O2),
        .S1(S1),
        .S2(S2));
endmodule

(* ORIG_REF_NAME = "mixer" *) 
module design_1_mixer_0_0_mixer
   (O2,
    S1,
    S2);
  output [15:0]O2;
  input [15:0]S1;
  input [15:0]S2;

  wire [15:0]O2;
  wire \O2[0]_INST_0_i_1_n_0 ;
  wire \O2[0]_INST_0_i_2_n_0 ;
  wire \O2[0]_INST_0_i_3_n_0 ;
  wire \O2[0]_INST_0_i_4_n_0 ;
  wire \O2[0]_INST_0_n_0 ;
  wire \O2[0]_INST_0_n_1 ;
  wire \O2[0]_INST_0_n_2 ;
  wire \O2[0]_INST_0_n_3 ;
  wire \O2[12]_INST_0_i_1_n_0 ;
  wire \O2[12]_INST_0_i_2_n_0 ;
  wire \O2[12]_INST_0_i_3_n_0 ;
  wire \O2[12]_INST_0_i_4_n_0 ;
  wire \O2[12]_INST_0_n_1 ;
  wire \O2[12]_INST_0_n_2 ;
  wire \O2[12]_INST_0_n_3 ;
  wire \O2[4]_INST_0_i_1_n_0 ;
  wire \O2[4]_INST_0_i_2_n_0 ;
  wire \O2[4]_INST_0_i_3_n_0 ;
  wire \O2[4]_INST_0_i_4_n_0 ;
  wire \O2[4]_INST_0_n_0 ;
  wire \O2[4]_INST_0_n_1 ;
  wire \O2[4]_INST_0_n_2 ;
  wire \O2[4]_INST_0_n_3 ;
  wire \O2[8]_INST_0_i_1_n_0 ;
  wire \O2[8]_INST_0_i_2_n_0 ;
  wire \O2[8]_INST_0_i_3_n_0 ;
  wire \O2[8]_INST_0_i_4_n_0 ;
  wire \O2[8]_INST_0_n_0 ;
  wire \O2[8]_INST_0_n_1 ;
  wire \O2[8]_INST_0_n_2 ;
  wire \O2[8]_INST_0_n_3 ;
  wire [15:0]S1;
  wire [15:0]S2;
  wire [3:3]\NLW_O2[12]_INST_0_CO_UNCONNECTED ;

  CARRY4 \O2[0]_INST_0 
       (.CI(1'b0),
        .CO({\O2[0]_INST_0_n_0 ,\O2[0]_INST_0_n_1 ,\O2[0]_INST_0_n_2 ,\O2[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(S1[3:0]),
        .O(O2[3:0]),
        .S({\O2[0]_INST_0_i_1_n_0 ,\O2[0]_INST_0_i_2_n_0 ,\O2[0]_INST_0_i_3_n_0 ,\O2[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[0]_INST_0_i_1 
       (.I0(S1[3]),
        .I1(S2[3]),
        .O(\O2[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[0]_INST_0_i_2 
       (.I0(S1[2]),
        .I1(S2[2]),
        .O(\O2[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[0]_INST_0_i_3 
       (.I0(S1[1]),
        .I1(S2[1]),
        .O(\O2[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[0]_INST_0_i_4 
       (.I0(S1[0]),
        .I1(S2[0]),
        .O(\O2[0]_INST_0_i_4_n_0 ));
  CARRY4 \O2[12]_INST_0 
       (.CI(\O2[8]_INST_0_n_0 ),
        .CO({\NLW_O2[12]_INST_0_CO_UNCONNECTED [3],\O2[12]_INST_0_n_1 ,\O2[12]_INST_0_n_2 ,\O2[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,S1[14:12]}),
        .O(O2[15:12]),
        .S({\O2[12]_INST_0_i_1_n_0 ,\O2[12]_INST_0_i_2_n_0 ,\O2[12]_INST_0_i_3_n_0 ,\O2[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[12]_INST_0_i_1 
       (.I0(S1[15]),
        .I1(S2[15]),
        .O(\O2[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[12]_INST_0_i_2 
       (.I0(S1[14]),
        .I1(S2[14]),
        .O(\O2[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[12]_INST_0_i_3 
       (.I0(S1[13]),
        .I1(S2[13]),
        .O(\O2[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[12]_INST_0_i_4 
       (.I0(S1[12]),
        .I1(S2[12]),
        .O(\O2[12]_INST_0_i_4_n_0 ));
  CARRY4 \O2[4]_INST_0 
       (.CI(\O2[0]_INST_0_n_0 ),
        .CO({\O2[4]_INST_0_n_0 ,\O2[4]_INST_0_n_1 ,\O2[4]_INST_0_n_2 ,\O2[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(S1[7:4]),
        .O(O2[7:4]),
        .S({\O2[4]_INST_0_i_1_n_0 ,\O2[4]_INST_0_i_2_n_0 ,\O2[4]_INST_0_i_3_n_0 ,\O2[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[4]_INST_0_i_1 
       (.I0(S1[7]),
        .I1(S2[7]),
        .O(\O2[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[4]_INST_0_i_2 
       (.I0(S1[6]),
        .I1(S2[6]),
        .O(\O2[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[4]_INST_0_i_3 
       (.I0(S1[5]),
        .I1(S2[5]),
        .O(\O2[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[4]_INST_0_i_4 
       (.I0(S1[4]),
        .I1(S2[4]),
        .O(\O2[4]_INST_0_i_4_n_0 ));
  CARRY4 \O2[8]_INST_0 
       (.CI(\O2[4]_INST_0_n_0 ),
        .CO({\O2[8]_INST_0_n_0 ,\O2[8]_INST_0_n_1 ,\O2[8]_INST_0_n_2 ,\O2[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(S1[11:8]),
        .O(O2[11:8]),
        .S({\O2[8]_INST_0_i_1_n_0 ,\O2[8]_INST_0_i_2_n_0 ,\O2[8]_INST_0_i_3_n_0 ,\O2[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[8]_INST_0_i_1 
       (.I0(S1[11]),
        .I1(S2[11]),
        .O(\O2[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[8]_INST_0_i_2 
       (.I0(S1[10]),
        .I1(S2[10]),
        .O(\O2[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[8]_INST_0_i_3 
       (.I0(S1[9]),
        .I1(S2[9]),
        .O(\O2[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O2[8]_INST_0_i_4 
       (.I0(S1[8]),
        .I1(S2[8]),
        .O(\O2[8]_INST_0_i_4_n_0 ));
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
