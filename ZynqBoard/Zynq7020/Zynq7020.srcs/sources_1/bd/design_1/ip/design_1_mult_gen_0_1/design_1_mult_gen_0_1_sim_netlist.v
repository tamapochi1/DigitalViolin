// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:50:09 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_0_1/design_1_mult_gen_0_1_sim_netlist.v
// Design      : design_1_mult_gen_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_0_1,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_0_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Flfl7tav0MdMTLlWS4/rDbITjrLGwLbQrrQzuBoLP4UeQ02NnzhfOrvwglYpPqXnC1JCEJR9sirs
GBeAVp3Q78T1xqa/zp9dZDPqI388RT5c6dx1p1eWyZOKwEzzrqo6VrTOYXjBq5DshfaLjtqNWeQz
007QTkUHFpVlubnUK6tQvZZUGtafo6Swft8Jvu5ng0eb/iIuc3cI5e7oeiZODTY/7UC+0RV000uf
ZF1YnHjzmGOViQOGf1i4caZFbgTYqlNJNsshTUXYOHIOKNPmhzFJ36oDkv+COyLpB3RhPM7BBjbP
p/vxgxNTaLmAHdu7BKvoq7lwDa6ZTPRC0WJibA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
veVTjqzI67g3Fki1Wees/FCvuemuBpz9hdwbN2h2XsCYcpEnosUNTxDEBpwEG5y1869EMTTrxK4U
2wW12IA+fO81s3jRiWpf4Lr/M8eQfiK4AO5SJ2owdKxcVUXY+/dR4NHGjFYe4Drg7Tnx2Vf/RfHo
Xjl68mUn5t/7JLHtxqRu7shSMjAKTtJQNr/qVd2QEo69wWu+M6VTZVLf0eJq6F6nF8LVbCVudV27
WBGfThCbieuTWEHDH1TxzPLUYLHG8WxUo5hV1aodJheHrodiRAEZ+mfi8jtpSBHOKlCJyX38E7Js
VLtpiPjOGjs384KVX8TN/TG/t+nFdgHjyug7Wg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
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
