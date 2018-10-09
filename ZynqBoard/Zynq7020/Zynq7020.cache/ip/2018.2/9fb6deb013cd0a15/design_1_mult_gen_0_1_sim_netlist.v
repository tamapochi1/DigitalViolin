// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Oct  4 17:44:31 2018
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
kuVhrP5sGipKGVZ1CCgs5RcEaB4zUIQOH5KogfPUa0Oh99XYo/+pRsEKGX1HGSrzhmihHjBa8DM7
lTUYOTI4Wybx2jrFngqiXitIZB4rX7pDXXZJnMsGchvoq3LPo90GaaChaRsDmB3q9hD5quSBYKwM
tZ4Mvxu5LLermCFqIWeDfM2W6Zj0DNDR+cxo/JrqYmcC7QyReMj3bBFvxNl4wTsY8JgFeQtw3y23
OKURmE9DAIGEn8fAvsl7E1QzcNj4A0Ur5Qsw+UC7nEnO35OvN8ldFB7lDdw5RxJExnMeUW7ijaWn
7ePJVE0PH5xceEc12TA+hKX3FV4W+4O58mU9mg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
56gPhbu5V/MY9PASXNWVqBOKZ0Uk+bIy1SEVlWtUuOwoI5AVyI7zAwTRUdUC6XqVk73o3G/6LwDt
lErT7ZIq3jtb9d3DrLaMQkWgynkWaW4I06Znqr43tqLHL2Hc8APaTENxeKgapcFW57zLRp7kfc8t
u25QSOBc2ARbwNTuv8FTNXg+6IkSs6pa/X+FmTs7zRxI2DpKFH0YUtksANqMVtzaHIz+RgFt2kVE
SXPZoM6QJ/Me/Sr1MGgZM5BqGL8j7ggc7VnaVZRYYuA+g6bv8vDu/T+MYNsg1WSEsMrzH5wnaM0G
2BGHzcu5p01NOaKAedEx35XRSrNjP8yXvv2HYA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
+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
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
