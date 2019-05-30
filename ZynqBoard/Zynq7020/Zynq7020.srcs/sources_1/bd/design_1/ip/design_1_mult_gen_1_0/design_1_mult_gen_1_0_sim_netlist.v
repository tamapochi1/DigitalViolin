// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 28 19:39:27 2019
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
rJIKtLbWpiWa3UNMAm2YDvMQevrJbJi1hc5KkAmeBEVMuNkZ/uoOtYlvK8A4h+RT6iuC2MaQilh2
tAyLRIuwmMyx8bomMdcbXZtqzuNkLitvSf3HxSXdR9niWUkK/CIAK9AcP3k4hk0KZ75ik5snSiqf
aZMavVfx8fZ5JF7btjuIXQ/JGyvYgXbsTu3JfUu5m7f5RlE0fdkzvB/2NnKCCIHsJSyzPCB0QzRa
01kbahnv3gXhICiWIRWEHnODWKOgXRmiXXaUgj1kGaBchTp11jfyvzGOWTZGhP1TFzwg9aqwz75o
AMSHXyAlKI3a2XVZLaiz0wSZIu2JxKXwVJC7HQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZTyFHD3ChTyD3EMPchEznJ6z9l6hNT0b+FQCePweESUe815jQCIFmfPZxhe4t6zAwGItrt7UewPj
Tdsuh2lkiboLAjgfrPcgn0rDqN/ZZwW3TvlfnGE5anzdnTo6QUL7PduW52x6tV+eXB8CHsjkYR5V
lmzvLGAziRRQ21M/kMcKDZkQH8r2RyY3SjwhsJF0pq7dJiQeDV+XEKKRuRSHwTi1Ndctec6SwmnF
vveT14sx0XcxHnUR+RI7TT2r42egGHkD1Wt9q6mND1bW5kca/tvCtnRo6SLHYV44whFhBnMMkZtz
MZzVtBDwDQzXWu/KjtNgajUO5FqrtXtaQ9A0Zw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22848)
`pragma protect data_block
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
rBurfEHdpgdM
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
