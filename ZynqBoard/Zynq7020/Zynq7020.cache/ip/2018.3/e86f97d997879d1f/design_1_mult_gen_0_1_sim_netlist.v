// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 23 15:28:46 2019
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
YVOFfqdOZ3G0GMoRtNS4WsyIoSyWl5fN7zDd4ddOU16w+L3sPaHK4n6StBFTSuuHo+BsBQ07+cgA
xBzAJVkmrwXKBXgvUD9qoxnlY8X2j6KvGKkD2Xr3+HJKxYaQAlTWDSVOXnZixI4lcdJp6VPMpKyQ
l6KkP7rURvh/78oCGt3z/c03xKhtETw/7l2QXz5pMvL5Mdauovqkjweay1TQ9FlPL/WNq/X46nSX
SBsYLvj+bRd5o+a4e9LPstIY1owbqKEjLX94Bh90XSDQoAb/EpwB39VYcsof1NQOQHTWEjs4vexc
hLz+QIu8MXWHNfdWR8A86xgUwW5xDQeYKXVhuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xtxa98n8njAia+SUyShh539hargcXHsbVrqvaX+pOxzuGWoD6tyOejRm3ztscZbX/O1qqoZG7b96
W+lOFxsqTvEG7oiZNjCHQPPZtAIC4IBKBWt5f+q/2yzASn1Fs32MnzAgd9fPT9LylfJrHsiGmRHY
YdXqq0DZDWKZaxRF58vRPvm5GxTaNROAtleW3q+PphVPF57oOEJuphQNUkPwzuizNKmASnhTWuod
B9hIQmOlZkmIlDh2cFBpp5Jm+EOZd8mmsxRvLxQQTK2jyfeytCOQxe4nOF0ManVgZWk27gNkPDlW
MNyJUtQWbkC8QEmxiUBcd8GDxJ4x5Agd5bAnNA==

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
