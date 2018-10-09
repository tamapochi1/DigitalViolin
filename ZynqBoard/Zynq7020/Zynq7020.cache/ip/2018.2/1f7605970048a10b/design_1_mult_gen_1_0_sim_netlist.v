// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:50:06 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_gen_1_0_sim_netlist.v
// Design      : design_1_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_1_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 36} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 36}" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "18" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "35" *) 
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
  input [17:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [35:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "35" *) 
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
        .PCASC(PCASC),
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
Iwo/C50qUJDBDxIrd/XYNDG3Y8PPBxAADB1X1bu4xVp5IlJBjiZ+O1QZial6ylRep5HulkDsuZg7
ObV7buYDyLr8j9tL35OJkMbU+CYXaX5pkVVjkMkvCYJxh3PcGHJjqNgD1jBkd51eq4IDHKwg3YIy
Z0JKGuu8ICtd2rQZXdm10KHFC9lUlyrF0dHpjhkjrUssug89c8dp2oxDUeIvTQUbKNBBRRnn6NvZ
VIFBnLa3DfgaqLENG0rA6RBa5UeGahT1nit7ZvjWo2pq6zGhbW0O4ElCqVTU/UmyRC4N5FycJdzr
pgt5DKdbbuTiPAU49iCUiAK74PP6SPyCRtiBXQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QuOEKF1RP2jU9pi7kMoHfMvpkYAe9Etw0ga5rttsym0HWPk+RELvKWjFwkh7Go+2L5oRC55wiTyh
GU+EbVKxZJOBErdtXON0onmA4IrrufzAnby5rVHajMeG6rhjAkuVnn1OSg0OeVOTq5fGsF6uIezJ
g+H3MerreWij+U6bby6Qy8EwmdswYRmTUk2IAp6vA/5qpEATVr2oXGTjc8nRd2JHl3N4MxGu6mmX
Plvtghxd0ON2YRmya3baUitqETxeSpCbCi5DZb9gLowVTHIqRzBMh7Ffq6c9sRwqylXwaE8P/73a
DxE7iWGiaLvrWNd14aHFwIMGHfJcW1/MeND9Ug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14272)
`pragma protect data_block
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
AhMsMEGqlJfqLMYdWHc9rHteQB49CA==
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
