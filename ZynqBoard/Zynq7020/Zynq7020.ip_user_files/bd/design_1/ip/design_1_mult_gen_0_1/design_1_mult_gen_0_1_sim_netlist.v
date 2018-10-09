// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct  6 16:44:47 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_0_1/design_1_mult_gen_0_1_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 26} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 26}" *) output [25:0]P;

  wire [15:0]A;
  wire [9:0]B;
  wire CLK;
  wire [25:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "25" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
  input [9:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [25:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [9:0]B;
  wire CLK;
  wire [25:0]P;
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
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
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
LCnTJZU+w1Od/h6p6IeWSmfeUNsgqjCpDcVs5jP4JtdWyKfdzllOjB0SgT+CL2b7zBwRu/SbXn2a
xmIJJJpfwdTaKF+LAulOavL/RzMzoVGsvXA0U7oBacEvO5ZV2SjUK89hli106S/dQlepuk+MnAFQ
Q9AnlLxmBd/qvhoGmUI5sZqSxZQfCHlBJUoHu/5CwswTqBunDbZcLHm00KXRCgBsNKq2AUH8oJZd
8Ivzi8NVaXetDVgxZrXsIbud3SJFSeQwscc2le88HLxYirlpXLucxXkmnX73dhGryWEfL+5RaNNJ
7ofQJOcqLtiUk1puAPw1YuPKEbVt6J+UUabCiw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ufyYfvGfkyII39Uc+jXCGrLoXTzfrmRolfs8S2yDAX5iNAjCMVD6wLKJ7yaE4hLDRLhOR4vidjB6
DZnCSyQu1mz71eOqPAXchYiancXgWiK3lewrPO7iTEBrgU+eoAosTbVEhcV5IckbKo/7vf6JwHgx
NUpRTPvPAp9o6EdoPctzL+pbTNHI43fBTlPMtOxwYyXDTFU0ykVPvws+cRhKPxfdd82RDKDhouBP
ozTOne1YOseYRvWU6hK2nnIdFM3kpCBLv4Yz2Kmh/RFXRgXxUuhAVT1otPzCIj6xZfUtN54neOVC
UMmJFZqa3bOgh2JvrkWnDCDvKaz63iWZILAEag==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
F22x5eEdagDc
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
