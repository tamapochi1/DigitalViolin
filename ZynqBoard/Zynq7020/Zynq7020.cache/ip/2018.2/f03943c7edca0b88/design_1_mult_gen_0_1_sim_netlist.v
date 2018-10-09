// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct  3 20:47:00 2018
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 12288000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
FInG7/J8QU01MBfAFGPRbkf0bvX4YF7pQ0yiG5Fa7mPqniWVzxO0rfr75hh3h1W+a16wYRlgt0gi
9gMAhAbdO6lF2eAA/Kl6WkJjh9tUD4NnnhFYm9UJb+X56xP72Vigv2mJlBjwnqqASam6a187l3zB
ImCrNC+WTqVzT1RxMPForWm+LhqF2afzmWQMYfmthBm9jmDzbiaY1sbL7o7QWQH7b6yDiKMqfA4j
if76s6G/2OHmcz+vLKUvm/+6kARkF0xKnLlaySaFa3/81NhrGBDn54wgMBN8w/zAvCJ4DiIrmWh9
olbaKdcR27V/h+uaE7ggnBn3G/+Wi10R7Vzv6g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ASXfp/Axs69rC2nb817xnwozebgI5pvX3sK6/nBXfq2U1yQrEsEMikp0pClbNeeemd6bgBpdj1LH
/lEqcd93GNoQ2JNVs59o566YnpY/+ufUPS8v6q1jjq1qEBZ/rKAdutxRtKI5mq/onOVYNmWX4+mR
dbSi0+ZId2pWhKyBD+FqNVFtc0fUAdNk/7P5EcSn5H+U5D2lL8fc6JBy9YoYAlEJp96s0CRZB3BP
+c6b/AxuoaoYJpzCB+r3iU0G/jLH8l65VoA1TSZ8FDGyNp10UHSmRm+OPYC08UxuFfiRAmHqO+4U
fhPdZemcnL/yyHxQIoEK+dEeEkBLpEgH1cg6cQ==

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
