// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 24 02:19:28 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_mult_gen_1_0 -prefix
//               design_1_mult_gen_1_0_ design_1_mult_gen_1_0_sim_netlist.v
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
MY12e4adE+HcaIB5i6jUcRq9OAqdiHwIdjT3B3obMzOfv7p/nP9IvFe7r6wTFi7dqOCfoHBAxlvc
ZblL5t3ViN9sd1ZkUUH3ftsYeVWxT4TJnA+fB6+GO2hlKgOp6iZ8UJ5pPVcatwOB5pUNhClaYiLR
nnrqJ/dP9QFIDaMM+cVpXrMu5ZU6dzx5iR5/UsnsmM3sXoGyWB4SJW+QO6/u0zZBrR5/izHCompV
WJXmdAjqDG5yxbPz7RTRxbAWWTNk/m3K0fLLed60zFMrn0NkWBS+BsK2CWzfuUOYm66lal+pzth6
aGPtT0CSVmbi5okga8vrHlEjjAjI7NmiXfO8pw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fJXgLedM9yN0pkA5QPX4iY7ZJDOvyUcEFVqQURdiqx4wVBzKT7exKLlap/qNuT3JfeOZtYwafeZY
jw00aA335+EzK/snRvxFVu0dkY6/4WSKBsfYxTPjPHiazlo2FnYvFxBmFsJHhLZhxKwBcyFXxDZs
OqUt5sTbeg/IVW5wUyJ4dFtiRZFp7zN96kFvejrPmKzWdewMSkFPeYjzQhQiG8Pvm3pRiE1Arvgr
e32A4DGLxgjLDxrQ7im0dC4RDN96YDd7qgFKWR88PlY8HXPW1CCz6E2whex4O4GAVNS0Mnn5deCi
l3wjkaGSPMUBny7KD+h6MLb8XPzAneH6oX0HjA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14272)
`pragma protect data_block
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
GBouJ6ckj99SacuF0elHSp/0Ggu2TU02
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
