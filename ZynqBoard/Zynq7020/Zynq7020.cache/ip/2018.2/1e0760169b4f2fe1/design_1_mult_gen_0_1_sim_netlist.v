// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Oct  6 16:44:45 2018
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "25" *) 
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
SkhudCmc3l0hnN1Og0ixfAw7JYUi0t+umVzsmoUVzLEd9l0XfXtMmuPCYj1mDJ6tQqsOMzmohn7J
XqPWka6ztDKyfRo3ohBRdUvUjfwSHGIIRoj7VBXA+g2nhVxzY4V7pnLu2bHVSM8PZsuypXlj29CY
UzheqlmTQ99U5HevUsW5C4dYxljODY4MvhTsRAZGTlN6y5zVIPHz76/9m4h9wuX4ULJJRz5tgjDk
re0HLo5Ic0n+WPiZO4QnZkRRi2vUlx/OZZOAqI60KoeNl110346gccd5QI7X5mPVLkufRLQIGtx1
FCXNPy5LF3A/iFt9DGD33GYUMgjKl6meB/mZxw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E1+5fA+nqTjq+Egd2lM0K/Q+5qFA9o0jAlHzpgGHYa+dcAWejUeA4lOAGh786PYDdpOazTm2+UC5
IHHDgjgfAoGithZubJMLiLIbx5Egc99mekGat0b47H1DgzfAj7ZHXwPd9ca0P5/x6gjeOMZ6T9qy
ZZ1P3uj55PQqo17ykViIoCptOnxpBQmcq1OkJ3d+DRUerRWk6MmB/qSW9FZuyHM4j/BG9h+qleRI
7tCRbGbhnOC2vo5qR2ur8v75qZfDccngwE7VQd/LQg4ii1KasTWO88viYZbiNesYb1SGYqk3TmAJ
6DzH4UVHWnk2kyDEp6yisZ5hQTnMPx60mHHuVA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
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
