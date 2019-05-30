// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 28 19:38:52 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_0_1 -prefix
//               design_1_mult_gen_0_1_ design_1_mult_gen_0_1_sim_netlist.v
// Design      : design_1_mult_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "29" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
DkzDXiFOCLkOAmDL/+/Oxh6y8u7Cx7ejfflxJ15SiLY310eDrZu5U5klJzjRpp1y1lfoJ400qZKQ
kB7ODHTv1tXqrqJDKe1YSWAxXea7Ol/CNcVLRvI/xFaAKmpwdVpw19p6FMkzz736UdPtyF9XYX3j
xpOJ4jGvxdmY0JF4BGJPb+rxbNTXf9w2WoGEZteC/mv/aTCkFfzVV2KRI7Zqy98eN3SeZhMk6PXj
xNxE+eK9XYkd+EInd5NdYrpcLESYw2Rbs4TkCvJAzJtp8PpF8AiJpoXqepSvY3Z0+/zE2NwwXF4E
93paCX+6dtG/7FYcU/qI+11rcxEFzXtxCN9ijw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t/Fkh6BYqJnbhRVivYsYzuQ9Bk1ppd2jvLN/1mVOWe2jo4z5K/C5rTGreMa64r1tVsjzevnEp7CG
E+Y/sMpdKP3tnXrJWQhLaXAJxBRsp/JdcLWFWOWH8GQ+bs5MAu/VJu9dceagsLcja+vOoxpTKC9S
CVB1Yz5gNHRoPh8A9g7phiL5Rz2L1iFxiT6KaNtmwFApuTZUsAg45hj0t0KOFbsz5QAx8gCmLpXv
hFvgWfFCH3tMp/XJU1oMo1KGuKujUOCK3ZI2/vdZSKpOM7jTKTO0cFpOj/5hPgUYBIwVThqQut5J
MUOuOdfXMjC2hDZIn093/2yq9UJxSHag1GzlYQ==

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
