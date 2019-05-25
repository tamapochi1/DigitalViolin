// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May 24 02:18:41 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DSP_reg_read_0_0_sim_netlist.v
// Design      : design_1_DSP_reg_read_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_reg_read
   (m_axis_delta_tdata,
    SR,
    m_axis_gain_tvalid,
    m_axis_delta_tvalid,
    m_axis_gain_tdata,
    freqXconst,
    aclk,
    index_valid,
    m_bram_rddata,
    nReset);
  output [21:0]m_axis_delta_tdata;
  output [0:0]SR;
  output m_axis_gain_tvalid;
  output m_axis_delta_tvalid;
  output [13:0]m_axis_gain_tdata;
  input [21:0]freqXconst;
  input aclk;
  input index_valid;
  input [13:0]m_bram_rddata;
  input nReset;

  wire [0:0]SR;
  wire aclk;
  wire [21:0]freqXconst;
  wire index_valid;
  wire [21:0]m_axis_delta_tdata;
  wire m_axis_delta_tvalid;
  wire [13:0]m_axis_gain_tdata;
  wire m_axis_gain_tvalid;
  wire [13:0]m_bram_rddata;
  wire nReset;
  wire [2:0]p_0_in;

  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    bramDataValid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(index_valid),
        .Q(m_axis_gain_tvalid),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[0]),
        .Q(m_axis_delta_tdata[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[10]),
        .Q(m_axis_delta_tdata[10]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[11]),
        .Q(m_axis_delta_tdata[11]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[12]),
        .Q(m_axis_delta_tdata[12]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[13]),
        .Q(m_axis_delta_tdata[13]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[14]),
        .Q(m_axis_delta_tdata[14]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[15]),
        .Q(m_axis_delta_tdata[15]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[16]),
        .Q(m_axis_delta_tdata[16]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[17]),
        .Q(m_axis_delta_tdata[17]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[18]),
        .Q(m_axis_delta_tdata[18]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[19]),
        .Q(m_axis_delta_tdata[19]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[1]),
        .Q(m_axis_delta_tdata[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[20]),
        .Q(m_axis_delta_tdata[20]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[21]),
        .Q(m_axis_delta_tdata[21]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[2]),
        .Q(m_axis_delta_tdata[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[3]),
        .Q(m_axis_delta_tdata[3]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[4]),
        .Q(m_axis_delta_tdata[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[5]),
        .Q(m_axis_delta_tdata[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[6]),
        .Q(m_axis_delta_tdata[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[7]),
        .Q(m_axis_delta_tdata[7]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[8]),
        .Q(m_axis_delta_tdata[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \deltaBuffer_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(freqXconst[9]),
        .Q(m_axis_delta_tdata[9]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \freqXconstValid_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(m_axis_delta_tvalid),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \freqXconstValid_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \freqXconstValid_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \freqXconstValid_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_gain_tvalid),
        .Q(p_0_in[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[0]),
        .Q(m_axis_gain_tdata[0]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[10]),
        .Q(m_axis_gain_tdata[10]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[11]),
        .Q(m_axis_gain_tdata[11]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[12]),
        .Q(m_axis_gain_tdata[12]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[13]),
        .Q(m_axis_gain_tdata[13]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[1]),
        .Q(m_axis_gain_tdata[1]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[2]),
        .Q(m_axis_gain_tdata[2]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[3]),
        .Q(m_axis_gain_tdata[3]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[4]),
        .Q(m_axis_gain_tdata[4]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[5]),
        .Q(m_axis_gain_tdata[5]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[6]),
        .Q(m_axis_gain_tdata[6]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[7]),
        .Q(m_axis_gain_tdata[7]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[8]),
        .Q(m_axis_gain_tdata[8]),
        .R(SR));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \gainBuffer_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(m_bram_rddata[9]),
        .Q(m_axis_gain_tdata[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    m_bram_rst_INST_0
       (.I0(nReset),
        .O(SR));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_DSP_reg_read_0_0,DSP_reg_read,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DSP_reg_read,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    aclk,
    m_bram_addr,
    m_bram_clk,
    m_bram_rddata,
    m_bram_en,
    m_bram_rst,
    m_bram_we,
    index,
    index_valid,
    freq,
    const,
    freqXconst,
    m_axis_delta_tdata,
    m_axis_delta_tvalid,
    m_axis_gain_tdata,
    m_axis_gain_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_delta:m_axis_gain, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  output [31:0]m_bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_clk, ASSOCIATED_RESET m_bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_DSP_reg_read_0_0_m_bram_clk, INSERT_VIP 0" *) output m_bram_clk;
  input [31:0]m_bram_rddata;
  output m_bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output m_bram_rst;
  output m_bram_we;
  input [10:0]index;
  input index_valid;
  output [17:0]freq;
  output [17:0]const;
  input [35:0]freqXconst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_delta TDATA" *) output [23:0]m_axis_delta_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_delta TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_delta, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_delta_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TDATA" *) output [13:0]m_axis_gain_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_gain TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_gain, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_gain_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [35:0]freqXconst;
  wire [10:0]index;
  wire index_valid;
  wire [21:0]\^m_axis_delta_tdata ;
  wire m_axis_delta_tvalid;
  wire [13:0]m_axis_gain_tdata;
  wire m_axis_gain_tvalid;
  wire [31:0]m_bram_rddata;
  wire m_bram_rst;
  wire nReset;

  assign const[17] = \<const1> ;
  assign const[16] = \<const0> ;
  assign const[15] = \<const0> ;
  assign const[14] = \<const0> ;
  assign const[13] = \<const1> ;
  assign const[12] = \<const0> ;
  assign const[11] = \<const1> ;
  assign const[10] = \<const1> ;
  assign const[9] = \<const1> ;
  assign const[8] = \<const1> ;
  assign const[7] = \<const0> ;
  assign const[6] = \<const0> ;
  assign const[5] = \<const1> ;
  assign const[4] = \<const1> ;
  assign const[3] = \<const1> ;
  assign const[2] = \<const1> ;
  assign const[1] = \<const0> ;
  assign const[0] = \<const1> ;
  assign freq[17:0] = m_bram_rddata[17:0];
  assign m_axis_delta_tdata[23] = \<const0> ;
  assign m_axis_delta_tdata[22] = \<const0> ;
  assign m_axis_delta_tdata[21:0] = \^m_axis_delta_tdata [21:0];
  assign m_bram_addr[31] = \<const0> ;
  assign m_bram_addr[30] = \<const0> ;
  assign m_bram_addr[29] = \<const0> ;
  assign m_bram_addr[28] = \<const0> ;
  assign m_bram_addr[27] = \<const0> ;
  assign m_bram_addr[26] = \<const0> ;
  assign m_bram_addr[25] = \<const0> ;
  assign m_bram_addr[24] = \<const0> ;
  assign m_bram_addr[23] = \<const0> ;
  assign m_bram_addr[22] = \<const0> ;
  assign m_bram_addr[21] = \<const0> ;
  assign m_bram_addr[20] = \<const0> ;
  assign m_bram_addr[19] = \<const0> ;
  assign m_bram_addr[18] = \<const0> ;
  assign m_bram_addr[17] = \<const0> ;
  assign m_bram_addr[16] = \<const0> ;
  assign m_bram_addr[15] = \<const0> ;
  assign m_bram_addr[14] = \<const0> ;
  assign m_bram_addr[13] = \<const0> ;
  assign m_bram_addr[12:2] = index;
  assign m_bram_addr[1] = \<const0> ;
  assign m_bram_addr[0] = \<const0> ;
  assign m_bram_clk = aclk;
  assign m_bram_en = nReset;
  assign m_bram_we = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DSP_reg_read inst
       (.SR(m_bram_rst),
        .aclk(aclk),
        .freqXconst(freqXconst[35:14]),
        .index_valid(index_valid),
        .m_axis_delta_tdata(\^m_axis_delta_tdata ),
        .m_axis_delta_tvalid(m_axis_delta_tvalid),
        .m_axis_gain_tdata(m_axis_gain_tdata),
        .m_axis_gain_tvalid(m_axis_gain_tvalid),
        .m_bram_rddata(m_bram_rddata[31:18]),
        .nReset(nReset));
endmodule
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
