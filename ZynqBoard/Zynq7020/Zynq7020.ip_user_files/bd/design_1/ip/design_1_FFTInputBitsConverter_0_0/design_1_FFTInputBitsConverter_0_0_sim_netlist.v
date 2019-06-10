// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:09 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_FFTInputBitsConverter_0_0/design_1_FFTInputBitsConverter_0_0_sim_netlist.v
// Design      : design_1_FFTInputBitsConverter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FFTInputBitsConverter_0_0,FFTInputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTInputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_FFTInputBitsConverter_0_0
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
  input [127:0]bram_rddata;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output bram_we;
  input start;
  input [19:0]scale;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) output [255:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TDATA" *) output [223:0]m_axis_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TREADY" *) input m_axis_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_config, TDATA_NUM_BYTES 28, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_config_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:4]\^bram_addr ;
  wire [127:0]bram_rddata;
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
  assign bram_addr[13:4] = \^bram_addr [13:4];
  assign bram_addr[3] = \<const0> ;
  assign bram_addr[2] = \<const0> ;
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = clk;
  assign bram_en = nReset;
  assign bram_we = \<const0> ;
  assign m_axis_config_tdata[223] = \<const0> ;
  assign m_axis_config_tdata[222] = \<const0> ;
  assign m_axis_config_tdata[221] = \<const0> ;
  assign m_axis_config_tdata[220] = \<const0> ;
  assign m_axis_config_tdata[219] = \<const0> ;
  assign m_axis_config_tdata[218] = \<const0> ;
  assign m_axis_config_tdata[217] = \<const0> ;
  assign m_axis_config_tdata[216] = \<const0> ;
  assign m_axis_config_tdata[215] = \<const0> ;
  assign m_axis_config_tdata[214] = \<const0> ;
  assign m_axis_config_tdata[213] = \<const0> ;
  assign m_axis_config_tdata[212] = \<const0> ;
  assign m_axis_config_tdata[211] = \<const0> ;
  assign m_axis_config_tdata[210] = \<const0> ;
  assign m_axis_config_tdata[209] = \<const0> ;
  assign m_axis_config_tdata[208] = \<const0> ;
  assign m_axis_config_tdata[207] = \<const0> ;
  assign m_axis_config_tdata[206] = \<const0> ;
  assign m_axis_config_tdata[205] = \<const0> ;
  assign m_axis_config_tdata[204] = \<const0> ;
  assign m_axis_config_tdata[203] = \<const0> ;
  assign m_axis_config_tdata[202] = \<const0> ;
  assign m_axis_config_tdata[201] = \<const0> ;
  assign m_axis_config_tdata[200] = \<const0> ;
  assign m_axis_config_tdata[199] = \<const0> ;
  assign m_axis_config_tdata[198] = \<const0> ;
  assign m_axis_config_tdata[197] = \<const0> ;
  assign m_axis_config_tdata[196] = \<const0> ;
  assign m_axis_config_tdata[195] = \<const0> ;
  assign m_axis_config_tdata[194] = \<const0> ;
  assign m_axis_config_tdata[193] = \<const0> ;
  assign m_axis_config_tdata[192] = \<const0> ;
  assign m_axis_config_tdata[191] = \<const0> ;
  assign m_axis_config_tdata[190] = \<const0> ;
  assign m_axis_config_tdata[189] = \<const0> ;
  assign m_axis_config_tdata[188] = \<const0> ;
  assign m_axis_config_tdata[187] = \<const0> ;
  assign m_axis_config_tdata[186] = \<const0> ;
  assign m_axis_config_tdata[185] = \<const0> ;
  assign m_axis_config_tdata[184] = \<const0> ;
  assign m_axis_config_tdata[183] = \<const0> ;
  assign m_axis_config_tdata[182] = \<const0> ;
  assign m_axis_config_tdata[181] = \<const0> ;
  assign m_axis_config_tdata[180] = \<const0> ;
  assign m_axis_config_tdata[179] = \<const0> ;
  assign m_axis_config_tdata[178] = \<const0> ;
  assign m_axis_config_tdata[177] = \<const0> ;
  assign m_axis_config_tdata[176] = \<const0> ;
  assign m_axis_config_tdata[175] = \<const0> ;
  assign m_axis_config_tdata[174] = \<const0> ;
  assign m_axis_config_tdata[173] = \<const0> ;
  assign m_axis_config_tdata[172] = \<const0> ;
  assign m_axis_config_tdata[171] = \<const0> ;
  assign m_axis_config_tdata[170] = \<const0> ;
  assign m_axis_config_tdata[169] = \<const0> ;
  assign m_axis_config_tdata[168] = \<const0> ;
  assign m_axis_config_tdata[167:148] = scale;
  assign m_axis_config_tdata[147:128] = scale;
  assign m_axis_config_tdata[127:108] = scale;
  assign m_axis_config_tdata[107:88] = scale;
  assign m_axis_config_tdata[87:68] = scale;
  assign m_axis_config_tdata[67:48] = scale;
  assign m_axis_config_tdata[47:28] = scale;
  assign m_axis_config_tdata[27:8] = scale;
  assign m_axis_config_tdata[7] = \<const1> ;
  assign m_axis_config_tdata[6] = \<const1> ;
  assign m_axis_config_tdata[5] = \<const1> ;
  assign m_axis_config_tdata[4] = \<const1> ;
  assign m_axis_config_tdata[3] = \<const1> ;
  assign m_axis_config_tdata[2] = \<const1> ;
  assign m_axis_config_tdata[1] = \<const1> ;
  assign m_axis_config_tdata[0] = \<const1> ;
  assign m_axis_config_tvalid = \<const1> ;
  assign m_axis_data_tdata[255] = \<const0> ;
  assign m_axis_data_tdata[254] = \<const0> ;
  assign m_axis_data_tdata[253] = \<const0> ;
  assign m_axis_data_tdata[252] = \<const0> ;
  assign m_axis_data_tdata[251] = \<const0> ;
  assign m_axis_data_tdata[250] = \<const0> ;
  assign m_axis_data_tdata[249] = \<const0> ;
  assign m_axis_data_tdata[248] = \<const0> ;
  assign m_axis_data_tdata[247] = \<const0> ;
  assign m_axis_data_tdata[246] = \<const0> ;
  assign m_axis_data_tdata[245] = \<const0> ;
  assign m_axis_data_tdata[244] = \<const0> ;
  assign m_axis_data_tdata[243] = \<const0> ;
  assign m_axis_data_tdata[242] = \<const0> ;
  assign m_axis_data_tdata[241] = \<const0> ;
  assign m_axis_data_tdata[240] = \<const0> ;
  assign m_axis_data_tdata[239] = \<const0> ;
  assign m_axis_data_tdata[238] = \<const0> ;
  assign m_axis_data_tdata[237] = \<const0> ;
  assign m_axis_data_tdata[236] = \<const0> ;
  assign m_axis_data_tdata[235:224] = bram_rddata[123:112];
  assign m_axis_data_tdata[223] = \<const0> ;
  assign m_axis_data_tdata[222] = \<const0> ;
  assign m_axis_data_tdata[221] = \<const0> ;
  assign m_axis_data_tdata[220] = \<const0> ;
  assign m_axis_data_tdata[219] = \<const0> ;
  assign m_axis_data_tdata[218] = \<const0> ;
  assign m_axis_data_tdata[217] = \<const0> ;
  assign m_axis_data_tdata[216] = \<const0> ;
  assign m_axis_data_tdata[215] = \<const0> ;
  assign m_axis_data_tdata[214] = \<const0> ;
  assign m_axis_data_tdata[213] = \<const0> ;
  assign m_axis_data_tdata[212] = \<const0> ;
  assign m_axis_data_tdata[211] = \<const0> ;
  assign m_axis_data_tdata[210] = \<const0> ;
  assign m_axis_data_tdata[209] = \<const0> ;
  assign m_axis_data_tdata[208] = \<const0> ;
  assign m_axis_data_tdata[207] = \<const0> ;
  assign m_axis_data_tdata[206] = \<const0> ;
  assign m_axis_data_tdata[205] = \<const0> ;
  assign m_axis_data_tdata[204] = \<const0> ;
  assign m_axis_data_tdata[203:192] = bram_rddata[107:96];
  assign m_axis_data_tdata[191] = \<const0> ;
  assign m_axis_data_tdata[190] = \<const0> ;
  assign m_axis_data_tdata[189] = \<const0> ;
  assign m_axis_data_tdata[188] = \<const0> ;
  assign m_axis_data_tdata[187] = \<const0> ;
  assign m_axis_data_tdata[186] = \<const0> ;
  assign m_axis_data_tdata[185] = \<const0> ;
  assign m_axis_data_tdata[184] = \<const0> ;
  assign m_axis_data_tdata[183] = \<const0> ;
  assign m_axis_data_tdata[182] = \<const0> ;
  assign m_axis_data_tdata[181] = \<const0> ;
  assign m_axis_data_tdata[180] = \<const0> ;
  assign m_axis_data_tdata[179] = \<const0> ;
  assign m_axis_data_tdata[178] = \<const0> ;
  assign m_axis_data_tdata[177] = \<const0> ;
  assign m_axis_data_tdata[176] = \<const0> ;
  assign m_axis_data_tdata[175] = \<const0> ;
  assign m_axis_data_tdata[174] = \<const0> ;
  assign m_axis_data_tdata[173] = \<const0> ;
  assign m_axis_data_tdata[172] = \<const0> ;
  assign m_axis_data_tdata[171:160] = bram_rddata[91:80];
  assign m_axis_data_tdata[159] = \<const0> ;
  assign m_axis_data_tdata[158] = \<const0> ;
  assign m_axis_data_tdata[157] = \<const0> ;
  assign m_axis_data_tdata[156] = \<const0> ;
  assign m_axis_data_tdata[155] = \<const0> ;
  assign m_axis_data_tdata[154] = \<const0> ;
  assign m_axis_data_tdata[153] = \<const0> ;
  assign m_axis_data_tdata[152] = \<const0> ;
  assign m_axis_data_tdata[151] = \<const0> ;
  assign m_axis_data_tdata[150] = \<const0> ;
  assign m_axis_data_tdata[149] = \<const0> ;
  assign m_axis_data_tdata[148] = \<const0> ;
  assign m_axis_data_tdata[147] = \<const0> ;
  assign m_axis_data_tdata[146] = \<const0> ;
  assign m_axis_data_tdata[145] = \<const0> ;
  assign m_axis_data_tdata[144] = \<const0> ;
  assign m_axis_data_tdata[143] = \<const0> ;
  assign m_axis_data_tdata[142] = \<const0> ;
  assign m_axis_data_tdata[141] = \<const0> ;
  assign m_axis_data_tdata[140] = \<const0> ;
  assign m_axis_data_tdata[139:128] = bram_rddata[75:64];
  assign m_axis_data_tdata[127] = \<const0> ;
  assign m_axis_data_tdata[126] = \<const0> ;
  assign m_axis_data_tdata[125] = \<const0> ;
  assign m_axis_data_tdata[124] = \<const0> ;
  assign m_axis_data_tdata[123] = \<const0> ;
  assign m_axis_data_tdata[122] = \<const0> ;
  assign m_axis_data_tdata[121] = \<const0> ;
  assign m_axis_data_tdata[120] = \<const0> ;
  assign m_axis_data_tdata[119] = \<const0> ;
  assign m_axis_data_tdata[118] = \<const0> ;
  assign m_axis_data_tdata[117] = \<const0> ;
  assign m_axis_data_tdata[116] = \<const0> ;
  assign m_axis_data_tdata[115] = \<const0> ;
  assign m_axis_data_tdata[114] = \<const0> ;
  assign m_axis_data_tdata[113] = \<const0> ;
  assign m_axis_data_tdata[112] = \<const0> ;
  assign m_axis_data_tdata[111] = \<const0> ;
  assign m_axis_data_tdata[110] = \<const0> ;
  assign m_axis_data_tdata[109] = \<const0> ;
  assign m_axis_data_tdata[108] = \<const0> ;
  assign m_axis_data_tdata[107:96] = bram_rddata[59:48];
  assign m_axis_data_tdata[95] = \<const0> ;
  assign m_axis_data_tdata[94] = \<const0> ;
  assign m_axis_data_tdata[93] = \<const0> ;
  assign m_axis_data_tdata[92] = \<const0> ;
  assign m_axis_data_tdata[91] = \<const0> ;
  assign m_axis_data_tdata[90] = \<const0> ;
  assign m_axis_data_tdata[89] = \<const0> ;
  assign m_axis_data_tdata[88] = \<const0> ;
  assign m_axis_data_tdata[87] = \<const0> ;
  assign m_axis_data_tdata[86] = \<const0> ;
  assign m_axis_data_tdata[85] = \<const0> ;
  assign m_axis_data_tdata[84] = \<const0> ;
  assign m_axis_data_tdata[83] = \<const0> ;
  assign m_axis_data_tdata[82] = \<const0> ;
  assign m_axis_data_tdata[81] = \<const0> ;
  assign m_axis_data_tdata[80] = \<const0> ;
  assign m_axis_data_tdata[79] = \<const0> ;
  assign m_axis_data_tdata[78] = \<const0> ;
  assign m_axis_data_tdata[77] = \<const0> ;
  assign m_axis_data_tdata[76] = \<const0> ;
  assign m_axis_data_tdata[75:64] = bram_rddata[43:32];
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
  design_1_FFTInputBitsConverter_0_0_FFTInputBitsConverter inst
       (.Q(\^bram_addr ),
        .clk(clk),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .nReset(nReset),
        .start(start));
