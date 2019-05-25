// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 24 02:19:29 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_1_0/design_1_mult_gen_1_0_sim_netlist.v
// Design      : design_1_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_1_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c69l0lv3u9wmlkERzqJzrfw7TzqIk/uc4Ear8lVOARi7cJtwds/vO4NBhp8VoUJ57nskVFjjKFl3
BP3qX1GuUB7ZlGK4+IyH91rsyKKZg1HuuYz5kW4+q+vMPsO6upKCC2CZneZdMomGgvNIxeAu7Mf/
N5q1NJirYEDEVSZEacskkFKHiA2bd7AhgsBV204AeUBMcA+p2OR8XW8u6WpxzwPfqzwZZQdMbEZ7
N1gjML0fZU1BFBWb3KH5KzN1exQoqlzj9a5JaWkDCTJFMvmFrYZuTL4NYQSZaFnArVxxsPoVEtKb
OzvDdbmPouK98M0nBn+SIFH4vo5Jdv5rwPBNdw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nluXq+qRpnOXl8aw6PvVkIa0TWzFAHUIFTdmsIGt0rG9F5iAk4C7OSq8HO3XdTuv85cZkUsDJYQQ
62SW19RueuFNehXe1OUloX57vhzcLrQBvcl4yLfTruogS73HYHBbo2p1hW7nfiiuFs4orAtv/HSn
RAkz+Oup8S69Yld5sDtZi9hX9QkwoqlGaucmG1H1N02siXM33l2bQT0aqTqe0994pu48hxj0zs2R
dzUj6cOd97g/UHhHpDR5ICUfU25jTwG8lPFBn/sVI2KtEQMPW4ODoh28YiGPjbpsCSQJfnwQBs5O
MKk4iH05ArQiUNIoT3YTimxFgHv7RFP4zCHUng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14240)
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
