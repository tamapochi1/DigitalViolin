// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Oct  7 17:10:59 2018
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
oMjtIo7WdtBDW14rDuKjJeLjtfxO+A==
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
