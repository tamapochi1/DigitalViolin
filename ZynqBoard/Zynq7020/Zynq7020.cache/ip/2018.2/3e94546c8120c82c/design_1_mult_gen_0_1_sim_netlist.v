// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Oct  7 17:39:45 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_gen_0_1_sim_netlist.v
// Design      : design_1_mult_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