endmodule

(* ORIG_REF_NAME = "FFTInputBitsConverter" *) 
module design_1_FFTInputBitsConverter_0_0_FFTInputBitsConverter
   (Q,
    m_axis_data_tvalid,
    clk,
    nReset,
    start,
    m_axis_data_tready);
  output [9:0]Q;
  output m_axis_data_tvalid;
  input clk;
  input nReset;
  input start;
  input m_axis_data_tready;

  wire [9:0]Q;
  wire [10:10]byteCounter;
  wire \byteCounter[8]_i_2_n_0 ;
  wire \byteCounter[8]_i_3_n_0 ;
  wire \byteCounter[9]_i_1_n_0 ;
  wire \byteCounter[9]_i_4_n_0 ;
  wire [10:0]byteCounter_0;
  wire clk;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire m_axis_data_tvalid_INST_0_i_1_n_0;
  wire m_axis_data_tvalid_INST_0_i_2_n_0;
  wire nReset;
  wire start;
  wire started;
  wire started0;
  wire started_i_1_n_0;

  LUT2 #(
    .INIT(4'h1)) 
    \byteCounter[0]_i_1 
       (.I0(Q[0]),
        .I1(\byteCounter[8]_i_2_n_0 ),
        .O(byteCounter_0[0]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \byteCounter[10]_i_1 
       (.I0(byteCounter),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\byteCounter[9]_i_4_n_0 ),
        .I4(Q[7]),
        .I5(Q[9]),
        .O(byteCounter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(byteCounter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \byteCounter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(byteCounter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \byteCounter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(byteCounter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byteCounter[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(byteCounter_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byteCounter[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(byteCounter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[6]_i_1 
       (.I0(Q[6]),
        .I1(\byteCounter[9]_i_4_n_0 ),
        .O(byteCounter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \byteCounter[7]_i_1 
       (.I0(Q[7]),
        .I1(\byteCounter[9]_i_4_n_0 ),
        .I2(Q[6]),
        .O(byteCounter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \byteCounter[8]_i_1 
       (.I0(\byteCounter[8]_i_2_n_0 ),
        .I1(Q[7]),
        .I2(\byteCounter[9]_i_4_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(byteCounter_0[8]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \byteCounter[8]_i_2 
       (.I0(m_axis_data_tvalid_INST_0_i_2_n_0),
        .I1(\byteCounter[8]_i_3_n_0 ),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(byteCounter),
        .O(\byteCounter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \byteCounter[8]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\byteCounter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \byteCounter[9]_i_1 
       (.I0(started),
        .I1(start),
        .I2(nReset),
        .O(\byteCounter[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \byteCounter[9]_i_2 
       (.I0(m_axis_data_tready),
        .I1(started),
        .O(started0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \byteCounter[9]_i_3 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\byteCounter[9]_i_4_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .O(byteCounter_0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \byteCounter[9]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\byteCounter[9]_i_4_n_0 ));
  FDRE \byteCounter_reg[0] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[0]),
        .Q(Q[0]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[10] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[10]),
        .Q(byteCounter),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[1] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[1]),
        .Q(Q[1]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[2] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[2]),
        .Q(Q[2]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[3] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[3]),
        .Q(Q[3]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[4] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[4]),
        .Q(Q[4]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[5] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[5]),
        .Q(Q[5]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[6] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[6]),
        .Q(Q[6]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[7] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[7]),
        .Q(Q[7]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[8] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[8]),
        .Q(Q[8]),
        .R(\byteCounter[9]_i_1_n_0 ));
  FDRE \byteCounter_reg[9] 
       (.C(clk),
        .CE(started0),
        .D(byteCounter_0[9]),
        .Q(Q[9]),
        .R(\byteCounter[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_data_tvalid_INST_0
       (.I0(m_axis_data_tvalid_INST_0_i_1_n_0),
        .I1(Q[9]),
        .I2(byteCounter),
        .I3(Q[8]),
        .O(m_axis_data_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_axis_data_tvalid_INST_0_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m_axis_data_tvalid_INST_0_i_2_n_0),
        .O(m_axis_data_tvalid_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_data_tvalid_INST_0_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(m_axis_data_tvalid_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h08A8A8A8)) 
    started_i_1
       (.I0(nReset),
        .I1(start),
        .I2(started),
        .I3(m_axis_data_tready),
        .I4(\byteCounter[8]_i_2_n_0 ),
        .O(started_i_1_n_0));
  FDRE started_reg
       (.C(clk),
        .CE(1'b1),
        .D(started_i_1_n_0),
        .Q(started),
        .R(1'b0));
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
