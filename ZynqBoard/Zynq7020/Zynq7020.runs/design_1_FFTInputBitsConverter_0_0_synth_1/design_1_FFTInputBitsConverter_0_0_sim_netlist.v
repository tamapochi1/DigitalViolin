// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 27 03:17:27 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FFTInputBitsConverter_0_0_sim_netlist.v
// Design      : design_1_FFTInputBitsConverter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTInputBitsConverter
   (s_axis_data_tready,
    m_axis_data_tvalid,
    nReset,
    fifo_count,
    m_axis_data_tready,
    s_axis_data_tvalid,
    clk);
  output s_axis_data_tready;
  output m_axis_data_tvalid;
  input nReset;
  input [11:0]fifo_count;
  input m_axis_data_tready;
  input s_axis_data_tvalid;
  input clk;

  wire clk;
  wire [11:0]fifo_count;
  wire fifo_ready;
  wire fifo_ready_i_1_n_0;
  wire fifo_ready_i_2_n_0;
  wire fifo_ready_i_3_n_0;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire nReset;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;

  LUT6 #(
    .INIT(64'hAAAAAAAAA0A8A8A8)) 
    fifo_ready_i_1
       (.I0(nReset),
        .I1(fifo_ready),
        .I2(fifo_count[10]),
        .I3(fifo_ready_i_2_n_0),
        .I4(fifo_ready_i_3_n_0),
        .I5(fifo_count[11]),
        .O(fifo_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fifo_ready_i_2
       (.I0(fifo_count[6]),
        .I1(fifo_count[7]),
        .I2(fifo_count[4]),
        .I3(fifo_count[5]),
        .I4(fifo_count[9]),
        .I5(fifo_count[8]),
        .O(fifo_ready_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_ready_i_3
       (.I0(fifo_count[1]),
        .I1(fifo_count[0]),
        .I2(fifo_count[3]),
        .I3(fifo_count[2]),
        .O(fifo_ready_i_3_n_0));
  FDRE fifo_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_ready_i_1_n_0),
        .Q(fifo_ready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_data_tvalid_INST_0
       (.I0(fifo_ready),
        .I1(s_axis_data_tvalid),
        .O(m_axis_data_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_data_tready_INST_0
       (.I0(fifo_ready),
        .I1(m_axis_data_tready),
        .O(s_axis_data_tready));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FFTInputBitsConverter_0_0,FFTInputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTInputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (nReset,
    clk,
    s_axis_data_tdata,
    s_axis_data_tready,
    s_axis_data_tvalid,
    fifo_count,
    scale,
    m_axis_data_tdata,
    m_axis_data_tready,
    m_axis_data_tvalid,
    m_axis_config_tdata,
    m_axis_config_tready,
    m_axis_config_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis_config:m_axis_data:s_axis_data, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  input [11:0]fifo_count;
  input [19:0]scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) output [63:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) output [47:0]m_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_config_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [11:0]fifo_count;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire nReset;
  wire [31:0]s_axis_data_tdata;
  wire s_axis_data_tready;
  wire s_axis_data_tvalid;
  wire [19:0]scale;

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
  assign m_axis_data_tdata[43:32] = s_axis_data_tdata[23:12];
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
  assign m_axis_data_tdata[11:0] = s_axis_data_tdata[11:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FFTInputBitsConverter inst
       (.clk(clk),
        .fifo_count(fifo_count),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .nReset(nReset),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid(s_axis_data_tvalid));
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
