// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Oct  7 17:10:59 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_1_0 -prefix
//               design_1_mult_gen_1_0_ design_1_mult_gen_1_0_sim_netlist.v
// Design      : design_1_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_1_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_1_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
  design_1_mult_gen_1_0_mult_gen_v12_0_14 U0
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
module design_1_mult_gen_1_0_mult_gen_v12_0_14
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
  design_1_mult_gen_1_0_mult_gen_v12_0_14_viv i_mult
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
F68mg9OXk2XLlAQ6gJb8lMMderjF88sgvS0g++JgpLy1wZY734oxCPNfs8IXCFes+YxOUfp91g/3
bOeR8IkmXWRdsNGkGoId4mw4RWLAzWgcpBpwj7NT3vf3iJgrR+PRxrd78eQ40l0laJyIfPBooIIi
xrE46heaRqGYwPQZg7iEE2P/+Fw+fZs2aRz5MXUuNlNbHZjgyTBOAZ+uPTgDwINl4f6eMShJv/FL
Dp+QttCzKxRhs0RzVuwDpQn7RjCuDG2aTmV9n0SgfZUmmLDrNOkTAYMsvD9/FUbtOTPbHwi5Ju1f
JyKZV270JHePWUn298xbi7Zm0ybSdiYpogdNCQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aCTkWwJ6dw6HBLnTDx72EBcLeBEDzqJCkWIKJNeMK8EmLKSy9pm/0pwCtQ78ZYReDTS9ppxbs+NV
YuCQ4Jlf8Z1dPE59evem4fc+wCQ7qofkgv4hw5zXlAVRa+FWm8U0ZXUYifWS/3fJKQgwKtaFqP6k
j/Io5/Dc//LdvwKWQgq29I0Yfkat27XTv+NqQDJ1rbMKuwmpJQI+CCXlnVQH8pY567DwjsfnzWsS
pDYbdtY9mMCGvIS7INzG8tR6h6trmcQRfLwncNKpWxbAqajtz0aWewwQVBJeABbeF8FQUOYNH0Og
nj79GcAh9No9GclrOZ9LlL4s0Z5dXoxkVUNXQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14272)
`pragma protect data_block
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
ueaccP1ySn/YETa70CWrzE6g4aAnwWaJ
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
