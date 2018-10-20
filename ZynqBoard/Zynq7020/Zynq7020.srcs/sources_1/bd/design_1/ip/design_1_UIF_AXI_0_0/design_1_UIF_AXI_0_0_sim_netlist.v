// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Oct 19 21:56:50 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_UIF_AXI_0_0/design_1_UIF_AXI_0_0_sim_netlist.v
// Design      : design_1_UIF_AXI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_UIF_AXI_0_0,UIF_AXI,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UIF_AXI,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_UIF_AXI_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    m_axis_sr_tdata,
    m_axis_sr_tready,
    m_axis_sr_tvalid,
    s_axis_st_tdata,
    s_axis_st_tready,
    s_axis_st_tvalid,
    fifo_count,
    sys_nReset,
    UIF_res);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_sr TDATA" *) output [7:0]m_axis_sr_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_sr TREADY" *) input m_axis_sr_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_sr TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_sr, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) output m_axis_sr_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_st TDATA" *) input [7:0]s_axis_st_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_st TREADY" *) output s_axis_st_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_st TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_st, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_st_tvalid;
  input [11:0]fifo_count;
  output sys_nReset;
  output UIF_res;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire UIF_res;
  wire [11:0]fifo_count;
  wire [7:0]m_axis_sr_tdata;
  wire m_axis_sr_tready;
  wire m_axis_sr_tvalid;
  wire [7:0]s_axis_st_tdata;
  wire s_axis_st_tready;
  wire s_axis_st_tvalid;
  wire sys_nReset;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_UIF_AXI_0_0_UIF_AXI inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .UIF_res(UIF_res),
        .fifo_count(fifo_count),
        .m_axis_sr_tdata(m_axis_sr_tdata),
        .m_axis_sr_tready(m_axis_sr_tready),
        .m_axis_sr_tvalid(m_axis_sr_tvalid),
        .s_axis_st_tdata(s_axis_st_tdata),
        .s_axis_st_tready(s_axis_st_tready),
        .s_axis_st_tvalid(s_axis_st_tvalid),
        .sys_nReset(sys_nReset));
endmodule

