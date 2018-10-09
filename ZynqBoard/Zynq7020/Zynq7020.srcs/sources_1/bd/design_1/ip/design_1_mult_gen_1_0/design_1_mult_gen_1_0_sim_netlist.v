// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Oct  8 22:50:09 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mult_gen_1_0/design_1_mult_gen_1_0_sim_netlist.v
// Design      : design_1_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_gen_1_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult_gen_1_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
ZLIzyLxU7mZOtambnwxiJxMURK5uTqnkOR/Qnd2IdZlzCBEdKNVAL1LZ0l3xuTyYXQkXaJs0VbPd
jItDpZov3Unrsrd/LsNaNPcksXsXr55tUJMluzqnJREiHsbvXsd+6SXJR5DiTP/HmVhQf9QXsmS5
6SZODWWyrMquZlQkOQ3gZGkHRwWFrTU0Zm9QXEVAnLvHUvznSw+Q5gwwnzcoAT+XpRrbB+ZoMa5F
U2xoCWBuHNhJMeNf7l7iz4CnYayNZgu20UYKom7Vm+ltxlQ/vKvV/vATfdIMsq22jxnGjT2rOJ6P
zJKcUUIywOnmjDEXfUbmI4Vorm+HFXMtbH4NeQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tE3dRaNtYtcmp740VtEtVppeNiWOcFqWvsILLJQC3M8HFZoG06xpdF4Jm2VXzKs35fjCfXz8MOfZ
JkmgezmAXuMNBFhW2LBE1fRGSTZXgXh5pHyhRH4TQ9RYgx9e8WiKo5G4M/GIbUPCH4+yP8/bKPXl
d5649WBLiehCOmwFJYG2yq83ULGutoPMtM8eWVU3vV3VETK38wzTuahUG4TfnS8zXcBdeosG+Oim
Hmrh5QZ7YVIcmhB7M4garAaBpjH0/5Gn7+Y/T3LvcW1GI+zELvXwbpN1eB+qVb7W7OruM/M3t8o2
I64dMAkQR5N603ZxktglWJMXIyLnuyjhZnU2rQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14240)
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
