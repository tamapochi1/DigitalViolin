// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 24 02:19:28 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mult_gen_1_0_sim_netlist.v
// Design      : design_1_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_1_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
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
XPM27C960ULQqufyi7TbwCAXWDLWFA==
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
