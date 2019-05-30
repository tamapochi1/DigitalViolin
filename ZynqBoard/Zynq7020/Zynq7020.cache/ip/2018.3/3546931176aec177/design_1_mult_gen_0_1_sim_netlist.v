// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 28 19:38:52 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_gen_0_1_sim_netlist.v
// Design      : design_1_mult_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
