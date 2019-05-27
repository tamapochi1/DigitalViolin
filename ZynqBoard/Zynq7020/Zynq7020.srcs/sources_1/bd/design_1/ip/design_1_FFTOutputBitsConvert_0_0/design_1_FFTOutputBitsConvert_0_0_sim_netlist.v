// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 26 22:26:52 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_FFTOutputBitsConvert_0_0/design_1_FFTOutputBitsConvert_0_0_sim_netlist.v
// Design      : design_1_FFTOutputBitsConvert_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FFTOutputBitsConvert_0_0,FFTOutputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTOutputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_FFTOutputBitsConvert_0_0
   (m_axis_data_tdata,
    m_axis_data_tready,
    m_axis_data_tvalid,
    s_axis_data_tdata,
    s_axis_data_tready,
    s_axis_data_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) output [31:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) input m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) input [63:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65532} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65500} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65484} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65484} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 13} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 2} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input s_axis_data_tvalid;

  wire \<const0> ;
  wire [27:0]\^m_axis_data_tdata ;
  wire m_axis_data_tready;
  wire [63:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;

  assign m_axis_data_tdata[31] = \<const0> ;
  assign m_axis_data_tdata[30] = \<const0> ;
  assign m_axis_data_tdata[29] = \<const0> ;
  assign m_axis_data_tdata[28] = \<const0> ;
  assign m_axis_data_tdata[27:16] = \^m_axis_data_tdata [27:16];
  assign m_axis_data_tdata[15] = \<const0> ;
  assign m_axis_data_tdata[14] = \<const0> ;
  assign m_axis_data_tdata[13] = \<const0> ;
  assign m_axis_data_tdata[12] = \<const0> ;
  assign m_axis_data_tdata[11:0] = \^m_axis_data_tdata [11:0];
  assign m_axis_data_tvalid = s_axis_data_tvalid;
  assign s_axis_data_tready = m_axis_data_tready;
  GND GND
       (.G(\<const0> ));
  design_1_FFTOutputBitsConvert_0_0_FFTOutputBitsConverter inst
       (.m_axis_data_tdata({\^m_axis_data_tdata [27:16],\^m_axis_data_tdata [11:0]}),
        .s_axis_data_tdata({s_axis_data_tdata[59:48],s_axis_data_tdata[43:32],s_axis_data_tdata[27:16],s_axis_data_tdata[11:0]}));
endmodule

(* ORIG_REF_NAME = "FFTOutputBitsConverter" *) 
module design_1_FFTOutputBitsConvert_0_0_FFTOutputBitsConverter
   (m_axis_data_tdata,
    s_axis_data_tdata);
  output [23:0]m_axis_data_tdata;
  input [47:0]s_axis_data_tdata;

  wire [23:0]m_axis_data_tdata;
  wire m_axis_data_tdata0__0_carry__0__0_n_0;
  wire m_axis_data_tdata0__0_carry__0__0_n_1;
  wire m_axis_data_tdata0__0_carry__0__0_n_2;
  wire m_axis_data_tdata0__0_carry__0__0_n_3;
  wire m_axis_data_tdata0__0_carry__0_i_1__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_1_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_2__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_2_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_3__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_3_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_4__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_4_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_5__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_5_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_6__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_6_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_7__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_7_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_8__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_i_8_n_0;
  wire m_axis_data_tdata0__0_carry__0_n_0;
  wire m_axis_data_tdata0__0_carry__0_n_1;
  wire m_axis_data_tdata0__0_carry__0_n_2;
  wire m_axis_data_tdata0__0_carry__0_n_3;
  wire m_axis_data_tdata0__0_carry__1__0_n_1;
  wire m_axis_data_tdata0__0_carry__1__0_n_2;
  wire m_axis_data_tdata0__0_carry__1__0_n_3;
  wire m_axis_data_tdata0__0_carry__1_i_1__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_1_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_2__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_2_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_3__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_3_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_4__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_4_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_5__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_5_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_6__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_6_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_7__0_n_0;
  wire m_axis_data_tdata0__0_carry__1_i_7_n_0;
  wire m_axis_data_tdata0__0_carry__1_n_1;
  wire m_axis_data_tdata0__0_carry__1_n_2;
  wire m_axis_data_tdata0__0_carry__1_n_3;
  wire m_axis_data_tdata0__0_carry__2_n_0;
  wire m_axis_data_tdata0__0_carry__2_n_1;
  wire m_axis_data_tdata0__0_carry__2_n_2;
  wire m_axis_data_tdata0__0_carry__2_n_3;
  wire m_axis_data_tdata0__0_carry_i_1__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_1_n_0;
  wire m_axis_data_tdata0__0_carry_i_2__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_2_n_0;
  wire m_axis_data_tdata0__0_carry_i_3__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_3_n_0;
  wire m_axis_data_tdata0__0_carry_i_4__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_4_n_0;
  wire m_axis_data_tdata0__0_carry_i_5__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_5_n_0;
  wire m_axis_data_tdata0__0_carry_i_6__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_6_n_0;
  wire m_axis_data_tdata0__0_carry_i_7__0_n_0;
  wire m_axis_data_tdata0__0_carry_i_7_n_0;
  wire m_axis_data_tdata0__0_carry_n_0;
  wire m_axis_data_tdata0__0_carry_n_1;
  wire m_axis_data_tdata0__0_carry_n_2;
  wire m_axis_data_tdata0__0_carry_n_3;
  wire [47:0]s_axis_data_tdata;
  wire [3:3]NLW_m_axis_data_tdata0__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_m_axis_data_tdata0__0_carry__1__0_CO_UNCONNECTED;

  CARRY4 m_axis_data_tdata0__0_carry
       (.CI(1'b0),
        .CO({m_axis_data_tdata0__0_carry_n_0,m_axis_data_tdata0__0_carry_n_1,m_axis_data_tdata0__0_carry_n_2,m_axis_data_tdata0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_data_tdata0__0_carry_i_1_n_0,m_axis_data_tdata0__0_carry_i_2_n_0,m_axis_data_tdata0__0_carry_i_3_n_0,s_axis_data_tdata[11]}),
        .O(m_axis_data_tdata[3:0]),
        .S({m_axis_data_tdata0__0_carry_i_4_n_0,m_axis_data_tdata0__0_carry_i_5_n_0,m_axis_data_tdata0__0_carry_i_6_n_0,m_axis_data_tdata0__0_carry_i_7_n_0}));
  CARRY4 m_axis_data_tdata0__0_carry__0
       (.CI(m_axis_data_tdata0__0_carry_n_0),
        .CO({m_axis_data_tdata0__0_carry__0_n_0,m_axis_data_tdata0__0_carry__0_n_1,m_axis_data_tdata0__0_carry__0_n_2,m_axis_data_tdata0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_data_tdata0__0_carry__0_i_1_n_0,m_axis_data_tdata0__0_carry__0_i_2_n_0,m_axis_data_tdata0__0_carry__0_i_3_n_0,m_axis_data_tdata0__0_carry__0_i_4_n_0}),
        .O(m_axis_data_tdata[7:4]),
        .S({m_axis_data_tdata0__0_carry__0_i_5_n_0,m_axis_data_tdata0__0_carry__0_i_6_n_0,m_axis_data_tdata0__0_carry__0_i_7_n_0,m_axis_data_tdata0__0_carry__0_i_8_n_0}));
  CARRY4 m_axis_data_tdata0__0_carry__0__0
       (.CI(m_axis_data_tdata0__0_carry__2_n_0),
        .CO({m_axis_data_tdata0__0_carry__0__0_n_0,m_axis_data_tdata0__0_carry__0__0_n_1,m_axis_data_tdata0__0_carry__0__0_n_2,m_axis_data_tdata0__0_carry__0__0_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_data_tdata0__0_carry__0_i_1__0_n_0,m_axis_data_tdata0__0_carry__0_i_2__0_n_0,m_axis_data_tdata0__0_carry__0_i_3__0_n_0,m_axis_data_tdata0__0_carry__0_i_4__0_n_0}),
        .O(m_axis_data_tdata[19:16]),
        .S({m_axis_data_tdata0__0_carry__0_i_5__0_n_0,m_axis_data_tdata0__0_carry__0_i_6__0_n_0,m_axis_data_tdata0__0_carry__0_i_7__0_n_0,m_axis_data_tdata0__0_carry__0_i_8__0_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_1
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_1__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_2
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_2__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__0_i_2__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_3
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_3__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__0_i_3__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__0_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__0_i_4__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_5
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__0_i_1_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_5__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__0_i_1__0_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_5__0_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_6
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__0_i_2_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_6__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__0_i_2__0_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_6__0_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_7
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__0_i_3_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_7__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__0_i_3__0_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_7__0_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_8
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__0_i_4_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__0_i_8__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__0_i_4__0_n_0),
        .O(m_axis_data_tdata0__0_carry__0_i_8__0_n_0));
  CARRY4 m_axis_data_tdata0__0_carry__1
       (.CI(m_axis_data_tdata0__0_carry__0_n_0),
        .CO({NLW_m_axis_data_tdata0__0_carry__1_CO_UNCONNECTED[3],m_axis_data_tdata0__0_carry__1_n_1,m_axis_data_tdata0__0_carry__1_n_2,m_axis_data_tdata0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,m_axis_data_tdata0__0_carry__1_i_1_n_0,m_axis_data_tdata0__0_carry__1_i_2_n_0,m_axis_data_tdata0__0_carry__1_i_3_n_0}),
        .O(m_axis_data_tdata[11:8]),
        .S({m_axis_data_tdata0__0_carry__1_i_4_n_0,m_axis_data_tdata0__0_carry__1_i_5_n_0,m_axis_data_tdata0__0_carry__1_i_6_n_0,m_axis_data_tdata0__0_carry__1_i_7_n_0}));
  CARRY4 m_axis_data_tdata0__0_carry__1__0
       (.CI(m_axis_data_tdata0__0_carry__0__0_n_0),
        .CO({NLW_m_axis_data_tdata0__0_carry__1__0_CO_UNCONNECTED[3],m_axis_data_tdata0__0_carry__1__0_n_1,m_axis_data_tdata0__0_carry__1__0_n_2,m_axis_data_tdata0__0_carry__1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,m_axis_data_tdata0__0_carry__1_i_1__0_n_0,m_axis_data_tdata0__0_carry__1_i_2__0_n_0,m_axis_data_tdata0__0_carry__1_i_3__0_n_0}),
        .O(m_axis_data_tdata[23:20]),
        .S({m_axis_data_tdata0__0_carry__1_i_4__0_n_0,m_axis_data_tdata0__0_carry__1_i_5__0_n_0,m_axis_data_tdata0__0_carry__1_i_6__0_n_0,m_axis_data_tdata0__0_carry__1_i_7__0_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_1
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_1__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__1_i_1__0_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_2
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_2__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__1_i_2__0_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_3
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_3__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_4
       (.I0(s_axis_data_tdata[22]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[10]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry__1_i_4__0
       (.I0(s_axis_data_tdata[46]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[34]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry__1_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_5
       (.I0(m_axis_data_tdata0__0_carry__1_i_1_n_0),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[22]),
        .I3(s_axis_data_tdata[11]),
        .I4(s_axis_data_tdata[10]),
        .O(m_axis_data_tdata0__0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_5__0
       (.I0(m_axis_data_tdata0__0_carry__1_i_1__0_n_0),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[46]),
        .I3(s_axis_data_tdata[35]),
        .I4(s_axis_data_tdata[34]),
        .O(m_axis_data_tdata0__0_carry__1_i_5__0_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_6
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__1_i_2_n_0),
        .O(m_axis_data_tdata0__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_6__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__1_i_2__0_n_0),
        .O(m_axis_data_tdata0__0_carry__1_i_6__0_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_7
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry__1_i_3_n_0),
        .O(m_axis_data_tdata0__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry__1_i_7__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry__1_i_3__0_n_0),
        .O(m_axis_data_tdata0__0_carry__1_i_7__0_n_0));
  CARRY4 m_axis_data_tdata0__0_carry__2
       (.CI(1'b0),
        .CO({m_axis_data_tdata0__0_carry__2_n_0,m_axis_data_tdata0__0_carry__2_n_1,m_axis_data_tdata0__0_carry__2_n_2,m_axis_data_tdata0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_data_tdata0__0_carry_i_1__0_n_0,m_axis_data_tdata0__0_carry_i_2__0_n_0,m_axis_data_tdata0__0_carry_i_3__0_n_0,s_axis_data_tdata[35]}),
        .O(m_axis_data_tdata[15:12]),
        .S({m_axis_data_tdata0__0_carry_i_4__0_n_0,m_axis_data_tdata0__0_carry_i_5__0_n_0,m_axis_data_tdata0__0_carry_i_6__0_n_0,m_axis_data_tdata0__0_carry_i_7__0_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry_i_1
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry_i_1__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry_i_2
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    m_axis_data_tdata0__0_carry_i_2__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    m_axis_data_tdata0__0_carry_i_3
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[0]),
        .I3(s_axis_data_tdata[11]),
        .O(m_axis_data_tdata0__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    m_axis_data_tdata0__0_carry_i_3__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[24]),
        .I3(s_axis_data_tdata[35]),
        .O(m_axis_data_tdata0__0_carry_i_3__0_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry_i_1_n_0),
        .O(m_axis_data_tdata0__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry_i_1__0_n_0),
        .O(m_axis_data_tdata0__0_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_5
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry_i_2_n_0),
        .O(m_axis_data_tdata0__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_5__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry_i_2__0_n_0),
        .O(m_axis_data_tdata0__0_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_6
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .I4(m_axis_data_tdata0__0_carry_i_3_n_0),
        .O(m_axis_data_tdata0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    m_axis_data_tdata0__0_carry_i_6__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .I4(m_axis_data_tdata0__0_carry_i_3__0_n_0),
        .O(m_axis_data_tdata0__0_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_data_tdata0__0_carry_i_7
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[0]),
        .O(m_axis_data_tdata0__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    m_axis_data_tdata0__0_carry_i_7__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[24]),
        .O(m_axis_data_tdata0__0_carry_i_7__0_n_0));
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
