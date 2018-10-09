// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:50:07 2018
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
qijZ8VPL4+PBA6332lLkZuG9oUD3gX6+Jjk48afcdf1SNWV42B9ykX1ubZvINMYYBouy58h0e4O8
3/n9gD3xS9j7QlUMI6yJEYxHuYtD9i7qSCA9QV11SFQoAYl6hxWhftJut1GhNjQaRqsQ4A5kryig
6192J+p1ItH29KAPsAPiuOCzbOGBpXNAOEL5j9jhfhWDzreBrF9UR6As3MO2cK9v63M3o6Wf2z3r
qqc1c1IEkJ4HmGf9FiHd8qrLyVJpd948BBnoIHgCWYJa49zK/mNL8fFXNHpfTRA/vkW/YMag5jDL
0FjCGptvDqLcLgzqkA4kXWdtH3sEh3uY1uQ6og==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rzHe6MsfuDtgpqjWyXTP4T74EVcqrAEnpGBbyokRlKmrngUodklQJHJw1aJ1p28xTcnItny/pPe1
4v7KTTd4kMmmIEY752fiYtF7D190Ve8WS5xxvddjIvtrcml+gf8my+IU/4ZZkHqTkexukOHdwKG8
VFZTQuKFUtzP7ze8fBUeHbCX0j51NUCUglXSwZd9Riba5JPrIsFrS5NZfMkHWQ2Jtf7cOxZmAi+S
n0Ca5eczNZgjaGPsbTMxeqjsTkDH0TiNApWuHH9Kb372kAi2CsM7B/VWEGDMbc7sxlmIWjwY3b7b
Pq/4QD42bnt3x8vK5VTKx8rlLnSQK6z3qkcrfA==

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
