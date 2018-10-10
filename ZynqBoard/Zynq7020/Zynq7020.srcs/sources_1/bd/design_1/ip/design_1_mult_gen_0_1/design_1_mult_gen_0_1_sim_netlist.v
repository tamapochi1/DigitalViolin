// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Oct  7 17:39:45 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_0_1 -prefix
//               design_1_mult_gen_0_1_ design_1_mult_gen_0_1_sim_netlist.v
// Design      : design_1_mult_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 30}" *) output [29:0]P;

  wire [15:0]A;
  wire [13:0]B;
  wire CLK;
  wire [29:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_mult_gen_0_1_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "29" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_mult_gen_0_1_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [13:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [29:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [13:0]B;
  wire CLK;
  wire [29:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "29" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_mult_gen_0_1_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QwRhevv3V9GJUYMycMcEwm2/a6HVVhAUDScm4yEt5XMcKUtmOyQBeXd0LhUM7n/mu6J2d4k+f1ol
fhBoks8R1fwLdWSdgL7UIDaBmRsT0FQiVhiaN08hZz4TaPQLFhBAQYRCT6jhH1y/CGxXIigDqomS
JP9o54OLCCgPl2Wp3x8eBC8hTPKzR5NyVH56c8bqLR1KPC34RNFRIj/jB+QTvk8fbct9n5GOGqOY
FQOpKLbPL55c3emKPajABHkKZwNWqJhlUpijjyUY1h8iTiNGbvykoiftSi3DS3O/ZgORqXb9pDJJ
RNP8P7jzgJIhqK1i7YYOcUNuRD1PbymtYX9VnQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BsbB6bBLlaASO7jZ/JodmfD82WPjxEBW61ehwt+NcsRq6grWS0RB3dfCiHDUhqOXJG3Pv4dGK9sL
RHQfjrID4L9+3OzPBRJgY67scXsjP+1nHj7p643DbXzGjhpXcIyfNjh4DNtTqZwDEouzhxpaiG1D
LgSB9mBb9ie8gUIh/kJVv5FS7Ku5xD2ESVeJzrOiCf1mSPfk4TovnwrJcPGv3jU2UN0PBLnYmhen
XqGcocsFXHel4CCLlZDjG0TIGlf9naynD8P3EW9OO4el5qNVJ1hBR/o/BY6xiyrZz4uf+LF0C7QZ
PnFkoOptiBDUJZOkKg938U0Dan+YxrUShrQx3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
`pragma protect end_protected
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
