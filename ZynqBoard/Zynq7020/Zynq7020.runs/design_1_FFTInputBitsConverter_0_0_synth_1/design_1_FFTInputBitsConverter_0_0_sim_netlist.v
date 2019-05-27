// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 27 23:47:41 2019
// Host        : DESKTOP-S2QNSDM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FFTInputBitsConverter_0_0_sim_netlist.v
// Design      : design_1_FFTInputBitsConverter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTInputBitsConverter
   (Q,
    m_axis_data_tvalid,
    clk,
    m_axis_data_tready,
    start,
    nReset);
  output [10:0]Q;
  output m_axis_data_tvalid;
  input clk;
  input m_axis_data_tready;
  input start;
  input nReset;

  wire [10:0]Q;
  wire \byteCounter[10]_i_1_n_0 ;
  wire \byteCounter[10]_i_4_n_0 ;
  wire clk;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire m_axis_data_tvalid_INST_0_i_1_n_0;
  wire nReset;
  wire [10:0]p_0_in;
  wire start;
  wire started1;
  wire started_i_1_n_0;
  wire started_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \byteCounter[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hB380FFFF)) 
    \byteCounter[10]_i_1 
       (.I0(m_axis_data_tready),
        .I1(started_reg_n_0),
        .I2(Q[10]),
        .I3(start),
        .I4(nReset),
        .O(\byteCounter[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \byteCounter[10]_i_2 
       (.I0(started_reg_n_0),
        .I1(m_axis_data_tready),
        .O(started1));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byteCounter[10]_i_3 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(\byteCounter[10]_i_4_n_0 ),
        .I3(Q[7]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \byteCounter[10]_i_4 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\byteCounter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \byteCounter[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \byteCounter[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byteCounter[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byteCounter[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[6]_i_1 
       (.I0(\byteCounter[10]_i_4_n_0 ),
        .I1(Q[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \byteCounter[7]_i_1 
       (.I0(\byteCounter[10]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \byteCounter[8]_i_1 
       (.I0(Q[6]),
        .I1(\byteCounter[10]_i_4_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byteCounter[9]_i_1 
       (.I0(Q[7]),
        .I1(\byteCounter[10]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(p_0_in[9]));
  FDRE \byteCounter_reg[0] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[10] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[10]),
        .Q(Q[10]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[1] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[2] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[3] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[4] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[5] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[6] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[7] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[8] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[8]),
        .Q(Q[8]),
        .R(\byteCounter[10]_i_1_n_0 ));
  FDRE \byteCounter_reg[9] 
       (.C(clk),
        .CE(started1),
        .D(p_0_in[9]),
        .Q(Q[9]),
        .R(\byteCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    m_axis_data_tvalid_INST_0
       (.I0(m_axis_data_tvalid_INST_0_i_1_n_0),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(m_axis_data_tvalid));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_axis_data_tvalid_INST_0_i_1
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(m_axis_data_tvalid_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h2AAA20A0)) 
    started_i_1
       (.I0(nReset),
        .I1(m_axis_data_tready),
        .I2(started_reg_n_0),
        .I3(Q[10]),
        .I4(start),
        .O(started_i_1_n_0));
  FDRE started_reg
       (.C(clk),
        .CE(1'b1),
        .D(started_i_1_n_0),
        .Q(started_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FFTInputBitsConverter_0_0,FFTInputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTInputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    clk,
    bram_addr,
    bram_clk,
    bram_rddata,
    bram_en,
    bram_rst,
    bram_we,
    start,
    scale,
    m_axis_data_tdata,
    m_axis_data_tready,
    m_axis_data_tvalid,
    m_axis_config_tdata,
    m_axis_config_tready,
    m_axis_config_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_config:m_axis_data, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_FFTInputBitsConverter_0_0_bram_clk, INSERT_VIP 0" *) output bram_clk;
  input [31:0]bram_rddata;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output bram_we;
  input start;
  input [19:0]scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) output [63:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) output [47:0]m_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_config_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:2]\^bram_addr ;
  wire [31:0]bram_rddata;
  wire bram_rst;
  wire clk;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire nReset;
  wire [19:0]scale;
  wire start;

  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16] = \<const0> ;
  assign bram_addr[15] = \<const0> ;
  assign bram_addr[14] = \<const0> ;
  assign bram_addr[13] = \<const0> ;
  assign bram_addr[12:2] = \^bram_addr [12:2];
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = clk;
  assign bram_en = nReset;
  assign bram_we = \<const0> ;
  assign m_axis_config_tdata[47] = \<const0> ;
  assign m_axis_config_tdata[46] = \<const0> ;
  assign m_axis_config_tdata[45] = \<const0> ;
  assign m_axis_config_tdata[44] = \<const0> ;
  assign m_axis_config_tdata[43] = \<const0> ;
  assign m_axis_config_tdata[42] = \<const0> ;
  assign m_axis_config_tdata[41:22] = scale;
  assign m_axis_config_tdata[21:2] = scale;
  assign m_axis_config_tdata[1] = \<const1> ;
  assign m_axis_config_tdata[0] = \<const1> ;
  assign m_axis_config_tvalid = \<const1> ;
  assign m_axis_data_tdata[63] = \<const0> ;
  assign m_axis_data_tdata[62] = \<const0> ;
  assign m_axis_data_tdata[61] = \<const0> ;
  assign m_axis_data_tdata[60] = \<const0> ;
  assign m_axis_data_tdata[59] = \<const0> ;
  assign m_axis_data_tdata[58] = \<const0> ;
  assign m_axis_data_tdata[57] = \<const0> ;
  assign m_axis_data_tdata[56] = \<const0> ;
  assign m_axis_data_tdata[55] = \<const0> ;
  assign m_axis_data_tdata[54] = \<const0> ;
  assign m_axis_data_tdata[53] = \<const0> ;
  assign m_axis_data_tdata[52] = \<const0> ;
  assign m_axis_data_tdata[51] = \<const0> ;
  assign m_axis_data_tdata[50] = \<const0> ;
  assign m_axis_data_tdata[49] = \<const0> ;
  assign m_axis_data_tdata[48] = \<const0> ;
  assign m_axis_data_tdata[47] = \<const0> ;
  assign m_axis_data_tdata[46] = \<const0> ;
  assign m_axis_data_tdata[45] = \<const0> ;
  assign m_axis_data_tdata[44] = \<const0> ;
  assign m_axis_data_tdata[43:32] = bram_rddata[27:16];
  assign m_axis_data_tdata[31] = \<const0> ;
  assign m_axis_data_tdata[30] = \<const0> ;
  assign m_axis_data_tdata[29] = \<const0> ;
  assign m_axis_data_tdata[28] = \<const0> ;
  assign m_axis_data_tdata[27] = \<const0> ;
  assign m_axis_data_tdata[26] = \<const0> ;
  assign m_axis_data_tdata[25] = \<const0> ;
  assign m_axis_data_tdata[24] = \<const0> ;
  assign m_axis_data_tdata[23] = \<const0> ;
  assign m_axis_data_tdata[22] = \<const0> ;
  assign m_axis_data_tdata[21] = \<const0> ;
  assign m_axis_data_tdata[20] = \<const0> ;
  assign m_axis_data_tdata[19] = \<const0> ;
  assign m_axis_data_tdata[18] = \<const0> ;
  assign m_axis_data_tdata[17] = \<const0> ;
  assign m_axis_data_tdata[16] = \<const0> ;
  assign m_axis_data_tdata[15] = \<const0> ;
  assign m_axis_data_tdata[14] = \<const0> ;
  assign m_axis_data_tdata[13] = \<const0> ;
  assign m_axis_data_tdata[12] = \<const0> ;
  assign m_axis_data_tdata[11:0] = bram_rddata[11:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_INST_0
       (.I0(nReset),
        .O(bram_rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTInputBitsConverter inst
       (.Q(\^bram_addr ),
        .clk(clk),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .nReset(nReset),
        .start(start));
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
