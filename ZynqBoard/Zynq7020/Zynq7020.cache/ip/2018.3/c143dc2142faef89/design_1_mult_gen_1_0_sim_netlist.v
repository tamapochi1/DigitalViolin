// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 28 19:39:27 2019
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