(* ORIG_REF_NAME = "UIF_AXI" *) 
module design_1_UIF_AXI_0_0_UIF_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    s_axis_st_tready,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    m_axis_sr_tdata,
    sys_nReset,
    S_AXI_RVALID,
    UIF_res,
    m_axis_sr_tvalid,
    S_AXI_BVALID,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_WSTRB,
    s_axis_st_tdata,
    fifo_count,
    s_axis_st_tvalid,
    m_axis_sr_tready,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output s_axis_st_tready;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [7:0]m_axis_sr_tdata;
  output sys_nReset;
  output S_AXI_RVALID;
  output UIF_res;
  output m_axis_sr_tvalid;
  output S_AXI_BVALID;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ACLK;
  input [1:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [1:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input [3:0]S_AXI_WSTRB;
  input [7:0]s_axis_st_tdata;
  input [11:0]fifo_count;
  input s_axis_st_tvalid;
  input m_axis_sr_tready;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire UIF_res;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [11:0]fifo_count;
  wire [7:0]m_axis_sr_tdata;
  wire m_axis_sr_tready;
  wire m_axis_sr_tvalid;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire \reg_data_out_reg[0]_i_1_n_0 ;
  wire \reg_data_out_reg[10]_i_1_n_0 ;
  wire \reg_data_out_reg[11]_i_1_n_0 ;
  wire \reg_data_out_reg[12]_i_1_n_0 ;
  wire \reg_data_out_reg[13]_i_1_n_0 ;
  wire \reg_data_out_reg[14]_i_1_n_0 ;
  wire \reg_data_out_reg[15]_i_1_n_0 ;
  wire \reg_data_out_reg[16]_i_1_n_0 ;
  wire \reg_data_out_reg[17]_i_1_n_0 ;
  wire \reg_data_out_reg[18]_i_1_n_0 ;
  wire \reg_data_out_reg[19]_i_1_n_0 ;
  wire \reg_data_out_reg[1]_i_1_n_0 ;
  wire \reg_data_out_reg[20]_i_1_n_0 ;
  wire \reg_data_out_reg[21]_i_1_n_0 ;
  wire \reg_data_out_reg[22]_i_1_n_0 ;
  wire \reg_data_out_reg[23]_i_1_n_0 ;
  wire \reg_data_out_reg[24]_i_1_n_0 ;
  wire \reg_data_out_reg[25]_i_1_n_0 ;
  wire \reg_data_out_reg[26]_i_1_n_0 ;
  wire \reg_data_out_reg[27]_i_1_n_0 ;
  wire \reg_data_out_reg[28]_i_1_n_0 ;
  wire \reg_data_out_reg[29]_i_1_n_0 ;
  wire \reg_data_out_reg[2]_i_1_n_0 ;
  wire \reg_data_out_reg[30]_i_1_n_0 ;
  wire \reg_data_out_reg[31]_i_1_n_0 ;
  wire \reg_data_out_reg[3]_i_1_n_0 ;
  wire \reg_data_out_reg[4]_i_1_n_0 ;
  wire \reg_data_out_reg[5]_i_1_n_0 ;
  wire \reg_data_out_reg[6]_i_1_n_0 ;
  wire \reg_data_out_reg[7]_i_1_n_0 ;
  wire \reg_data_out_reg[8]_i_1_n_0 ;
  wire \reg_data_out_reg[9]_i_1_n_0 ;
  wire [7:0]s_axis_st_tdata;
  wire s_axis_st_tready;
  wire s_axis_st_tvalid;
  wire [31:1]slv_reg0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire \sr_tdata[0]_i_1_n_0 ;
  wire \sr_tdata[1]_i_1_n_0 ;
  wire \sr_tdata[2]_i_1_n_0 ;
  wire \sr_tdata[3]_i_1_n_0 ;
  wire \sr_tdata[4]_i_1_n_0 ;
  wire \sr_tdata[5]_i_1_n_0 ;
  wire \sr_tdata[6]_i_1_n_0 ;
  wire \sr_tdata[7]_i_1_n_0 ;
  wire \sr_tdata[7]_i_3_n_0 ;
  wire sr_tvalid;
  wire sr_tvalid_i_1_n_0;
  wire sr_tvalid_reg_n_0;
  wire st_ready_reg_i_1_n_0;
  wire sys_nReset;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    UIF_res_INST_0
       (.I0(slv_reg0[1]),
        .O(UIF_res));
  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_sr_tvalid_INST_0
       (.I0(sr_tvalid_reg_n_0),
        .I1(m_axis_sr_tready),
        .O(m_axis_sr_tvalid));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[0] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[0]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[0]_i_1 
       (.I0(s_axis_st_tdata[0]),
        .I1(fifo_count[0]),
        .I2(axi_araddr[2]),
        .I3(sys_nReset),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[10] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[10]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out_reg[10]_i_1 
       (.I0(slv_reg0[10]),
        .I1(axi_araddr[2]),
        .I2(fifo_count[10]),
        .I3(axi_araddr[3]),
        .O(\reg_data_out_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[11] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[11]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out_reg[11]_i_1 
       (.I0(slv_reg0[11]),
        .I1(axi_araddr[2]),
        .I2(fifo_count[11]),
        .I3(axi_araddr[3]),
        .O(\reg_data_out_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[12] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[12]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[12]_i_1 
       (.I0(slv_reg0[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[13] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[13]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[13]_i_1 
       (.I0(slv_reg0[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[14] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[14]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[14]_i_1 
       (.I0(slv_reg0[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[15] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[15]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[15]_i_1 
       (.I0(slv_reg0[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[15]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[16] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[16]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[16]_i_1 
       (.I0(slv_reg0[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[16]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[17] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[17]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[17]_i_1 
       (.I0(slv_reg0[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[17]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[18] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[18]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[18]_i_1 
       (.I0(slv_reg0[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[18]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[19] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[19]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[19]_i_1 
       (.I0(slv_reg0[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[19]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[1] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[1]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[1]_i_1 
       (.I0(s_axis_st_tdata[1]),
        .I1(fifo_count[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[1]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[20] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[20]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[20]_i_1 
       (.I0(slv_reg0[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[20]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[21] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[21]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[21]_i_1 
       (.I0(slv_reg0[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[21]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[22] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[22]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[22]_i_1 
       (.I0(slv_reg0[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[22]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[23] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[23]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[23]_i_1 
       (.I0(slv_reg0[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[23]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[24] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[24]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[24]_i_1 
       (.I0(slv_reg0[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[24]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[25] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[25]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[25]_i_1 
       (.I0(slv_reg0[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[25]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[26] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[26]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[26]_i_1 
       (.I0(slv_reg0[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[26]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[27] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[27]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[27]_i_1 
       (.I0(slv_reg0[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[27]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[28] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[28]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[28]_i_1 
       (.I0(slv_reg0[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[28]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[29] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[29]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[29]_i_1 
       (.I0(slv_reg0[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[29]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[2] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[2]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[2]_i_1 
       (.I0(s_axis_st_tdata[2]),
        .I1(fifo_count[2]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[2]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[30] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[30]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \reg_data_out_reg[30]_i_1 
       (.I0(slv_reg0[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .O(\reg_data_out_reg[30]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[31] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[31]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8830)) 
    \reg_data_out_reg[31]_i_1 
       (.I0(s_axis_st_tvalid),
        .I1(axi_araddr[2]),
        .I2(slv_reg0[31]),
        .I3(axi_araddr[3]),
        .O(\reg_data_out_reg[31]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[3] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[3]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[3]_i_1 
       (.I0(s_axis_st_tdata[3]),
        .I1(fifo_count[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[3]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[4] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[4]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[4]_i_1 
       (.I0(s_axis_st_tdata[4]),
        .I1(fifo_count[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[4]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[5] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[5]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[5]_i_1 
       (.I0(s_axis_st_tdata[5]),
        .I1(fifo_count[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[5]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[6] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[6]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[6]_i_1 
       (.I0(s_axis_st_tdata[6]),
        .I1(fifo_count[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[6]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[7] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[7]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \reg_data_out_reg[7]_i_1 
       (.I0(s_axis_st_tdata[7]),
        .I1(fifo_count[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg0[7]),
        .I4(axi_araddr[3]),
        .O(\reg_data_out_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[8] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[8]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out_reg[8]_i_1 
       (.I0(slv_reg0[8]),
        .I1(axi_araddr[2]),
        .I2(fifo_count[8]),
        .I3(axi_araddr[3]),
        .O(\reg_data_out_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \reg_data_out_reg[9] 
       (.CLR(1'b0),
        .D(\reg_data_out_reg[9]_i_1_n_0 ),
        .G(S_AXI_ARESETN),
        .GE(1'b1),
        .Q(reg_data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \reg_data_out_reg[9]_i_1 
       (.I0(slv_reg0[9]),
        .I1(axi_araddr[2]),
        .I2(fifo_count[9]),
        .I3(axi_araddr[3]),
        .O(\reg_data_out_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg0[0]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(sr_tvalid),
        .I5(S_AXI_WSTRB[0]),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(sr_tvalid),
        .I5(S_AXI_WSTRB[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(sr_tvalid),
        .I5(S_AXI_WSTRB[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(sr_tvalid),
        .I5(S_AXI_WSTRB[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(sys_nReset),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[0]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(slv_reg_rden__0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[4]_i_1 
       (.I0(S_AXI_WDATA[4]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[5]_i_1 
       (.I0(S_AXI_WDATA[5]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[6]_i_1 
       (.I0(S_AXI_WDATA[6]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \sr_tdata[7]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WREADY),
        .O(\sr_tdata[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr_tdata[7]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(sr_tvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \sr_tdata[7]_i_3 
       (.I0(S_AXI_WDATA[7]),
        .I1(p_0_in[0]),
        .O(\sr_tdata[7]_i_3_n_0 ));
  FDRE \sr_tdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[0]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[0]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[1]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[1]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[2]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[2]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[3]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[3]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[4]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[4]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[5]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[5]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[6]_i_1_n_0 ),
        .Q(m_axis_sr_tdata[6]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  FDRE \sr_tdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(\sr_tdata[7]_i_3_n_0 ),
        .Q(m_axis_sr_tdata[7]),
        .R(\sr_tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sr_tvalid_i_1
       (.I0(p_0_in[0]),
        .O(sr_tvalid_i_1_n_0));
  FDRE sr_tvalid_reg
       (.C(S_AXI_ACLK),
        .CE(sr_tvalid),
        .D(sr_tvalid_i_1_n_0),
        .Q(sr_tvalid_reg_n_0),
        .R(\sr_tdata[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    st_ready_reg
       (.CLR(axi_awready_i_1_n_0),
        .D(slv_reg_rden__0),
        .G(st_ready_reg_i_1_n_0),
        .GE(1'b1),
        .Q(s_axis_st_tready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    st_ready_reg_i_1
       (.I0(axi_araddr[2]),
        .I1(axi_araddr[3]),
        .O(st_ready_reg_i_1_n_0));
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
