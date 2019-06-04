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
