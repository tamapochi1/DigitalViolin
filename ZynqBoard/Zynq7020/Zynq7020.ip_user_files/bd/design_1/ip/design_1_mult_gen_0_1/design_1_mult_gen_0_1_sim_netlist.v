// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu May 23 15:28:46 2019
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
