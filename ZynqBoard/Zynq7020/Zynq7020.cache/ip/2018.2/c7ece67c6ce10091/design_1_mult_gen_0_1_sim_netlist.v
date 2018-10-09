// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct  5 00:21:23 2018
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 98305084, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
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
KbuaDNJZkh732rSWq6ZDjAHHNmG6L6iDM0g0W9tHAmyIzhMjXH63E0jbdDRYiIxaS+Jjwrefi2JM
7M7AmGcSN2FhzbdgEYAtmPALYvP5PlfRpur8yKU5K6PhvbRpWpbdyO0+mId83JKtRgjGmhq/EidQ
CM4FZVR4p+M8KOEXqrAFteHjgOel2pAHfXhi42EDTvyBN4IIPGZhcnqxyyXAWAX6g2vadoOrBHBb
xm/oG218H0PjrUWtf5/ARsOKx0ZNsn+4WwtrpdR1jlLOoOkBasRDvb7Nwa1W9tWbR2RZSiymmBX1
4ZUhTvLwV41QxO4er4YikzflRqFV24iYNtWu3A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2/8LpjO0JaOjNXlYR/2L9uUEF0vvSNXGqJ3elkkbqa/nQZhQRsF0BZo1jHb/6YfB7B1x8owjM+MK
PkiOplS5T0A/5QXeNURlqHv0Itu4Wc7kHJVmh6U4Ik3ZGebP3nLv/CDzeh+ia/G+XbfHqtBZ/kyU
e8a9QhZXKG5dBxUOrjZ7SjHaY2f6a7BeRTTEYfEjvcgQ5qV+TazpXTDnHBAFW0+lHQk2U5rqrsVC
BBR/sjiUnWOXqMy42LbqjsAAsh1lD2LL06Gd7mB4jG8Lxjjbh0TWl10dNFNFyMCubu+/48NqduTJ
ebJXKEW8fMlw89uzjTJ8F23jsGYshnPrmMBhtg==

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
