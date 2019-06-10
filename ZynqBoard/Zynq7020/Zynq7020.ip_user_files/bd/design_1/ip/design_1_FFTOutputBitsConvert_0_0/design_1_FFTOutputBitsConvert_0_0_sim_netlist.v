// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun  5 23:56:13 2019
// Host        : DESKTOP-F4TL0I1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_FFTOutputBitsConvert_0_0/design_1_FFTOutputBitsConvert_0_0_sim_netlist.v
// Design      : design_1_FFTOutputBitsConvert_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_FFTOutputBitsConvert_0_0,FFTOutputBitsConverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FFTOutputBitsConverter,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_FFTOutputBitsConvert_0_0
   (nReset,
    clk,
    bram_addr,
    bram_clk,
    bram_wddata,
    bram_en,
    bram_rst,
    bram_we,
    event_fft_complete,
    s_axis_data_tdata,
    s_axis_data_tready,
    s_axis_data_tvalid);
  input nReset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_data, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 bram_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_clk, ASSOCIATED_RESET bram_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_FFTOutputBitsConvert_0_0_bram_clk, INSERT_VIP 0" *) output bram_clk;
  output [127:0]bram_wddata;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bram_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output bram_rst;
  output bram_we;
  output event_fft_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) input [255:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65532} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65308} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65292} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 256} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 256} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65292} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 16} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 256} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} value 256} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 11} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 256 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 61} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {attribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input s_axis_data_tvalid;

  wire \<const0> ;
  wire [11:4]\^bram_addr ;
  wire bram_rst;
  wire [123:0]\^bram_wddata ;
  wire clk;
  wire event_fft_complete;
  wire nReset;
  wire [255:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;

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
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11:4] = \^bram_addr [11:4];
  assign bram_addr[3] = \<const0> ;
  assign bram_addr[2] = \<const0> ;
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = clk;
  assign bram_en = nReset;
  assign bram_wddata[127] = \<const0> ;
  assign bram_wddata[126] = \<const0> ;
  assign bram_wddata[125] = \<const0> ;
  assign bram_wddata[124] = \<const0> ;
  assign bram_wddata[123:112] = \^bram_wddata [123:112];
  assign bram_wddata[111] = \<const0> ;
  assign bram_wddata[110] = \<const0> ;
  assign bram_wddata[109] = \<const0> ;
  assign bram_wddata[108] = \<const0> ;
  assign bram_wddata[107:96] = \^bram_wddata [107:96];
  assign bram_wddata[95] = \<const0> ;
  assign bram_wddata[94] = \<const0> ;
  assign bram_wddata[93] = \<const0> ;
  assign bram_wddata[92] = \<const0> ;
  assign bram_wddata[91:80] = \^bram_wddata [91:80];
  assign bram_wddata[79] = \<const0> ;
  assign bram_wddata[78] = \<const0> ;
  assign bram_wddata[77] = \<const0> ;
  assign bram_wddata[76] = \<const0> ;
  assign bram_wddata[75:64] = \^bram_wddata [75:64];
  assign bram_wddata[63] = \<const0> ;
  assign bram_wddata[62] = \<const0> ;
  assign bram_wddata[61] = \<const0> ;
  assign bram_wddata[60] = \<const0> ;
  assign bram_wddata[59:48] = \^bram_wddata [59:48];
  assign bram_wddata[47] = \<const0> ;
  assign bram_wddata[46] = \<const0> ;
  assign bram_wddata[45] = \<const0> ;
  assign bram_wddata[44] = \<const0> ;
  assign bram_wddata[43:32] = \^bram_wddata [43:32];
  assign bram_wddata[31] = \<const0> ;
  assign bram_wddata[30] = \<const0> ;
  assign bram_wddata[29] = \<const0> ;
  assign bram_wddata[28] = \<const0> ;
  assign bram_wddata[27:16] = \^bram_wddata [27:16];
  assign bram_wddata[15] = \<const0> ;
  assign bram_wddata[14] = \<const0> ;
  assign bram_wddata[13] = \<const0> ;
  assign bram_wddata[12] = \<const0> ;
  assign bram_wddata[11:0] = \^bram_wddata [11:0];
  assign bram_we = s_axis_data_tvalid;
  assign s_axis_data_tready = nReset;
  GND GND
       (.G(\<const0> ));
  design_1_FFTOutputBitsConvert_0_0_FFTOutputBitsConverter inst
       (.SR(bram_rst),
        .bram_addr(\^bram_addr ),
        .bram_wddata({\^bram_wddata [123:112],\^bram_wddata [107:96],\^bram_wddata [91:80],\^bram_wddata [75:64],\^bram_wddata [59:48],\^bram_wddata [43:32],\^bram_wddata [27:16],\^bram_wddata [11:0]}),
        .clk(clk),
        .event_fft_complete(event_fft_complete),
        .nReset(nReset),
        .s_axis_data_tdata({s_axis_data_tdata[251:240],s_axis_data_tdata[235:224],s_axis_data_tdata[219:208],s_axis_data_tdata[203:192],s_axis_data_tdata[187:176],s_axis_data_tdata[171:160],s_axis_data_tdata[155:144],s_axis_data_tdata[139:128],s_axis_data_tdata[123:112],s_axis_data_tdata[107:96],s_axis_data_tdata[91:80],s_axis_data_tdata[75:64],s_axis_data_tdata[59:48],s_axis_data_tdata[43:32],s_axis_data_tdata[27:16],s_axis_data_tdata[11:0]}),
        .s_axis_data_tvalid(s_axis_data_tvalid));
endmodule

(* ORIG_REF_NAME = "FFTOutputBitsConverter" *) 
module design_1_FFTOutputBitsConvert_0_0_FFTOutputBitsConverter
   (bram_addr,
    SR,
    bram_wddata,
    event_fft_complete,
    s_axis_data_tvalid,
    clk,
    s_axis_data_tdata,
    nReset);
  output [7:0]bram_addr;
  output [0:0]SR;
  output [95:0]bram_wddata;
  output event_fft_complete;
  input s_axis_data_tvalid;
  input clk;
  input [191:0]s_axis_data_tdata;
  input nReset;

  wire [0:0]SR;
  wire [7:0]bram_addr;
  wire [95:0]bram_wddata;
  wire bram_wddata0__0_carry__0__0_n_0;
  wire bram_wddata0__0_carry__0__0_n_1;
  wire bram_wddata0__0_carry__0__0_n_2;
  wire bram_wddata0__0_carry__0__0_n_3;
  wire bram_wddata0__0_carry__0__1_n_0;
  wire bram_wddata0__0_carry__0__1_n_1;
  wire bram_wddata0__0_carry__0__1_n_2;
  wire bram_wddata0__0_carry__0__1_n_3;
  wire bram_wddata0__0_carry__0__2_n_0;
  wire bram_wddata0__0_carry__0__2_n_1;
  wire bram_wddata0__0_carry__0__2_n_2;
  wire bram_wddata0__0_carry__0__2_n_3;
  wire bram_wddata0__0_carry__0__3_n_0;
  wire bram_wddata0__0_carry__0__3_n_1;
  wire bram_wddata0__0_carry__0__3_n_2;
  wire bram_wddata0__0_carry__0__3_n_3;
  wire bram_wddata0__0_carry__0__4_n_0;
  wire bram_wddata0__0_carry__0__4_n_1;
  wire bram_wddata0__0_carry__0__4_n_2;
  wire bram_wddata0__0_carry__0__4_n_3;
  wire bram_wddata0__0_carry__0__5_n_0;
  wire bram_wddata0__0_carry__0__5_n_1;
  wire bram_wddata0__0_carry__0__5_n_2;
  wire bram_wddata0__0_carry__0__5_n_3;
  wire bram_wddata0__0_carry__0__6_n_0;
  wire bram_wddata0__0_carry__0__6_n_1;
  wire bram_wddata0__0_carry__0__6_n_2;
  wire bram_wddata0__0_carry__0__6_n_3;
  wire bram_wddata0__0_carry__0_i_1__0_n_0;
  wire bram_wddata0__0_carry__0_i_1__1_n_0;
  wire bram_wddata0__0_carry__0_i_1__2_n_0;
  wire bram_wddata0__0_carry__0_i_1__3_n_0;
  wire bram_wddata0__0_carry__0_i_1__4_n_0;
  wire bram_wddata0__0_carry__0_i_1__5_n_0;
  wire bram_wddata0__0_carry__0_i_1__6_n_0;
  wire bram_wddata0__0_carry__0_i_1_n_0;
  wire bram_wddata0__0_carry__0_i_2__0_n_0;
  wire bram_wddata0__0_carry__0_i_2__1_n_0;
  wire bram_wddata0__0_carry__0_i_2__2_n_0;
  wire bram_wddata0__0_carry__0_i_2__3_n_0;
  wire bram_wddata0__0_carry__0_i_2__4_n_0;
  wire bram_wddata0__0_carry__0_i_2__5_n_0;
  wire bram_wddata0__0_carry__0_i_2__6_n_0;
  wire bram_wddata0__0_carry__0_i_2_n_0;
  wire bram_wddata0__0_carry__0_i_3__0_n_0;
  wire bram_wddata0__0_carry__0_i_3__1_n_0;
  wire bram_wddata0__0_carry__0_i_3__2_n_0;
  wire bram_wddata0__0_carry__0_i_3__3_n_0;
  wire bram_wddata0__0_carry__0_i_3__4_n_0;
  wire bram_wddata0__0_carry__0_i_3__5_n_0;
  wire bram_wddata0__0_carry__0_i_3__6_n_0;
  wire bram_wddata0__0_carry__0_i_3_n_0;
  wire bram_wddata0__0_carry__0_i_4__0_n_0;
  wire bram_wddata0__0_carry__0_i_4__1_n_0;
  wire bram_wddata0__0_carry__0_i_4__2_n_0;
  wire bram_wddata0__0_carry__0_i_4__3_n_0;
  wire bram_wddata0__0_carry__0_i_4__4_n_0;
  wire bram_wddata0__0_carry__0_i_4__5_n_0;
  wire bram_wddata0__0_carry__0_i_4__6_n_0;
  wire bram_wddata0__0_carry__0_i_4_n_0;
  wire bram_wddata0__0_carry__0_i_5__0_n_0;
  wire bram_wddata0__0_carry__0_i_5__1_n_0;
  wire bram_wddata0__0_carry__0_i_5__2_n_0;
  wire bram_wddata0__0_carry__0_i_5__3_n_0;
  wire bram_wddata0__0_carry__0_i_5__4_n_0;
  wire bram_wddata0__0_carry__0_i_5__5_n_0;
  wire bram_wddata0__0_carry__0_i_5__6_n_0;
  wire bram_wddata0__0_carry__0_i_5_n_0;
  wire bram_wddata0__0_carry__0_i_6__0_n_0;
  wire bram_wddata0__0_carry__0_i_6__1_n_0;
  wire bram_wddata0__0_carry__0_i_6__2_n_0;
  wire bram_wddata0__0_carry__0_i_6__3_n_0;
  wire bram_wddata0__0_carry__0_i_6__4_n_0;
  wire bram_wddata0__0_carry__0_i_6__5_n_0;
  wire bram_wddata0__0_carry__0_i_6__6_n_0;
  wire bram_wddata0__0_carry__0_i_6_n_0;
  wire bram_wddata0__0_carry__0_i_7__0_n_0;
  wire bram_wddata0__0_carry__0_i_7__1_n_0;
  wire bram_wddata0__0_carry__0_i_7__2_n_0;
  wire bram_wddata0__0_carry__0_i_7__3_n_0;
  wire bram_wddata0__0_carry__0_i_7__4_n_0;
  wire bram_wddata0__0_carry__0_i_7__5_n_0;
  wire bram_wddata0__0_carry__0_i_7__6_n_0;
  wire bram_wddata0__0_carry__0_i_7_n_0;
  wire bram_wddata0__0_carry__0_i_8__0_n_0;
  wire bram_wddata0__0_carry__0_i_8__1_n_0;
  wire bram_wddata0__0_carry__0_i_8__2_n_0;
  wire bram_wddata0__0_carry__0_i_8__3_n_0;
  wire bram_wddata0__0_carry__0_i_8__4_n_0;
  wire bram_wddata0__0_carry__0_i_8__5_n_0;
  wire bram_wddata0__0_carry__0_i_8__6_n_0;
  wire bram_wddata0__0_carry__0_i_8_n_0;
  wire bram_wddata0__0_carry__0_n_0;
  wire bram_wddata0__0_carry__0_n_1;
  wire bram_wddata0__0_carry__0_n_2;
  wire bram_wddata0__0_carry__0_n_3;
  wire bram_wddata0__0_carry__1__0_n_1;
  wire bram_wddata0__0_carry__1__0_n_2;
  wire bram_wddata0__0_carry__1__0_n_3;
  wire bram_wddata0__0_carry__1__1_n_1;
  wire bram_wddata0__0_carry__1__1_n_2;
  wire bram_wddata0__0_carry__1__1_n_3;
  wire bram_wddata0__0_carry__1__2_n_1;
  wire bram_wddata0__0_carry__1__2_n_2;
  wire bram_wddata0__0_carry__1__2_n_3;
  wire bram_wddata0__0_carry__1__3_n_1;
  wire bram_wddata0__0_carry__1__3_n_2;
  wire bram_wddata0__0_carry__1__3_n_3;
  wire bram_wddata0__0_carry__1__4_n_1;
  wire bram_wddata0__0_carry__1__4_n_2;
  wire bram_wddata0__0_carry__1__4_n_3;
  wire bram_wddata0__0_carry__1__5_n_1;
  wire bram_wddata0__0_carry__1__5_n_2;
  wire bram_wddata0__0_carry__1__5_n_3;
  wire bram_wddata0__0_carry__1__6_n_1;
  wire bram_wddata0__0_carry__1__6_n_2;
  wire bram_wddata0__0_carry__1__6_n_3;
  wire bram_wddata0__0_carry__1_i_1__0_n_0;
  wire bram_wddata0__0_carry__1_i_1__1_n_0;
  wire bram_wddata0__0_carry__1_i_1__2_n_0;
  wire bram_wddata0__0_carry__1_i_1__3_n_0;
  wire bram_wddata0__0_carry__1_i_1__4_n_0;
  wire bram_wddata0__0_carry__1_i_1__5_n_0;
  wire bram_wddata0__0_carry__1_i_1__6_n_0;
  wire bram_wddata0__0_carry__1_i_1_n_0;
  wire bram_wddata0__0_carry__1_i_2__0_n_0;
  wire bram_wddata0__0_carry__1_i_2__1_n_0;
  wire bram_wddata0__0_carry__1_i_2__2_n_0;
  wire bram_wddata0__0_carry__1_i_2__3_n_0;
  wire bram_wddata0__0_carry__1_i_2__4_n_0;
  wire bram_wddata0__0_carry__1_i_2__5_n_0;
  wire bram_wddata0__0_carry__1_i_2__6_n_0;
  wire bram_wddata0__0_carry__1_i_2_n_0;
  wire bram_wddata0__0_carry__1_i_3__0_n_0;
  wire bram_wddata0__0_carry__1_i_3__1_n_0;
  wire bram_wddata0__0_carry__1_i_3__2_n_0;
  wire bram_wddata0__0_carry__1_i_3__3_n_0;
  wire bram_wddata0__0_carry__1_i_3__4_n_0;
  wire bram_wddata0__0_carry__1_i_3__5_n_0;
  wire bram_wddata0__0_carry__1_i_3__6_n_0;
  wire bram_wddata0__0_carry__1_i_3_n_0;
  wire bram_wddata0__0_carry__1_i_4__0_n_0;
  wire bram_wddata0__0_carry__1_i_4__1_n_0;
  wire bram_wddata0__0_carry__1_i_4__2_n_0;
  wire bram_wddata0__0_carry__1_i_4__3_n_0;
  wire bram_wddata0__0_carry__1_i_4__4_n_0;
  wire bram_wddata0__0_carry__1_i_4__5_n_0;
  wire bram_wddata0__0_carry__1_i_4__6_n_0;
  wire bram_wddata0__0_carry__1_i_4_n_0;
  wire bram_wddata0__0_carry__1_i_5__0_n_0;
  wire bram_wddata0__0_carry__1_i_5__1_n_0;
  wire bram_wddata0__0_carry__1_i_5__2_n_0;
  wire bram_wddata0__0_carry__1_i_5__3_n_0;
  wire bram_wddata0__0_carry__1_i_5__4_n_0;
  wire bram_wddata0__0_carry__1_i_5__5_n_0;
  wire bram_wddata0__0_carry__1_i_5__6_n_0;
  wire bram_wddata0__0_carry__1_i_5_n_0;
  wire bram_wddata0__0_carry__1_i_6__0_n_0;
  wire bram_wddata0__0_carry__1_i_6__1_n_0;
  wire bram_wddata0__0_carry__1_i_6__2_n_0;
  wire bram_wddata0__0_carry__1_i_6__3_n_0;
  wire bram_wddata0__0_carry__1_i_6__4_n_0;
  wire bram_wddata0__0_carry__1_i_6__5_n_0;
  wire bram_wddata0__0_carry__1_i_6__6_n_0;
  wire bram_wddata0__0_carry__1_i_6_n_0;
  wire bram_wddata0__0_carry__1_i_7__0_n_0;
  wire bram_wddata0__0_carry__1_i_7__1_n_0;
  wire bram_wddata0__0_carry__1_i_7__2_n_0;
  wire bram_wddata0__0_carry__1_i_7__3_n_0;
  wire bram_wddata0__0_carry__1_i_7__4_n_0;
  wire bram_wddata0__0_carry__1_i_7__5_n_0;
  wire bram_wddata0__0_carry__1_i_7__6_n_0;
  wire bram_wddata0__0_carry__1_i_7_n_0;
  wire bram_wddata0__0_carry__1_n_1;
  wire bram_wddata0__0_carry__1_n_2;
  wire bram_wddata0__0_carry__1_n_3;
  wire bram_wddata0__0_carry__2_n_0;
  wire bram_wddata0__0_carry__2_n_1;
  wire bram_wddata0__0_carry__2_n_2;
  wire bram_wddata0__0_carry__2_n_3;
  wire bram_wddata0__0_carry__3_n_0;
  wire bram_wddata0__0_carry__3_n_1;
  wire bram_wddata0__0_carry__3_n_2;
  wire bram_wddata0__0_carry__3_n_3;
  wire bram_wddata0__0_carry__4_n_0;
  wire bram_wddata0__0_carry__4_n_1;
  wire bram_wddata0__0_carry__4_n_2;
  wire bram_wddata0__0_carry__4_n_3;
  wire bram_wddata0__0_carry__5_n_0;
  wire bram_wddata0__0_carry__5_n_1;
  wire bram_wddata0__0_carry__5_n_2;
  wire bram_wddata0__0_carry__5_n_3;
  wire bram_wddata0__0_carry__6_n_0;
  wire bram_wddata0__0_carry__6_n_1;
  wire bram_wddata0__0_carry__6_n_2;
  wire bram_wddata0__0_carry__6_n_3;
  wire bram_wddata0__0_carry__7_n_0;
  wire bram_wddata0__0_carry__7_n_1;
  wire bram_wddata0__0_carry__7_n_2;
  wire bram_wddata0__0_carry__7_n_3;
  wire bram_wddata0__0_carry__8_n_0;
  wire bram_wddata0__0_carry__8_n_1;
  wire bram_wddata0__0_carry__8_n_2;
  wire bram_wddata0__0_carry__8_n_3;
  wire bram_wddata0__0_carry_i_1__0_n_0;
  wire bram_wddata0__0_carry_i_1__1_n_0;
  wire bram_wddata0__0_carry_i_1__2_n_0;
  wire bram_wddata0__0_carry_i_1__3_n_0;
  wire bram_wddata0__0_carry_i_1__4_n_0;
  wire bram_wddata0__0_carry_i_1__5_n_0;
  wire bram_wddata0__0_carry_i_1__6_n_0;
  wire bram_wddata0__0_carry_i_1_n_0;
  wire bram_wddata0__0_carry_i_2__0_n_0;
  wire bram_wddata0__0_carry_i_2__1_n_0;
  wire bram_wddata0__0_carry_i_2__2_n_0;
  wire bram_wddata0__0_carry_i_2__3_n_0;
  wire bram_wddata0__0_carry_i_2__4_n_0;
  wire bram_wddata0__0_carry_i_2__5_n_0;
  wire bram_wddata0__0_carry_i_2__6_n_0;
  wire bram_wddata0__0_carry_i_2_n_0;
  wire bram_wddata0__0_carry_i_3__0_n_0;
  wire bram_wddata0__0_carry_i_3__1_n_0;
  wire bram_wddata0__0_carry_i_3__2_n_0;
  wire bram_wddata0__0_carry_i_3__3_n_0;
  wire bram_wddata0__0_carry_i_3__4_n_0;
  wire bram_wddata0__0_carry_i_3__5_n_0;
  wire bram_wddata0__0_carry_i_3__6_n_0;
  wire bram_wddata0__0_carry_i_3_n_0;
  wire bram_wddata0__0_carry_i_4__0_n_0;
  wire bram_wddata0__0_carry_i_4__1_n_0;
  wire bram_wddata0__0_carry_i_4__2_n_0;
  wire bram_wddata0__0_carry_i_4__3_n_0;
  wire bram_wddata0__0_carry_i_4__4_n_0;
  wire bram_wddata0__0_carry_i_4__5_n_0;
  wire bram_wddata0__0_carry_i_4__6_n_0;
  wire bram_wddata0__0_carry_i_4_n_0;
  wire bram_wddata0__0_carry_i_5__0_n_0;
  wire bram_wddata0__0_carry_i_5__1_n_0;
  wire bram_wddata0__0_carry_i_5__2_n_0;
  wire bram_wddata0__0_carry_i_5__3_n_0;
  wire bram_wddata0__0_carry_i_5__4_n_0;
  wire bram_wddata0__0_carry_i_5__5_n_0;
  wire bram_wddata0__0_carry_i_5__6_n_0;
  wire bram_wddata0__0_carry_i_5_n_0;
  wire bram_wddata0__0_carry_i_6__0_n_0;
  wire bram_wddata0__0_carry_i_6__1_n_0;
  wire bram_wddata0__0_carry_i_6__2_n_0;
  wire bram_wddata0__0_carry_i_6__3_n_0;
  wire bram_wddata0__0_carry_i_6__4_n_0;
  wire bram_wddata0__0_carry_i_6__5_n_0;
  wire bram_wddata0__0_carry_i_6__6_n_0;
  wire bram_wddata0__0_carry_i_6_n_0;
  wire bram_wddata0__0_carry_i_7__0_n_0;
  wire bram_wddata0__0_carry_i_7__1_n_0;
  wire bram_wddata0__0_carry_i_7__2_n_0;
  wire bram_wddata0__0_carry_i_7__3_n_0;
  wire bram_wddata0__0_carry_i_7__4_n_0;
  wire bram_wddata0__0_carry_i_7__5_n_0;
  wire bram_wddata0__0_carry_i_7__6_n_0;
  wire bram_wddata0__0_carry_i_7_n_0;
  wire bram_wddata0__0_carry_n_0;
  wire bram_wddata0__0_carry_n_1;
  wire bram_wddata0__0_carry_n_2;
  wire bram_wddata0__0_carry_n_3;
  wire [7:0]byteCounter;
  wire \byteCounter[7]_i_2_n_0 ;
  wire clk;
  wire complete_i_1_n_0;
  wire event_fft_complete;
  wire nReset;
  wire [191:0]s_axis_data_tdata;
  wire s_axis_data_tvalid;
  wire started;
  wire started_i_1_n_0;
  wire [3:3]NLW_bram_wddata0__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__0_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__1_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__2_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__3_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__4_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__5_CO_UNCONNECTED;
  wire [3:3]NLW_bram_wddata0__0_carry__1__6_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_INST_0
       (.I0(nReset),
        .O(SR));
  CARRY4 bram_wddata0__0_carry
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry_n_0,bram_wddata0__0_carry_n_1,bram_wddata0__0_carry_n_2,bram_wddata0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1_n_0,bram_wddata0__0_carry_i_2_n_0,bram_wddata0__0_carry_i_3_n_0,s_axis_data_tdata[11]}),
        .O(bram_wddata[3:0]),
        .S({bram_wddata0__0_carry_i_4_n_0,bram_wddata0__0_carry_i_5_n_0,bram_wddata0__0_carry_i_6_n_0,bram_wddata0__0_carry_i_7_n_0}));
  CARRY4 bram_wddata0__0_carry__0
       (.CI(bram_wddata0__0_carry_n_0),
        .CO({bram_wddata0__0_carry__0_n_0,bram_wddata0__0_carry__0_n_1,bram_wddata0__0_carry__0_n_2,bram_wddata0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1_n_0,bram_wddata0__0_carry__0_i_2_n_0,bram_wddata0__0_carry__0_i_3_n_0,bram_wddata0__0_carry__0_i_4_n_0}),
        .O(bram_wddata[7:4]),
        .S({bram_wddata0__0_carry__0_i_5_n_0,bram_wddata0__0_carry__0_i_6_n_0,bram_wddata0__0_carry__0_i_7_n_0,bram_wddata0__0_carry__0_i_8_n_0}));
  CARRY4 bram_wddata0__0_carry__0__0
       (.CI(bram_wddata0__0_carry__2_n_0),
        .CO({bram_wddata0__0_carry__0__0_n_0,bram_wddata0__0_carry__0__0_n_1,bram_wddata0__0_carry__0__0_n_2,bram_wddata0__0_carry__0__0_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__0_n_0,bram_wddata0__0_carry__0_i_2__0_n_0,bram_wddata0__0_carry__0_i_3__0_n_0,bram_wddata0__0_carry__0_i_4__0_n_0}),
        .O(bram_wddata[19:16]),
        .S({bram_wddata0__0_carry__0_i_5__0_n_0,bram_wddata0__0_carry__0_i_6__0_n_0,bram_wddata0__0_carry__0_i_7__0_n_0,bram_wddata0__0_carry__0_i_8__0_n_0}));
  CARRY4 bram_wddata0__0_carry__0__1
       (.CI(bram_wddata0__0_carry__3_n_0),
        .CO({bram_wddata0__0_carry__0__1_n_0,bram_wddata0__0_carry__0__1_n_1,bram_wddata0__0_carry__0__1_n_2,bram_wddata0__0_carry__0__1_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__1_n_0,bram_wddata0__0_carry__0_i_2__1_n_0,bram_wddata0__0_carry__0_i_3__1_n_0,bram_wddata0__0_carry__0_i_4__1_n_0}),
        .O(bram_wddata[31:28]),
        .S({bram_wddata0__0_carry__0_i_5__1_n_0,bram_wddata0__0_carry__0_i_6__1_n_0,bram_wddata0__0_carry__0_i_7__1_n_0,bram_wddata0__0_carry__0_i_8__1_n_0}));
  CARRY4 bram_wddata0__0_carry__0__2
       (.CI(bram_wddata0__0_carry__4_n_0),
        .CO({bram_wddata0__0_carry__0__2_n_0,bram_wddata0__0_carry__0__2_n_1,bram_wddata0__0_carry__0__2_n_2,bram_wddata0__0_carry__0__2_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__2_n_0,bram_wddata0__0_carry__0_i_2__2_n_0,bram_wddata0__0_carry__0_i_3__2_n_0,bram_wddata0__0_carry__0_i_4__2_n_0}),
        .O(bram_wddata[43:40]),
        .S({bram_wddata0__0_carry__0_i_5__2_n_0,bram_wddata0__0_carry__0_i_6__2_n_0,bram_wddata0__0_carry__0_i_7__2_n_0,bram_wddata0__0_carry__0_i_8__2_n_0}));
  CARRY4 bram_wddata0__0_carry__0__3
       (.CI(bram_wddata0__0_carry__5_n_0),
        .CO({bram_wddata0__0_carry__0__3_n_0,bram_wddata0__0_carry__0__3_n_1,bram_wddata0__0_carry__0__3_n_2,bram_wddata0__0_carry__0__3_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__3_n_0,bram_wddata0__0_carry__0_i_2__3_n_0,bram_wddata0__0_carry__0_i_3__3_n_0,bram_wddata0__0_carry__0_i_4__3_n_0}),
        .O(bram_wddata[55:52]),
        .S({bram_wddata0__0_carry__0_i_5__3_n_0,bram_wddata0__0_carry__0_i_6__3_n_0,bram_wddata0__0_carry__0_i_7__3_n_0,bram_wddata0__0_carry__0_i_8__3_n_0}));
  CARRY4 bram_wddata0__0_carry__0__4
       (.CI(bram_wddata0__0_carry__6_n_0),
        .CO({bram_wddata0__0_carry__0__4_n_0,bram_wddata0__0_carry__0__4_n_1,bram_wddata0__0_carry__0__4_n_2,bram_wddata0__0_carry__0__4_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__4_n_0,bram_wddata0__0_carry__0_i_2__4_n_0,bram_wddata0__0_carry__0_i_3__4_n_0,bram_wddata0__0_carry__0_i_4__4_n_0}),
        .O(bram_wddata[67:64]),
        .S({bram_wddata0__0_carry__0_i_5__4_n_0,bram_wddata0__0_carry__0_i_6__4_n_0,bram_wddata0__0_carry__0_i_7__4_n_0,bram_wddata0__0_carry__0_i_8__4_n_0}));
  CARRY4 bram_wddata0__0_carry__0__5
       (.CI(bram_wddata0__0_carry__7_n_0),
        .CO({bram_wddata0__0_carry__0__5_n_0,bram_wddata0__0_carry__0__5_n_1,bram_wddata0__0_carry__0__5_n_2,bram_wddata0__0_carry__0__5_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__5_n_0,bram_wddata0__0_carry__0_i_2__5_n_0,bram_wddata0__0_carry__0_i_3__5_n_0,bram_wddata0__0_carry__0_i_4__5_n_0}),
        .O(bram_wddata[79:76]),
        .S({bram_wddata0__0_carry__0_i_5__5_n_0,bram_wddata0__0_carry__0_i_6__5_n_0,bram_wddata0__0_carry__0_i_7__5_n_0,bram_wddata0__0_carry__0_i_8__5_n_0}));
  CARRY4 bram_wddata0__0_carry__0__6
       (.CI(bram_wddata0__0_carry__8_n_0),
        .CO({bram_wddata0__0_carry__0__6_n_0,bram_wddata0__0_carry__0__6_n_1,bram_wddata0__0_carry__0__6_n_2,bram_wddata0__0_carry__0__6_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry__0_i_1__6_n_0,bram_wddata0__0_carry__0_i_2__6_n_0,bram_wddata0__0_carry__0_i_3__6_n_0,bram_wddata0__0_carry__0_i_4__6_n_0}),
        .O(bram_wddata[91:88]),
        .S({bram_wddata0__0_carry__0_i_5__6_n_0,bram_wddata0__0_carry__0_i_6__6_n_0,bram_wddata0__0_carry__0_i_7__6_n_0,bram_wddata0__0_carry__0_i_8__6_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_1__0_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__1
       (.I0(s_axis_data_tdata[66]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[54]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__0_i_1__1_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__2
       (.I0(s_axis_data_tdata[90]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[78]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__0_i_1__2_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__3
       (.I0(s_axis_data_tdata[114]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[102]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__0_i_1__3_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__4
       (.I0(s_axis_data_tdata[138]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[126]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__0_i_1__4_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__5
       (.I0(s_axis_data_tdata[162]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[150]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__0_i_1__5_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_1__6
       (.I0(s_axis_data_tdata[186]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[174]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__0_i_1__6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_2__0_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__1
       (.I0(s_axis_data_tdata[65]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[53]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__0_i_2__1_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__2
       (.I0(s_axis_data_tdata[89]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[77]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__0_i_2__2_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__3
       (.I0(s_axis_data_tdata[113]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[101]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__0_i_2__3_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__4
       (.I0(s_axis_data_tdata[137]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[125]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__0_i_2__4_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__5
       (.I0(s_axis_data_tdata[161]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[149]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__0_i_2__5_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_2__6
       (.I0(s_axis_data_tdata[185]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[173]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__0_i_2__6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_3__0_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__1
       (.I0(s_axis_data_tdata[64]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[52]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__0_i_3__1_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__2
       (.I0(s_axis_data_tdata[88]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[76]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__0_i_3__2_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__3
       (.I0(s_axis_data_tdata[112]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[100]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__0_i_3__3_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__4
       (.I0(s_axis_data_tdata[136]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[124]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__0_i_3__4_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__5
       (.I0(s_axis_data_tdata[160]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[148]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__0_i_3__5_n_0));
  (* HLUTNM = "lutpair74" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_3__6
       (.I0(s_axis_data_tdata[184]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[172]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__0_i_3__6_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__0_i_4__0_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__1
       (.I0(s_axis_data_tdata[63]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[51]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__0_i_4__1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__2
       (.I0(s_axis_data_tdata[87]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[75]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__0_i_4__2_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__3
       (.I0(s_axis_data_tdata[111]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[99]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__0_i_4__3_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__4
       (.I0(s_axis_data_tdata[135]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[123]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__0_i_4__4_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__5
       (.I0(s_axis_data_tdata[159]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[147]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__0_i_4__5_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__0_i_4__6
       (.I0(s_axis_data_tdata[183]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[171]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__0_i_4__6_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_1_n_0),
        .O(bram_wddata0__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_1__0_n_0),
        .O(bram_wddata0__0_carry__0_i_5__0_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__1
       (.I0(s_axis_data_tdata[67]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[55]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__0_i_1__1_n_0),
        .O(bram_wddata0__0_carry__0_i_5__1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__2
       (.I0(s_axis_data_tdata[91]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[79]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__0_i_1__2_n_0),
        .O(bram_wddata0__0_carry__0_i_5__2_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__3
       (.I0(s_axis_data_tdata[115]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[103]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__0_i_1__3_n_0),
        .O(bram_wddata0__0_carry__0_i_5__3_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__4
       (.I0(s_axis_data_tdata[139]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[127]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__0_i_1__4_n_0),
        .O(bram_wddata0__0_carry__0_i_5__4_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__5
       (.I0(s_axis_data_tdata[163]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[151]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__0_i_1__5_n_0),
        .O(bram_wddata0__0_carry__0_i_5__5_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_5__6
       (.I0(s_axis_data_tdata[187]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[175]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__0_i_1__6_n_0),
        .O(bram_wddata0__0_carry__0_i_5__6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6
       (.I0(s_axis_data_tdata[18]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[6]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_2_n_0),
        .O(bram_wddata0__0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__0
       (.I0(s_axis_data_tdata[42]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[30]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_2__0_n_0),
        .O(bram_wddata0__0_carry__0_i_6__0_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__1
       (.I0(s_axis_data_tdata[66]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[54]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__0_i_2__1_n_0),
        .O(bram_wddata0__0_carry__0_i_6__1_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__2
       (.I0(s_axis_data_tdata[90]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[78]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__0_i_2__2_n_0),
        .O(bram_wddata0__0_carry__0_i_6__2_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__3
       (.I0(s_axis_data_tdata[114]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[102]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__0_i_2__3_n_0),
        .O(bram_wddata0__0_carry__0_i_6__3_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__4
       (.I0(s_axis_data_tdata[138]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[126]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__0_i_2__4_n_0),
        .O(bram_wddata0__0_carry__0_i_6__4_n_0));
  (* HLUTNM = "lutpair66" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__5
       (.I0(s_axis_data_tdata[162]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[150]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__0_i_2__5_n_0),
        .O(bram_wddata0__0_carry__0_i_6__5_n_0));
  (* HLUTNM = "lutpair76" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_6__6
       (.I0(s_axis_data_tdata[186]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[174]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__0_i_2__6_n_0),
        .O(bram_wddata0__0_carry__0_i_6__6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7
       (.I0(s_axis_data_tdata[17]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[5]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_3_n_0),
        .O(bram_wddata0__0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__0
       (.I0(s_axis_data_tdata[41]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[29]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_3__0_n_0),
        .O(bram_wddata0__0_carry__0_i_7__0_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__1
       (.I0(s_axis_data_tdata[65]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[53]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__0_i_3__1_n_0),
        .O(bram_wddata0__0_carry__0_i_7__1_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__2
       (.I0(s_axis_data_tdata[89]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[77]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__0_i_3__2_n_0),
        .O(bram_wddata0__0_carry__0_i_7__2_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__3
       (.I0(s_axis_data_tdata[113]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[101]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__0_i_3__3_n_0),
        .O(bram_wddata0__0_carry__0_i_7__3_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__4
       (.I0(s_axis_data_tdata[137]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[125]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__0_i_3__4_n_0),
        .O(bram_wddata0__0_carry__0_i_7__4_n_0));
  (* HLUTNM = "lutpair65" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__5
       (.I0(s_axis_data_tdata[161]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[149]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__0_i_3__5_n_0),
        .O(bram_wddata0__0_carry__0_i_7__5_n_0));
  (* HLUTNM = "lutpair75" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_7__6
       (.I0(s_axis_data_tdata[185]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[173]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__0_i_3__6_n_0),
        .O(bram_wddata0__0_carry__0_i_7__6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8
       (.I0(s_axis_data_tdata[16]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[4]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__0_i_4_n_0),
        .O(bram_wddata0__0_carry__0_i_8_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__0
       (.I0(s_axis_data_tdata[40]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[28]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__0_i_4__0_n_0),
        .O(bram_wddata0__0_carry__0_i_8__0_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__1
       (.I0(s_axis_data_tdata[64]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[52]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__0_i_4__1_n_0),
        .O(bram_wddata0__0_carry__0_i_8__1_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__2
       (.I0(s_axis_data_tdata[88]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[76]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__0_i_4__2_n_0),
        .O(bram_wddata0__0_carry__0_i_8__2_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__3
       (.I0(s_axis_data_tdata[112]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[100]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__0_i_4__3_n_0),
        .O(bram_wddata0__0_carry__0_i_8__3_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__4
       (.I0(s_axis_data_tdata[136]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[124]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__0_i_4__4_n_0),
        .O(bram_wddata0__0_carry__0_i_8__4_n_0));
  (* HLUTNM = "lutpair64" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__5
       (.I0(s_axis_data_tdata[160]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[148]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__0_i_4__5_n_0),
        .O(bram_wddata0__0_carry__0_i_8__5_n_0));
  (* HLUTNM = "lutpair74" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__0_i_8__6
       (.I0(s_axis_data_tdata[184]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[172]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__0_i_4__6_n_0),
        .O(bram_wddata0__0_carry__0_i_8__6_n_0));
  CARRY4 bram_wddata0__0_carry__1
       (.CI(bram_wddata0__0_carry__0_n_0),
        .CO({NLW_bram_wddata0__0_carry__1_CO_UNCONNECTED[3],bram_wddata0__0_carry__1_n_1,bram_wddata0__0_carry__1_n_2,bram_wddata0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1_n_0,bram_wddata0__0_carry__1_i_2_n_0,bram_wddata0__0_carry__1_i_3_n_0}),
        .O(bram_wddata[11:8]),
        .S({bram_wddata0__0_carry__1_i_4_n_0,bram_wddata0__0_carry__1_i_5_n_0,bram_wddata0__0_carry__1_i_6_n_0,bram_wddata0__0_carry__1_i_7_n_0}));
  CARRY4 bram_wddata0__0_carry__1__0
       (.CI(bram_wddata0__0_carry__0__0_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__0_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__0_n_1,bram_wddata0__0_carry__1__0_n_2,bram_wddata0__0_carry__1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__0_n_0,bram_wddata0__0_carry__1_i_2__0_n_0,bram_wddata0__0_carry__1_i_3__0_n_0}),
        .O(bram_wddata[23:20]),
        .S({bram_wddata0__0_carry__1_i_4__0_n_0,bram_wddata0__0_carry__1_i_5__0_n_0,bram_wddata0__0_carry__1_i_6__0_n_0,bram_wddata0__0_carry__1_i_7__0_n_0}));
  CARRY4 bram_wddata0__0_carry__1__1
       (.CI(bram_wddata0__0_carry__0__1_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__1_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__1_n_1,bram_wddata0__0_carry__1__1_n_2,bram_wddata0__0_carry__1__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__1_n_0,bram_wddata0__0_carry__1_i_2__1_n_0,bram_wddata0__0_carry__1_i_3__1_n_0}),
        .O(bram_wddata[35:32]),
        .S({bram_wddata0__0_carry__1_i_4__1_n_0,bram_wddata0__0_carry__1_i_5__1_n_0,bram_wddata0__0_carry__1_i_6__1_n_0,bram_wddata0__0_carry__1_i_7__1_n_0}));
  CARRY4 bram_wddata0__0_carry__1__2
       (.CI(bram_wddata0__0_carry__0__2_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__2_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__2_n_1,bram_wddata0__0_carry__1__2_n_2,bram_wddata0__0_carry__1__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__2_n_0,bram_wddata0__0_carry__1_i_2__2_n_0,bram_wddata0__0_carry__1_i_3__2_n_0}),
        .O(bram_wddata[47:44]),
        .S({bram_wddata0__0_carry__1_i_4__2_n_0,bram_wddata0__0_carry__1_i_5__2_n_0,bram_wddata0__0_carry__1_i_6__2_n_0,bram_wddata0__0_carry__1_i_7__2_n_0}));
  CARRY4 bram_wddata0__0_carry__1__3
       (.CI(bram_wddata0__0_carry__0__3_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__3_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__3_n_1,bram_wddata0__0_carry__1__3_n_2,bram_wddata0__0_carry__1__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__3_n_0,bram_wddata0__0_carry__1_i_2__3_n_0,bram_wddata0__0_carry__1_i_3__3_n_0}),
        .O(bram_wddata[59:56]),
        .S({bram_wddata0__0_carry__1_i_4__3_n_0,bram_wddata0__0_carry__1_i_5__3_n_0,bram_wddata0__0_carry__1_i_6__3_n_0,bram_wddata0__0_carry__1_i_7__3_n_0}));
  CARRY4 bram_wddata0__0_carry__1__4
       (.CI(bram_wddata0__0_carry__0__4_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__4_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__4_n_1,bram_wddata0__0_carry__1__4_n_2,bram_wddata0__0_carry__1__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__4_n_0,bram_wddata0__0_carry__1_i_2__4_n_0,bram_wddata0__0_carry__1_i_3__4_n_0}),
        .O(bram_wddata[71:68]),
        .S({bram_wddata0__0_carry__1_i_4__4_n_0,bram_wddata0__0_carry__1_i_5__4_n_0,bram_wddata0__0_carry__1_i_6__4_n_0,bram_wddata0__0_carry__1_i_7__4_n_0}));
  CARRY4 bram_wddata0__0_carry__1__5
       (.CI(bram_wddata0__0_carry__0__5_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__5_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__5_n_1,bram_wddata0__0_carry__1__5_n_2,bram_wddata0__0_carry__1__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__5_n_0,bram_wddata0__0_carry__1_i_2__5_n_0,bram_wddata0__0_carry__1_i_3__5_n_0}),
        .O(bram_wddata[83:80]),
        .S({bram_wddata0__0_carry__1_i_4__5_n_0,bram_wddata0__0_carry__1_i_5__5_n_0,bram_wddata0__0_carry__1_i_6__5_n_0,bram_wddata0__0_carry__1_i_7__5_n_0}));
  CARRY4 bram_wddata0__0_carry__1__6
       (.CI(bram_wddata0__0_carry__0__6_n_0),
        .CO({NLW_bram_wddata0__0_carry__1__6_CO_UNCONNECTED[3],bram_wddata0__0_carry__1__6_n_1,bram_wddata0__0_carry__1__6_n_2,bram_wddata0__0_carry__1__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,bram_wddata0__0_carry__1_i_1__6_n_0,bram_wddata0__0_carry__1_i_2__6_n_0,bram_wddata0__0_carry__1_i_3__6_n_0}),
        .O(bram_wddata[95:92]),
        .S({bram_wddata0__0_carry__1_i_4__6_n_0,bram_wddata0__0_carry__1_i_5__6_n_0,bram_wddata0__0_carry__1_i_6__6_n_0,bram_wddata0__0_carry__1_i_7__6_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_1__0_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__1
       (.I0(s_axis_data_tdata[69]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[57]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__1_i_1__1_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__2
       (.I0(s_axis_data_tdata[93]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[81]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__1_i_1__2_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__3
       (.I0(s_axis_data_tdata[117]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[105]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__1_i_1__3_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__4
       (.I0(s_axis_data_tdata[141]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[129]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__1_i_1__4_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__5
       (.I0(s_axis_data_tdata[165]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[153]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__1_i_1__5_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_1__6
       (.I0(s_axis_data_tdata[189]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[177]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__1_i_1__6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_2__0_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__1
       (.I0(s_axis_data_tdata[68]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[56]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__1_i_2__1_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__2
       (.I0(s_axis_data_tdata[92]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[80]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__1_i_2__2_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__3
       (.I0(s_axis_data_tdata[116]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[104]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__1_i_2__3_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__4
       (.I0(s_axis_data_tdata[140]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[128]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__1_i_2__4_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__5
       (.I0(s_axis_data_tdata[164]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[152]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__1_i_2__5_n_0));
  (* HLUTNM = "lutpair78" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_2__6
       (.I0(s_axis_data_tdata[188]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[176]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__1_i_2__6_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3
       (.I0(s_axis_data_tdata[19]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[7]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__0
       (.I0(s_axis_data_tdata[43]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[31]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_3__0_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__1
       (.I0(s_axis_data_tdata[67]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[55]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__1_i_3__1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__2
       (.I0(s_axis_data_tdata[91]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[79]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__1_i_3__2_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__3
       (.I0(s_axis_data_tdata[115]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[103]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__1_i_3__3_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__4
       (.I0(s_axis_data_tdata[139]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[127]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__1_i_3__4_n_0));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__5
       (.I0(s_axis_data_tdata[163]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[151]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__1_i_3__5_n_0));
  (* HLUTNM = "lutpair77" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_3__6
       (.I0(s_axis_data_tdata[187]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[175]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__1_i_3__6_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4
       (.I0(s_axis_data_tdata[22]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[10]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__0
       (.I0(s_axis_data_tdata[46]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[34]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__1
       (.I0(s_axis_data_tdata[70]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[58]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__2
       (.I0(s_axis_data_tdata[94]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[82]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__3
       (.I0(s_axis_data_tdata[118]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[106]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry__1_i_4__3_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__4
       (.I0(s_axis_data_tdata[142]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[130]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry__1_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__5
       (.I0(s_axis_data_tdata[166]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[154]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry__1_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry__1_i_4__6
       (.I0(s_axis_data_tdata[190]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[178]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry__1_i_4__6_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5
       (.I0(bram_wddata0__0_carry__1_i_1_n_0),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[22]),
        .I3(s_axis_data_tdata[11]),
        .I4(s_axis_data_tdata[10]),
        .O(bram_wddata0__0_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__0
       (.I0(bram_wddata0__0_carry__1_i_1__0_n_0),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[46]),
        .I3(s_axis_data_tdata[35]),
        .I4(s_axis_data_tdata[34]),
        .O(bram_wddata0__0_carry__1_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__1
       (.I0(bram_wddata0__0_carry__1_i_1__1_n_0),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[70]),
        .I3(s_axis_data_tdata[59]),
        .I4(s_axis_data_tdata[58]),
        .O(bram_wddata0__0_carry__1_i_5__1_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__2
       (.I0(bram_wddata0__0_carry__1_i_1__2_n_0),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[94]),
        .I3(s_axis_data_tdata[83]),
        .I4(s_axis_data_tdata[82]),
        .O(bram_wddata0__0_carry__1_i_5__2_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__3
       (.I0(bram_wddata0__0_carry__1_i_1__3_n_0),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[118]),
        .I3(s_axis_data_tdata[107]),
        .I4(s_axis_data_tdata[106]),
        .O(bram_wddata0__0_carry__1_i_5__3_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__4
       (.I0(bram_wddata0__0_carry__1_i_1__4_n_0),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[142]),
        .I3(s_axis_data_tdata[131]),
        .I4(s_axis_data_tdata[130]),
        .O(bram_wddata0__0_carry__1_i_5__4_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__5
       (.I0(bram_wddata0__0_carry__1_i_1__5_n_0),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[166]),
        .I3(s_axis_data_tdata[155]),
        .I4(s_axis_data_tdata[154]),
        .O(bram_wddata0__0_carry__1_i_5__5_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_5__6
       (.I0(bram_wddata0__0_carry__1_i_1__6_n_0),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[190]),
        .I3(s_axis_data_tdata[179]),
        .I4(s_axis_data_tdata[178]),
        .O(bram_wddata0__0_carry__1_i_5__6_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6
       (.I0(s_axis_data_tdata[21]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[9]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__1_i_2_n_0),
        .O(bram_wddata0__0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__0
       (.I0(s_axis_data_tdata[45]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[33]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__1_i_2__0_n_0),
        .O(bram_wddata0__0_carry__1_i_6__0_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__1
       (.I0(s_axis_data_tdata[69]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[57]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__1_i_2__1_n_0),
        .O(bram_wddata0__0_carry__1_i_6__1_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__2
       (.I0(s_axis_data_tdata[93]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[81]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__1_i_2__2_n_0),
        .O(bram_wddata0__0_carry__1_i_6__2_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__3
       (.I0(s_axis_data_tdata[117]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[105]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__1_i_2__3_n_0),
        .O(bram_wddata0__0_carry__1_i_6__3_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__4
       (.I0(s_axis_data_tdata[141]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[129]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__1_i_2__4_n_0),
        .O(bram_wddata0__0_carry__1_i_6__4_n_0));
  (* HLUTNM = "lutpair69" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__5
       (.I0(s_axis_data_tdata[165]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[153]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__1_i_2__5_n_0),
        .O(bram_wddata0__0_carry__1_i_6__5_n_0));
  (* HLUTNM = "lutpair79" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_6__6
       (.I0(s_axis_data_tdata[189]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[177]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__1_i_2__6_n_0),
        .O(bram_wddata0__0_carry__1_i_6__6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7
       (.I0(s_axis_data_tdata[20]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[8]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry__1_i_3_n_0),
        .O(bram_wddata0__0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__0
       (.I0(s_axis_data_tdata[44]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[32]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry__1_i_3__0_n_0),
        .O(bram_wddata0__0_carry__1_i_7__0_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__1
       (.I0(s_axis_data_tdata[68]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[56]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry__1_i_3__1_n_0),
        .O(bram_wddata0__0_carry__1_i_7__1_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__2
       (.I0(s_axis_data_tdata[92]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[80]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry__1_i_3__2_n_0),
        .O(bram_wddata0__0_carry__1_i_7__2_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__3
       (.I0(s_axis_data_tdata[116]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[104]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry__1_i_3__3_n_0),
        .O(bram_wddata0__0_carry__1_i_7__3_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__4
       (.I0(s_axis_data_tdata[140]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[128]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry__1_i_3__4_n_0),
        .O(bram_wddata0__0_carry__1_i_7__4_n_0));
  (* HLUTNM = "lutpair68" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__5
       (.I0(s_axis_data_tdata[164]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[152]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry__1_i_3__5_n_0),
        .O(bram_wddata0__0_carry__1_i_7__5_n_0));
  (* HLUTNM = "lutpair78" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry__1_i_7__6
       (.I0(s_axis_data_tdata[188]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[176]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry__1_i_3__6_n_0),
        .O(bram_wddata0__0_carry__1_i_7__6_n_0));
  CARRY4 bram_wddata0__0_carry__2
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__2_n_0,bram_wddata0__0_carry__2_n_1,bram_wddata0__0_carry__2_n_2,bram_wddata0__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__0_n_0,bram_wddata0__0_carry_i_2__0_n_0,bram_wddata0__0_carry_i_3__0_n_0,s_axis_data_tdata[35]}),
        .O(bram_wddata[15:12]),
        .S({bram_wddata0__0_carry_i_4__0_n_0,bram_wddata0__0_carry_i_5__0_n_0,bram_wddata0__0_carry_i_6__0_n_0,bram_wddata0__0_carry_i_7__0_n_0}));
  CARRY4 bram_wddata0__0_carry__3
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__3_n_0,bram_wddata0__0_carry__3_n_1,bram_wddata0__0_carry__3_n_2,bram_wddata0__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__1_n_0,bram_wddata0__0_carry_i_2__1_n_0,bram_wddata0__0_carry_i_3__1_n_0,s_axis_data_tdata[59]}),
        .O(bram_wddata[27:24]),
        .S({bram_wddata0__0_carry_i_4__1_n_0,bram_wddata0__0_carry_i_5__1_n_0,bram_wddata0__0_carry_i_6__1_n_0,bram_wddata0__0_carry_i_7__1_n_0}));
  CARRY4 bram_wddata0__0_carry__4
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__4_n_0,bram_wddata0__0_carry__4_n_1,bram_wddata0__0_carry__4_n_2,bram_wddata0__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__2_n_0,bram_wddata0__0_carry_i_2__2_n_0,bram_wddata0__0_carry_i_3__2_n_0,s_axis_data_tdata[83]}),
        .O(bram_wddata[39:36]),
        .S({bram_wddata0__0_carry_i_4__2_n_0,bram_wddata0__0_carry_i_5__2_n_0,bram_wddata0__0_carry_i_6__2_n_0,bram_wddata0__0_carry_i_7__2_n_0}));
  CARRY4 bram_wddata0__0_carry__5
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__5_n_0,bram_wddata0__0_carry__5_n_1,bram_wddata0__0_carry__5_n_2,bram_wddata0__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__3_n_0,bram_wddata0__0_carry_i_2__3_n_0,bram_wddata0__0_carry_i_3__3_n_0,s_axis_data_tdata[107]}),
        .O(bram_wddata[51:48]),
        .S({bram_wddata0__0_carry_i_4__3_n_0,bram_wddata0__0_carry_i_5__3_n_0,bram_wddata0__0_carry_i_6__3_n_0,bram_wddata0__0_carry_i_7__3_n_0}));
  CARRY4 bram_wddata0__0_carry__6
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__6_n_0,bram_wddata0__0_carry__6_n_1,bram_wddata0__0_carry__6_n_2,bram_wddata0__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__4_n_0,bram_wddata0__0_carry_i_2__4_n_0,bram_wddata0__0_carry_i_3__4_n_0,s_axis_data_tdata[131]}),
        .O(bram_wddata[63:60]),
        .S({bram_wddata0__0_carry_i_4__4_n_0,bram_wddata0__0_carry_i_5__4_n_0,bram_wddata0__0_carry_i_6__4_n_0,bram_wddata0__0_carry_i_7__4_n_0}));
  CARRY4 bram_wddata0__0_carry__7
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__7_n_0,bram_wddata0__0_carry__7_n_1,bram_wddata0__0_carry__7_n_2,bram_wddata0__0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__5_n_0,bram_wddata0__0_carry_i_2__5_n_0,bram_wddata0__0_carry_i_3__5_n_0,s_axis_data_tdata[155]}),
        .O(bram_wddata[75:72]),
        .S({bram_wddata0__0_carry_i_4__5_n_0,bram_wddata0__0_carry_i_5__5_n_0,bram_wddata0__0_carry_i_6__5_n_0,bram_wddata0__0_carry_i_7__5_n_0}));
  CARRY4 bram_wddata0__0_carry__8
       (.CI(1'b0),
        .CO({bram_wddata0__0_carry__8_n_0,bram_wddata0__0_carry__8_n_1,bram_wddata0__0_carry__8_n_2,bram_wddata0__0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({bram_wddata0__0_carry_i_1__6_n_0,bram_wddata0__0_carry_i_2__6_n_0,bram_wddata0__0_carry_i_3__6_n_0,s_axis_data_tdata[179]}),
        .O(bram_wddata[87:84]),
        .S({bram_wddata0__0_carry_i_4__6_n_0,bram_wddata0__0_carry_i_5__6_n_0,bram_wddata0__0_carry_i_6__6_n_0,bram_wddata0__0_carry_i_7__6_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_1__0_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__1
       (.I0(s_axis_data_tdata[62]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[50]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry_i_1__1_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__2
       (.I0(s_axis_data_tdata[86]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[74]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry_i_1__2_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__3
       (.I0(s_axis_data_tdata[110]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[98]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry_i_1__3_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__4
       (.I0(s_axis_data_tdata[134]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[122]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry_i_1__4_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__5
       (.I0(s_axis_data_tdata[158]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[146]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry_i_1__5_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_1__6
       (.I0(s_axis_data_tdata[182]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[170]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry_i_1__6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_2__0_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__1
       (.I0(s_axis_data_tdata[61]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[49]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry_i_2__1_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__2
       (.I0(s_axis_data_tdata[85]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[73]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry_i_2__2_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__3
       (.I0(s_axis_data_tdata[109]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[97]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry_i_2__3_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__4
       (.I0(s_axis_data_tdata[133]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[121]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry_i_2__4_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__5
       (.I0(s_axis_data_tdata[157]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[145]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry_i_2__5_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    bram_wddata0__0_carry_i_2__6
       (.I0(s_axis_data_tdata[181]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[169]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry_i_2__6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[0]),
        .I3(s_axis_data_tdata[11]),
        .O(bram_wddata0__0_carry_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[24]),
        .I3(s_axis_data_tdata[35]),
        .O(bram_wddata0__0_carry_i_3__0_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__1
       (.I0(s_axis_data_tdata[60]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[48]),
        .I3(s_axis_data_tdata[59]),
        .O(bram_wddata0__0_carry_i_3__1_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__2
       (.I0(s_axis_data_tdata[84]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[72]),
        .I3(s_axis_data_tdata[83]),
        .O(bram_wddata0__0_carry_i_3__2_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__3
       (.I0(s_axis_data_tdata[108]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[96]),
        .I3(s_axis_data_tdata[107]),
        .O(bram_wddata0__0_carry_i_3__3_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__4
       (.I0(s_axis_data_tdata[132]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[120]),
        .I3(s_axis_data_tdata[131]),
        .O(bram_wddata0__0_carry_i_3__4_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__5
       (.I0(s_axis_data_tdata[156]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[144]),
        .I3(s_axis_data_tdata[155]),
        .O(bram_wddata0__0_carry_i_3__5_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT4 #(
    .INIT(16'h4EE4)) 
    bram_wddata0__0_carry_i_3__6
       (.I0(s_axis_data_tdata[180]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[168]),
        .I3(s_axis_data_tdata[179]),
        .O(bram_wddata0__0_carry_i_3__6_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4
       (.I0(s_axis_data_tdata[15]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[3]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_1_n_0),
        .O(bram_wddata0__0_carry_i_4_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__0
       (.I0(s_axis_data_tdata[39]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[27]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_1__0_n_0),
        .O(bram_wddata0__0_carry_i_4__0_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__1
       (.I0(s_axis_data_tdata[63]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[51]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry_i_1__1_n_0),
        .O(bram_wddata0__0_carry_i_4__1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__2
       (.I0(s_axis_data_tdata[87]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[75]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry_i_1__2_n_0),
        .O(bram_wddata0__0_carry_i_4__2_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__3
       (.I0(s_axis_data_tdata[111]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[99]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry_i_1__3_n_0),
        .O(bram_wddata0__0_carry_i_4__3_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__4
       (.I0(s_axis_data_tdata[135]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[123]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry_i_1__4_n_0),
        .O(bram_wddata0__0_carry_i_4__4_n_0));
  (* HLUTNM = "lutpair63" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__5
       (.I0(s_axis_data_tdata[159]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[147]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry_i_1__5_n_0),
        .O(bram_wddata0__0_carry_i_4__5_n_0));
  (* HLUTNM = "lutpair73" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_4__6
       (.I0(s_axis_data_tdata[183]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[171]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry_i_1__6_n_0),
        .O(bram_wddata0__0_carry_i_4__6_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5
       (.I0(s_axis_data_tdata[14]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[2]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_2_n_0),
        .O(bram_wddata0__0_carry_i_5_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__0
       (.I0(s_axis_data_tdata[38]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[26]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_2__0_n_0),
        .O(bram_wddata0__0_carry_i_5__0_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__1
       (.I0(s_axis_data_tdata[62]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[50]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry_i_2__1_n_0),
        .O(bram_wddata0__0_carry_i_5__1_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__2
       (.I0(s_axis_data_tdata[86]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[74]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry_i_2__2_n_0),
        .O(bram_wddata0__0_carry_i_5__2_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__3
       (.I0(s_axis_data_tdata[110]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[98]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry_i_2__3_n_0),
        .O(bram_wddata0__0_carry_i_5__3_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__4
       (.I0(s_axis_data_tdata[134]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[122]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry_i_2__4_n_0),
        .O(bram_wddata0__0_carry_i_5__4_n_0));
  (* HLUTNM = "lutpair62" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__5
       (.I0(s_axis_data_tdata[158]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[146]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry_i_2__5_n_0),
        .O(bram_wddata0__0_carry_i_5__5_n_0));
  (* HLUTNM = "lutpair72" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_5__6
       (.I0(s_axis_data_tdata[182]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[170]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry_i_2__6_n_0),
        .O(bram_wddata0__0_carry_i_5__6_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6
       (.I0(s_axis_data_tdata[13]),
        .I1(s_axis_data_tdata[23]),
        .I2(s_axis_data_tdata[1]),
        .I3(s_axis_data_tdata[11]),
        .I4(bram_wddata0__0_carry_i_3_n_0),
        .O(bram_wddata0__0_carry_i_6_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__0
       (.I0(s_axis_data_tdata[37]),
        .I1(s_axis_data_tdata[47]),
        .I2(s_axis_data_tdata[25]),
        .I3(s_axis_data_tdata[35]),
        .I4(bram_wddata0__0_carry_i_3__0_n_0),
        .O(bram_wddata0__0_carry_i_6__0_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__1
       (.I0(s_axis_data_tdata[61]),
        .I1(s_axis_data_tdata[71]),
        .I2(s_axis_data_tdata[49]),
        .I3(s_axis_data_tdata[59]),
        .I4(bram_wddata0__0_carry_i_3__1_n_0),
        .O(bram_wddata0__0_carry_i_6__1_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__2
       (.I0(s_axis_data_tdata[85]),
        .I1(s_axis_data_tdata[95]),
        .I2(s_axis_data_tdata[73]),
        .I3(s_axis_data_tdata[83]),
        .I4(bram_wddata0__0_carry_i_3__2_n_0),
        .O(bram_wddata0__0_carry_i_6__2_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__3
       (.I0(s_axis_data_tdata[109]),
        .I1(s_axis_data_tdata[119]),
        .I2(s_axis_data_tdata[97]),
        .I3(s_axis_data_tdata[107]),
        .I4(bram_wddata0__0_carry_i_3__3_n_0),
        .O(bram_wddata0__0_carry_i_6__3_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__4
       (.I0(s_axis_data_tdata[133]),
        .I1(s_axis_data_tdata[143]),
        .I2(s_axis_data_tdata[121]),
        .I3(s_axis_data_tdata[131]),
        .I4(bram_wddata0__0_carry_i_3__4_n_0),
        .O(bram_wddata0__0_carry_i_6__4_n_0));
  (* HLUTNM = "lutpair61" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__5
       (.I0(s_axis_data_tdata[157]),
        .I1(s_axis_data_tdata[167]),
        .I2(s_axis_data_tdata[145]),
        .I3(s_axis_data_tdata[155]),
        .I4(bram_wddata0__0_carry_i_3__5_n_0),
        .O(bram_wddata0__0_carry_i_6__5_n_0));
  (* HLUTNM = "lutpair71" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    bram_wddata0__0_carry_i_6__6
       (.I0(s_axis_data_tdata[181]),
        .I1(s_axis_data_tdata[191]),
        .I2(s_axis_data_tdata[169]),
        .I3(s_axis_data_tdata[179]),
        .I4(bram_wddata0__0_carry_i_3__6_n_0),
        .O(bram_wddata0__0_carry_i_6__6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7
       (.I0(s_axis_data_tdata[12]),
        .I1(s_axis_data_tdata[0]),
        .O(bram_wddata0__0_carry_i_7_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__0
       (.I0(s_axis_data_tdata[36]),
        .I1(s_axis_data_tdata[24]),
        .O(bram_wddata0__0_carry_i_7__0_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__1
       (.I0(s_axis_data_tdata[60]),
        .I1(s_axis_data_tdata[48]),
        .O(bram_wddata0__0_carry_i_7__1_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__2
       (.I0(s_axis_data_tdata[84]),
        .I1(s_axis_data_tdata[72]),
        .O(bram_wddata0__0_carry_i_7__2_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__3
       (.I0(s_axis_data_tdata[108]),
        .I1(s_axis_data_tdata[96]),
        .O(bram_wddata0__0_carry_i_7__3_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__4
       (.I0(s_axis_data_tdata[132]),
        .I1(s_axis_data_tdata[120]),
        .O(bram_wddata0__0_carry_i_7__4_n_0));
  (* HLUTNM = "lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__5
       (.I0(s_axis_data_tdata[156]),
        .I1(s_axis_data_tdata[144]),
        .O(bram_wddata0__0_carry_i_7__5_n_0));
  (* HLUTNM = "lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_wddata0__0_carry_i_7__6
       (.I0(s_axis_data_tdata[180]),
        .I1(s_axis_data_tdata[168]),
        .O(bram_wddata0__0_carry_i_7__6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \byteCounter[0]_i_1 
       (.I0(bram_addr[0]),
        .O(byteCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \byteCounter[1]_i_1 
       (.I0(bram_addr[0]),
        .I1(bram_addr[1]),
        .O(byteCounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \byteCounter[2]_i_1 
       (.I0(bram_addr[1]),
        .I1(bram_addr[0]),
        .I2(bram_addr[2]),
        .O(byteCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \byteCounter[3]_i_1 
       (.I0(bram_addr[2]),
        .I1(bram_addr[0]),
        .I2(bram_addr[1]),
        .I3(bram_addr[3]),
        .O(byteCounter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \byteCounter[4]_i_1 
       (.I0(bram_addr[3]),
        .I1(bram_addr[1]),
        .I2(bram_addr[0]),
        .I3(bram_addr[2]),
        .I4(bram_addr[4]),
        .O(byteCounter[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \byteCounter[5]_i_1 
       (.I0(bram_addr[4]),
        .I1(bram_addr[2]),
        .I2(bram_addr[0]),
        .I3(bram_addr[1]),
        .I4(bram_addr[3]),
        .I5(bram_addr[5]),
        .O(byteCounter[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \byteCounter[6]_i_1 
       (.I0(\byteCounter[7]_i_2_n_0 ),
        .I1(bram_addr[6]),
        .O(byteCounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \byteCounter[7]_i_1 
       (.I0(bram_addr[6]),
        .I1(\byteCounter[7]_i_2_n_0 ),
        .I2(bram_addr[7]),
        .O(byteCounter[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \byteCounter[7]_i_2 
       (.I0(bram_addr[4]),
        .I1(bram_addr[2]),
        .I2(bram_addr[0]),
        .I3(bram_addr[1]),
        .I4(bram_addr[3]),
        .I5(bram_addr[5]),
        .O(\byteCounter[7]_i_2_n_0 ));
  FDRE \byteCounter_reg[0] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[0]),
        .Q(bram_addr[0]),
        .R(SR));
  FDRE \byteCounter_reg[1] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[1]),
        .Q(bram_addr[1]),
        .R(SR));
  FDRE \byteCounter_reg[2] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[2]),
        .Q(bram_addr[2]),
        .R(SR));
  FDRE \byteCounter_reg[3] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[3]),
        .Q(bram_addr[3]),
        .R(SR));
  FDRE \byteCounter_reg[4] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[4]),
        .Q(bram_addr[4]),
        .R(SR));
  FDRE \byteCounter_reg[5] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[5]),
        .Q(bram_addr[5]),
        .R(SR));
  FDRE \byteCounter_reg[6] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[6]),
        .Q(bram_addr[6]),
        .R(SR));
  FDRE \byteCounter_reg[7] 
       (.C(clk),
        .CE(s_axis_data_tvalid),
        .D(byteCounter[7]),
        .Q(bram_addr[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    complete_i_1
       (.I0(bram_addr[6]),
        .I1(\byteCounter[7]_i_2_n_0 ),
        .I2(bram_addr[7]),
        .I3(started),
        .I4(event_fft_complete),
        .I5(nReset),
        .O(complete_i_1_n_0));
  FDRE complete_reg
       (.C(clk),
        .CE(1'b1),
        .D(complete_i_1_n_0),
        .Q(event_fft_complete),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF200)) 
    started_i_1
       (.I0(started),
        .I1(event_fft_complete),
        .I2(s_axis_data_tvalid),
        .I3(nReset),
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
