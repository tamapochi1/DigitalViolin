// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Oct  9 21:51:30 2018
// Host        : Reiji-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.srcs/sources_1/bd/design_1/ip/design_1_mult_sum_0_0/design_1_mult_sum_0_0_sim_netlist.v
// Design      : design_1_mult_sum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mult_sum_0_0,mult_sum,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "mult_sum,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_mult_sum_0_0
   (nReset,
    sysClk,
    clear,
    sync,
    s_axis_sin_tdata,
    s_axis_sin_tvalid,
    s_axis_gain_tdata,
    s_axis_gain_tvalid,
    mult_A,
    mult_B,
    mult_P,
    outData,
    outGain);
  input nReset;
  input sysClk;
  input clear;
  output sync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_sin TDATA" *) input [31:0]s_axis_sin_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_sin TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_sin, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} complex {bitwidth {attribs {resolve_type generated dependency complex_width format long minimum {} maximum {}} value 16} stride {attribs {resolve_type generated dependency complex_stride format long minimum {} maximum {}} value 16} realfirst {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} real {fixed {fractwidth {attribs {resolve_type generated dependency complex_fractwidth format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cartesian_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cartesian_tuser} enabled {attribs {resolve_type generated dependency cart_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cart_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_phase_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value phase_tuser} enabled {attribs {resolve_type generated dependency phase_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency phase_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency phase_offset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER_WIDTH 0}" *) input s_axis_sin_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_gain TDATA" *) input [13:0]s_axis_gain_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_gain TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_gain, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *) input s_axis_gain_tvalid;
  output [15:0]mult_A;
  output [13:0]mult_B;
  input [29:0]mult_P;
  output [15:0]outData;
  input [4:0]outGain;

  wire clear;
  wire [15:0]mult_A;
  wire [13:0]mult_B;
  wire [29:0]mult_P;
  wire nReset;
  wire n_0_212;
  wire [15:0]outData;
  wire [4:0]outGain;
  wire [13:0]s_axis_gain_tdata;
  wire [31:0]s_axis_sin_tdata;
  wire s_axis_sin_tvalid;
  wire \sum_reg[0]_i_2_n_0 ;
  wire sync;
  wire sysClk;

  LUT1 #(
    .INIT(2'h1)) 
    i_212
       (.I0(nReset),
        .O(n_0_212));
  design_1_mult_sum_0_0_mult_sum inst
       (.clear_0(clear),
        .mult_P(mult_P),
        .nReset(nReset),
        .outData(outData),
        .outGain(outGain),
        .sync(sync),
        .sysClk(sysClk),
        .sysClk_0(\sum_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[0]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[16]),
        .O(mult_A[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[10]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[26]),
        .O(mult_A[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[11]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[27]),
        .O(mult_A[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[12]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[28]),
        .O(mult_A[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[13]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[29]),
        .O(mult_A[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[14]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[30]),
        .O(mult_A[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[15]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[31]),
        .O(mult_A[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[1]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[17]),
        .O(mult_A[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[2]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[18]),
        .O(mult_A[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[3]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[19]),
        .O(mult_A[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[4]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[20]),
        .O(mult_A[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[5]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[21]),
        .O(mult_A[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[6]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[22]),
        .O(mult_A[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[7]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[23]),
        .O(mult_A[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[8]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[24]),
        .O(mult_A[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_A[9]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_sin_tdata[25]),
        .O(mult_A[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[0]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[0]),
        .O(mult_B[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[10]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[10]),
        .O(mult_B[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[11]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[11]),
        .O(mult_B[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[12]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[12]),
        .O(mult_B[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[13]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[13]),
        .O(mult_B[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[1]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[1]),
        .O(mult_B[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[2]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[2]),
        .O(mult_B[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[3]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[3]),
        .O(mult_B[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[4]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[4]),
        .O(mult_B[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[5]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[5]),
        .O(mult_B[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[6]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[6]),
        .O(mult_B[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[7]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[7]),
        .O(mult_B[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[8]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[8]),
        .O(mult_B[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \mult_B[9]_INST_0 
       (.I0(s_axis_sin_tvalid),
        .I1(s_axis_gain_tdata[9]),
        .O(mult_B[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \sum_reg[0]_i_2 
       (.I0(sysClk),
        .O(\sum_reg[0]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "mult_sum" *) 
module design_1_mult_sum_0_0_mult_sum
   (sync,
    outData,
    sysClk_0,
    sysClk,
    clear_0,
    mult_P,
    nReset,
    outGain);
  output sync;
  output [15:0]outData;
  input sysClk_0;
  input sysClk;
  input clear_0;
  input [29:0]mult_P;
  input nReset;
  input [4:0]outGain;

  wire clear;
  wire clear_0;
  wire \clear_delay_reg[1]_inst_clear_delay_reg_r_26_n_0 ;
  wire \clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25_n_0 ;
  wire clear_delay_reg_gate_n_0;
  wire clear_delay_reg_r_0_n_0;
  wire clear_delay_reg_r_10_n_0;
  wire clear_delay_reg_r_11_n_0;
  wire clear_delay_reg_r_12_n_0;
  wire clear_delay_reg_r_13_n_0;
  wire clear_delay_reg_r_14_n_0;
  wire clear_delay_reg_r_15_n_0;
  wire clear_delay_reg_r_16_n_0;
  wire clear_delay_reg_r_17_n_0;
  wire clear_delay_reg_r_18_n_0;
  wire clear_delay_reg_r_19_n_0;
  wire clear_delay_reg_r_1_n_0;
  wire clear_delay_reg_r_20_n_0;
  wire clear_delay_reg_r_21_n_0;
  wire clear_delay_reg_r_22_n_0;
  wire clear_delay_reg_r_23_n_0;
  wire clear_delay_reg_r_24_n_0;
  wire clear_delay_reg_r_25_n_0;
  wire clear_delay_reg_r_26_n_0;
  wire clear_delay_reg_r_2_n_0;
  wire clear_delay_reg_r_3_n_0;
  wire clear_delay_reg_r_4_n_0;
  wire clear_delay_reg_r_5_n_0;
  wire clear_delay_reg_r_6_n_0;
  wire clear_delay_reg_r_7_n_0;
  wire clear_delay_reg_r_8_n_0;
  wire clear_delay_reg_r_9_n_0;
  wire clear_delay_reg_r_n_0;
  wire [29:0]mult_P;
  wire nReset;
  wire [15:0]outData;
  wire \outDataBuffer[0]_i_1_n_0 ;
  wire \outDataBuffer[0]_i_2_n_0 ;
  wire \outDataBuffer[0]_i_3_n_0 ;
  wire \outDataBuffer[10]_i_1_n_0 ;
  wire \outDataBuffer[10]_i_2_n_0 ;
  wire \outDataBuffer[10]_i_3_n_0 ;
  wire \outDataBuffer[11]_i_1_n_0 ;
  wire \outDataBuffer[11]_i_2_n_0 ;
  wire \outDataBuffer[11]_i_3_n_0 ;
  wire \outDataBuffer[12]_i_1_n_0 ;
  wire \outDataBuffer[12]_i_2_n_0 ;
  wire \outDataBuffer[12]_i_3_n_0 ;
  wire \outDataBuffer[13]_i_1_n_0 ;
  wire \outDataBuffer[13]_i_2_n_0 ;
  wire \outDataBuffer[13]_i_3_n_0 ;
  wire \outDataBuffer[14]_i_10_n_0 ;
  wire \outDataBuffer[14]_i_11_n_0 ;
  wire \outDataBuffer[14]_i_1_n_0 ;
  wire \outDataBuffer[14]_i_2_n_0 ;
  wire \outDataBuffer[14]_i_3_n_0 ;
  wire \outDataBuffer[14]_i_4_n_0 ;
  wire \outDataBuffer[14]_i_5_n_0 ;
  wire \outDataBuffer[14]_i_6_n_0 ;
  wire \outDataBuffer[14]_i_7_n_0 ;
  wire \outDataBuffer[14]_i_8_n_0 ;
  wire \outDataBuffer[14]_i_9_n_0 ;
  wire \outDataBuffer[15]_i_10_n_0 ;
  wire \outDataBuffer[15]_i_11_n_0 ;
  wire \outDataBuffer[15]_i_12_n_0 ;
  wire \outDataBuffer[15]_i_13_n_0 ;
  wire \outDataBuffer[15]_i_14_n_0 ;
  wire \outDataBuffer[15]_i_15_n_0 ;
  wire \outDataBuffer[15]_i_16_n_0 ;
  wire \outDataBuffer[15]_i_17_n_0 ;
  wire \outDataBuffer[15]_i_18_n_0 ;
  wire \outDataBuffer[15]_i_19_n_0 ;
  wire \outDataBuffer[15]_i_1_n_0 ;
  wire \outDataBuffer[15]_i_20_n_0 ;
  wire \outDataBuffer[15]_i_21_n_0 ;
  wire \outDataBuffer[15]_i_22_n_0 ;
  wire \outDataBuffer[15]_i_23_n_0 ;
  wire \outDataBuffer[15]_i_24_n_0 ;
  wire \outDataBuffer[15]_i_25_n_0 ;
  wire \outDataBuffer[15]_i_26_n_0 ;
  wire \outDataBuffer[15]_i_27_n_0 ;
  wire \outDataBuffer[15]_i_28_n_0 ;
  wire \outDataBuffer[15]_i_29_n_0 ;
  wire \outDataBuffer[15]_i_2_n_0 ;
  wire \outDataBuffer[15]_i_30_n_0 ;
  wire \outDataBuffer[15]_i_31_n_0 ;
  wire \outDataBuffer[15]_i_32_n_0 ;
  wire \outDataBuffer[15]_i_33_n_0 ;
  wire \outDataBuffer[15]_i_34_n_0 ;
  wire \outDataBuffer[15]_i_35_n_0 ;
  wire \outDataBuffer[15]_i_36_n_0 ;
  wire \outDataBuffer[15]_i_37_n_0 ;
  wire \outDataBuffer[15]_i_38_n_0 ;
  wire \outDataBuffer[15]_i_39_n_0 ;
  wire \outDataBuffer[15]_i_3_n_0 ;
  wire \outDataBuffer[15]_i_40_n_0 ;
  wire \outDataBuffer[15]_i_41_n_0 ;
  wire \outDataBuffer[15]_i_42_n_0 ;
  wire \outDataBuffer[15]_i_43_n_0 ;
  wire \outDataBuffer[15]_i_44_n_0 ;
  wire \outDataBuffer[15]_i_45_n_0 ;
  wire \outDataBuffer[15]_i_46_n_0 ;
  wire \outDataBuffer[15]_i_47_n_0 ;
  wire \outDataBuffer[15]_i_48_n_0 ;
  wire \outDataBuffer[15]_i_49_n_0 ;
  wire \outDataBuffer[15]_i_4_n_0 ;
  wire \outDataBuffer[15]_i_50_n_0 ;
  wire \outDataBuffer[15]_i_51_n_0 ;
  wire \outDataBuffer[15]_i_52_n_0 ;
  wire \outDataBuffer[15]_i_53_n_0 ;
  wire \outDataBuffer[15]_i_54_n_0 ;
  wire \outDataBuffer[15]_i_55_n_0 ;
  wire \outDataBuffer[15]_i_56_n_0 ;
  wire \outDataBuffer[15]_i_57_n_0 ;
  wire \outDataBuffer[15]_i_58_n_0 ;
  wire \outDataBuffer[15]_i_59_n_0 ;
  wire \outDataBuffer[15]_i_5_n_0 ;
  wire \outDataBuffer[15]_i_60_n_0 ;
  wire \outDataBuffer[15]_i_61_n_0 ;
  wire \outDataBuffer[15]_i_62_n_0 ;
  wire \outDataBuffer[15]_i_63_n_0 ;
  wire \outDataBuffer[15]_i_64_n_0 ;
  wire \outDataBuffer[15]_i_65_n_0 ;
  wire \outDataBuffer[15]_i_66_n_0 ;
  wire \outDataBuffer[15]_i_67_n_0 ;
  wire \outDataBuffer[15]_i_68_n_0 ;
  wire \outDataBuffer[15]_i_69_n_0 ;
  wire \outDataBuffer[15]_i_6_n_0 ;
  wire \outDataBuffer[15]_i_70_n_0 ;
  wire \outDataBuffer[15]_i_71_n_0 ;
  wire \outDataBuffer[15]_i_72_n_0 ;
  wire \outDataBuffer[15]_i_73_n_0 ;
  wire \outDataBuffer[15]_i_74_n_0 ;
  wire \outDataBuffer[15]_i_75_n_0 ;
  wire \outDataBuffer[15]_i_76_n_0 ;
  wire \outDataBuffer[15]_i_77_n_0 ;
  wire \outDataBuffer[15]_i_78_n_0 ;
  wire \outDataBuffer[15]_i_79_n_0 ;
  wire \outDataBuffer[15]_i_7_n_0 ;
  wire \outDataBuffer[15]_i_80_n_0 ;
  wire \outDataBuffer[15]_i_8_n_0 ;
  wire \outDataBuffer[15]_i_9_n_0 ;
  wire \outDataBuffer[1]_i_1_n_0 ;
  wire \outDataBuffer[1]_i_2_n_0 ;
  wire \outDataBuffer[1]_i_3_n_0 ;
  wire \outDataBuffer[2]_i_1_n_0 ;
  wire \outDataBuffer[2]_i_2_n_0 ;
  wire \outDataBuffer[2]_i_3_n_0 ;
  wire \outDataBuffer[3]_i_1_n_0 ;
  wire \outDataBuffer[3]_i_2_n_0 ;
  wire \outDataBuffer[3]_i_3_n_0 ;
  wire \outDataBuffer[4]_i_1_n_0 ;
  wire \outDataBuffer[4]_i_2_n_0 ;
  wire \outDataBuffer[4]_i_3_n_0 ;
  wire \outDataBuffer[5]_i_1_n_0 ;
  wire \outDataBuffer[5]_i_2_n_0 ;
  wire \outDataBuffer[5]_i_3_n_0 ;
  wire \outDataBuffer[6]_i_1_n_0 ;
  wire \outDataBuffer[6]_i_2_n_0 ;
  wire \outDataBuffer[6]_i_3_n_0 ;
  wire \outDataBuffer[7]_i_1_n_0 ;
  wire \outDataBuffer[7]_i_2_n_0 ;
  wire \outDataBuffer[7]_i_3_n_0 ;
  wire \outDataBuffer[8]_i_1_n_0 ;
  wire \outDataBuffer[8]_i_2_n_0 ;
  wire \outDataBuffer[8]_i_3_n_0 ;
  wire \outDataBuffer[9]_i_1_n_0 ;
  wire \outDataBuffer[9]_i_2_n_0 ;
  wire \outDataBuffer[9]_i_3_n_0 ;
  wire [4:0]outGain;
  wire [4:0]outGainBuf;
  wire \sum[0]_i_3_n_0 ;
  wire \sum[0]_i_4_n_0 ;
  wire \sum[0]_i_5_n_0 ;
  wire \sum[0]_i_6_n_0 ;
  wire \sum[12]_i_2_n_0 ;
  wire \sum[12]_i_3_n_0 ;
  wire \sum[12]_i_4_n_0 ;
  wire \sum[12]_i_5_n_0 ;
  wire \sum[16]_i_2_n_0 ;
  wire \sum[16]_i_3_n_0 ;
  wire \sum[16]_i_4_n_0 ;
  wire \sum[16]_i_5_n_0 ;
  wire \sum[20]_i_2_n_0 ;
  wire \sum[20]_i_3_n_0 ;
  wire \sum[20]_i_4_n_0 ;
  wire \sum[20]_i_5_n_0 ;
  wire \sum[24]_i_2_n_0 ;
  wire \sum[24]_i_3_n_0 ;
  wire \sum[24]_i_4_n_0 ;
  wire \sum[24]_i_5_n_0 ;
  wire \sum[28]_i_2_n_0 ;
  wire \sum[28]_i_3_n_0 ;
  wire \sum[28]_i_4_n_0 ;
  wire \sum[28]_i_5_n_0 ;
  wire \sum[32]_i_2_n_0 ;
  wire \sum[32]_i_3_n_0 ;
  wire \sum[32]_i_4_n_0 ;
  wire \sum[32]_i_5_n_0 ;
  wire \sum[36]_i_2_n_0 ;
  wire \sum[36]_i_3_n_0 ;
  wire \sum[36]_i_4_n_0 ;
  wire \sum[36]_i_5_n_0 ;
  wire \sum[40]_i_2_n_0 ;
  wire \sum[4]_i_2_n_0 ;
  wire \sum[4]_i_3_n_0 ;
  wire \sum[4]_i_4_n_0 ;
  wire \sum[4]_i_5_n_0 ;
  wire \sum[8]_i_2_n_0 ;
  wire \sum[8]_i_3_n_0 ;
  wire \sum[8]_i_4_n_0 ;
  wire \sum[8]_i_5_n_0 ;
  wire [40:0]sum_reg;
  wire \sum_reg[0]_i_1_n_0 ;
  wire \sum_reg[0]_i_1_n_1 ;
  wire \sum_reg[0]_i_1_n_2 ;
  wire \sum_reg[0]_i_1_n_3 ;
  wire \sum_reg[0]_i_1_n_4 ;
  wire \sum_reg[0]_i_1_n_5 ;
  wire \sum_reg[0]_i_1_n_6 ;
  wire \sum_reg[0]_i_1_n_7 ;
  wire \sum_reg[12]_i_1_n_0 ;
  wire \sum_reg[12]_i_1_n_1 ;
  wire \sum_reg[12]_i_1_n_2 ;
  wire \sum_reg[12]_i_1_n_3 ;
  wire \sum_reg[12]_i_1_n_4 ;
  wire \sum_reg[12]_i_1_n_5 ;
  wire \sum_reg[12]_i_1_n_6 ;
  wire \sum_reg[12]_i_1_n_7 ;
  wire \sum_reg[16]_i_1_n_0 ;
  wire \sum_reg[16]_i_1_n_1 ;
  wire \sum_reg[16]_i_1_n_2 ;
  wire \sum_reg[16]_i_1_n_3 ;
  wire \sum_reg[16]_i_1_n_4 ;
  wire \sum_reg[16]_i_1_n_5 ;
  wire \sum_reg[16]_i_1_n_6 ;
  wire \sum_reg[16]_i_1_n_7 ;
  wire \sum_reg[20]_i_1_n_0 ;
  wire \sum_reg[20]_i_1_n_1 ;
  wire \sum_reg[20]_i_1_n_2 ;
  wire \sum_reg[20]_i_1_n_3 ;
  wire \sum_reg[20]_i_1_n_4 ;
  wire \sum_reg[20]_i_1_n_5 ;
  wire \sum_reg[20]_i_1_n_6 ;
  wire \sum_reg[20]_i_1_n_7 ;
  wire \sum_reg[24]_i_1_n_0 ;
  wire \sum_reg[24]_i_1_n_1 ;
  wire \sum_reg[24]_i_1_n_2 ;
  wire \sum_reg[24]_i_1_n_3 ;
  wire \sum_reg[24]_i_1_n_4 ;
  wire \sum_reg[24]_i_1_n_5 ;
  wire \sum_reg[24]_i_1_n_6 ;
  wire \sum_reg[24]_i_1_n_7 ;
  wire \sum_reg[28]_i_1_n_0 ;
  wire \sum_reg[28]_i_1_n_1 ;
  wire \sum_reg[28]_i_1_n_2 ;
  wire \sum_reg[28]_i_1_n_3 ;
  wire \sum_reg[28]_i_1_n_4 ;
  wire \sum_reg[28]_i_1_n_5 ;
  wire \sum_reg[28]_i_1_n_6 ;
  wire \sum_reg[28]_i_1_n_7 ;
  wire \sum_reg[32]_i_1_n_0 ;
  wire \sum_reg[32]_i_1_n_1 ;
  wire \sum_reg[32]_i_1_n_2 ;
  wire \sum_reg[32]_i_1_n_3 ;
  wire \sum_reg[32]_i_1_n_4 ;
  wire \sum_reg[32]_i_1_n_5 ;
  wire \sum_reg[32]_i_1_n_6 ;
  wire \sum_reg[32]_i_1_n_7 ;
  wire \sum_reg[36]_i_1_n_0 ;
  wire \sum_reg[36]_i_1_n_1 ;
  wire \sum_reg[36]_i_1_n_2 ;
  wire \sum_reg[36]_i_1_n_3 ;
  wire \sum_reg[36]_i_1_n_4 ;
  wire \sum_reg[36]_i_1_n_5 ;
  wire \sum_reg[36]_i_1_n_6 ;
  wire \sum_reg[36]_i_1_n_7 ;
  wire \sum_reg[40]_i_1_n_7 ;
  wire \sum_reg[4]_i_1_n_0 ;
  wire \sum_reg[4]_i_1_n_1 ;
  wire \sum_reg[4]_i_1_n_2 ;
  wire \sum_reg[4]_i_1_n_3 ;
  wire \sum_reg[4]_i_1_n_4 ;
  wire \sum_reg[4]_i_1_n_5 ;
  wire \sum_reg[4]_i_1_n_6 ;
  wire \sum_reg[4]_i_1_n_7 ;
  wire \sum_reg[8]_i_1_n_0 ;
  wire \sum_reg[8]_i_1_n_1 ;
  wire \sum_reg[8]_i_1_n_2 ;
  wire \sum_reg[8]_i_1_n_3 ;
  wire \sum_reg[8]_i_1_n_4 ;
  wire \sum_reg[8]_i_1_n_5 ;
  wire \sum_reg[8]_i_1_n_6 ;
  wire \sum_reg[8]_i_1_n_7 ;
  wire sync;
  wire sysClk;
  wire sysClk_0;
  wire \NLW_clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25_Q31_UNCONNECTED ;
  wire [3:0]\NLW_sum_reg[40]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_sum_reg[40]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clear_delay[0]_i_1 
       (.I0(nReset),
        .O(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \clear_delay_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_gate_n_0),
        .Q(sync),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \clear_delay_reg[1]_inst_clear_delay_reg_r_26 
       (.C(sysClk),
        .CE(1'b1),
        .D(\clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25_n_0 ),
        .Q(\clear_delay_reg[1]_inst_clear_delay_reg_r_26_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/clear_delay_reg " *) 
  (* srl_name = "\inst/clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25 " *) 
  SRLC32E #(
    .IS_CLK_INVERTED(1'b1)) 
    \clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25 
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(sysClk),
        .D(clear_0),
        .Q(\clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25_n_0 ),
        .Q31(\NLW_clear_delay_reg[2]_srl27___inst_clear_delay_reg_r_25_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h8)) 
    clear_delay_reg_gate
       (.I0(\clear_delay_reg[1]_inst_clear_delay_reg_r_26_n_0 ),
        .I1(clear_delay_reg_r_26_n_0),
        .O(clear_delay_reg_gate_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r
       (.C(sysClk),
        .CE(1'b1),
        .D(1'b1),
        .Q(clear_delay_reg_r_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_0
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_n_0),
        .Q(clear_delay_reg_r_0_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_1
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_0_n_0),
        .Q(clear_delay_reg_r_1_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_10
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_9_n_0),
        .Q(clear_delay_reg_r_10_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_11
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_10_n_0),
        .Q(clear_delay_reg_r_11_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_12
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_11_n_0),
        .Q(clear_delay_reg_r_12_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_13
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_12_n_0),
        .Q(clear_delay_reg_r_13_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_14
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_13_n_0),
        .Q(clear_delay_reg_r_14_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_15
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_14_n_0),
        .Q(clear_delay_reg_r_15_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_16
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_15_n_0),
        .Q(clear_delay_reg_r_16_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_17
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_16_n_0),
        .Q(clear_delay_reg_r_17_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_18
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_17_n_0),
        .Q(clear_delay_reg_r_18_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_19
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_18_n_0),
        .Q(clear_delay_reg_r_19_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_2
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_1_n_0),
        .Q(clear_delay_reg_r_2_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_20
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_19_n_0),
        .Q(clear_delay_reg_r_20_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_21
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_20_n_0),
        .Q(clear_delay_reg_r_21_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_22
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_21_n_0),
        .Q(clear_delay_reg_r_22_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_23
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_22_n_0),
        .Q(clear_delay_reg_r_23_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_24
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_23_n_0),
        .Q(clear_delay_reg_r_24_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_25
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_24_n_0),
        .Q(clear_delay_reg_r_25_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_26
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_25_n_0),
        .Q(clear_delay_reg_r_26_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_3
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_2_n_0),
        .Q(clear_delay_reg_r_3_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_4
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_3_n_0),
        .Q(clear_delay_reg_r_4_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_5
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_4_n_0),
        .Q(clear_delay_reg_r_5_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_6
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_5_n_0),
        .Q(clear_delay_reg_r_6_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_7
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_6_n_0),
        .Q(clear_delay_reg_r_7_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_8
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_7_n_0),
        .Q(clear_delay_reg_r_8_n_0),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    clear_delay_reg_r_9
       (.C(sysClk),
        .CE(1'b1),
        .D(clear_delay_reg_r_8_n_0),
        .Q(clear_delay_reg_r_9_n_0),
        .R(clear));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[0]_i_1 
       (.I0(\outDataBuffer[1]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[0]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \outDataBuffer[0]_i_2 
       (.I0(\outDataBuffer[6]_i_3_n_0 ),
        .I1(outGainBuf[2]),
        .I2(\outDataBuffer[2]_i_3_n_0 ),
        .I3(\outDataBuffer[0]_i_3_n_0 ),
        .I4(\outDataBuffer[4]_i_3_n_0 ),
        .I5(outGainBuf[1]),
        .O(\outDataBuffer[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[0]_i_3 
       (.I0(sum_reg[0]),
        .I1(sum_reg[16]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[24]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[8]),
        .O(\outDataBuffer[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[10]_i_1 
       (.I0(\outDataBuffer[11]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[10]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[10]_i_2 
       (.I0(\outDataBuffer[14]_i_9_n_0 ),
        .I1(\outDataBuffer[12]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_11_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[10]_i_3_n_0 ),
        .O(\outDataBuffer[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[10]_i_3 
       (.I0(sum_reg[34]),
        .I1(sum_reg[18]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[26]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[10]),
        .O(\outDataBuffer[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[11]_i_1 
       (.I0(\outDataBuffer[12]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[11]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[11]_i_2 
       (.I0(\outDataBuffer[14]_i_5_n_0 ),
        .I1(\outDataBuffer[13]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_7_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[11]_i_3_n_0 ),
        .O(\outDataBuffer[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[11]_i_3 
       (.I0(sum_reg[35]),
        .I1(sum_reg[19]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[27]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[11]),
        .O(\outDataBuffer[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[12]_i_1 
       (.I0(\outDataBuffer[13]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[12]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[12]_i_2 
       (.I0(\outDataBuffer[14]_i_10_n_0 ),
        .I1(\outDataBuffer[14]_i_11_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_9_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[12]_i_3_n_0 ),
        .O(\outDataBuffer[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[12]_i_3 
       (.I0(sum_reg[36]),
        .I1(sum_reg[20]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[28]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[12]),
        .O(\outDataBuffer[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[13]_i_1 
       (.I0(\outDataBuffer[14]_i_3_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[13]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[13]_i_2 
       (.I0(\outDataBuffer[14]_i_6_n_0 ),
        .I1(\outDataBuffer[14]_i_7_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_5_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[13]_i_3_n_0 ),
        .O(\outDataBuffer[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[13]_i_3 
       (.I0(sum_reg[37]),
        .I1(sum_reg[21]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[29]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[13]),
        .O(\outDataBuffer[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[14]_i_1 
       (.I0(\outDataBuffer[14]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[14]_i_3_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_10 
       (.I0(sum_reg[26]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[34]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[18]),
        .O(\outDataBuffer[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[14]_i_11 
       (.I0(sum_reg[38]),
        .I1(sum_reg[22]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[30]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[14]),
        .O(\outDataBuffer[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[14]_i_2 
       (.I0(\outDataBuffer[14]_i_4_n_0 ),
        .I1(\outDataBuffer[14]_i_5_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_6_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_7_n_0 ),
        .O(\outDataBuffer[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[14]_i_3 
       (.I0(\outDataBuffer[14]_i_8_n_0 ),
        .I1(\outDataBuffer[14]_i_9_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_10_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_11_n_0 ),
        .O(\outDataBuffer[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_4 
       (.I0(sum_reg[29]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[37]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[21]),
        .O(\outDataBuffer[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_5 
       (.I0(sum_reg[25]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[33]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[17]),
        .O(\outDataBuffer[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_6 
       (.I0(sum_reg[27]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[35]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[19]),
        .O(\outDataBuffer[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[14]_i_7 
       (.I0(sum_reg[39]),
        .I1(sum_reg[23]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[31]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[15]),
        .O(\outDataBuffer[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_8 
       (.I0(sum_reg[28]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[36]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[20]),
        .O(\outDataBuffer[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[14]_i_9 
       (.I0(sum_reg[24]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[32]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[16]),
        .O(\outDataBuffer[14]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \outDataBuffer[15]_i_1 
       (.I0(\outDataBuffer[15]_i_2_n_0 ),
        .I1(\outDataBuffer[15]_i_3_n_0 ),
        .I2(\outDataBuffer[15]_i_4_n_0 ),
        .O(\outDataBuffer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \outDataBuffer[15]_i_10 
       (.I0(\outDataBuffer[15]_i_37_n_0 ),
        .I1(\outDataBuffer[15]_i_38_n_0 ),
        .I2(outGainBuf[0]),
        .I3(sum_reg[40]),
        .O(\outDataBuffer[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \outDataBuffer[15]_i_11 
       (.I0(\outDataBuffer[15]_i_39_n_0 ),
        .I1(\outDataBuffer[15]_i_40_n_0 ),
        .I2(\outDataBuffer[15]_i_41_n_0 ),
        .I3(\outDataBuffer[15]_i_20_n_0 ),
        .I4(sum_reg[40]),
        .I5(\outDataBuffer[15]_i_21_n_0 ),
        .O(\outDataBuffer[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7FFFFF7FFFFF)) 
    \outDataBuffer[15]_i_12 
       (.I0(\outDataBuffer[15]_i_23_n_0 ),
        .I1(\outDataBuffer[15]_i_22_n_0 ),
        .I2(\outDataBuffer[15]_i_25_n_0 ),
        .I3(outGainBuf[0]),
        .I4(\outDataBuffer[15]_i_26_n_0 ),
        .I5(\outDataBuffer[15]_i_24_n_0 ),
        .O(\outDataBuffer[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \outDataBuffer[15]_i_13 
       (.I0(\outDataBuffer[15]_i_42_n_0 ),
        .I1(\outDataBuffer[15]_i_28_n_0 ),
        .I2(\outDataBuffer[15]_i_29_n_0 ),
        .I3(\outDataBuffer[15]_i_30_n_0 ),
        .I4(\outDataBuffer[15]_i_31_n_0 ),
        .O(\outDataBuffer[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \outDataBuffer[15]_i_14 
       (.I0(\outDataBuffer[15]_i_32_n_0 ),
        .I1(\outDataBuffer[15]_i_33_n_0 ),
        .I2(\outDataBuffer[15]_i_34_n_0 ),
        .I3(\outDataBuffer[15]_i_35_n_0 ),
        .I4(\outDataBuffer[15]_i_2_n_0 ),
        .I5(\outDataBuffer[15]_i_36_n_0 ),
        .O(\outDataBuffer[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h3333FFFF0F5FFF5F)) 
    \outDataBuffer[15]_i_15 
       (.I0(\outDataBuffer[15]_i_43_n_0 ),
        .I1(\outDataBuffer[15]_i_44_n_0 ),
        .I2(\outDataBuffer[15]_i_45_n_0 ),
        .I3(outGainBuf[1]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[0]),
        .O(\outDataBuffer[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[15]_i_16 
       (.I0(sum_reg[30]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[38]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[22]),
        .O(\outDataBuffer[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \outDataBuffer[15]_i_17 
       (.I0(\outDataBuffer[15]_i_44_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_45_n_0 ),
        .I3(outGainBuf[1]),
        .I4(\outDataBuffer[15]_i_43_n_0 ),
        .O(\outDataBuffer[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_18 
       (.I0(\outDataBuffer[15]_i_46_n_0 ),
        .I1(\outDataBuffer[15]_i_47_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_43_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_48_n_0 ),
        .O(\outDataBuffer[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFECECFCCFECE)) 
    \outDataBuffer[15]_i_19 
       (.I0(\outDataBuffer[15]_i_49_n_0 ),
        .I1(\outDataBuffer[15]_i_50_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_51_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_52_n_0 ),
        .O(\outDataBuffer[15]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_2 
       (.I0(\outDataBuffer[15]_i_5_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[14]_i_2_n_0 ),
        .O(\outDataBuffer[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_20 
       (.I0(\outDataBuffer[15]_i_43_n_0 ),
        .I1(\outDataBuffer[15]_i_48_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_47_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_52_n_0 ),
        .O(\outDataBuffer[15]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_21 
       (.I0(\outDataBuffer[15]_i_38_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_44_n_0 ),
        .O(\outDataBuffer[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_22 
       (.I0(\outDataBuffer[15]_i_47_n_0 ),
        .I1(\outDataBuffer[15]_i_52_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_48_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_53_n_0 ),
        .O(\outDataBuffer[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_23 
       (.I0(\outDataBuffer[15]_i_48_n_0 ),
        .I1(\outDataBuffer[15]_i_53_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_52_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_51_n_0 ),
        .O(\outDataBuffer[15]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \outDataBuffer[15]_i_24 
       (.I0(\outDataBuffer[15]_i_51_n_0 ),
        .I1(outGainBuf[1]),
        .I2(\outDataBuffer[15]_i_54_n_0 ),
        .I3(outGainBuf[2]),
        .I4(\outDataBuffer[15]_i_55_n_0 ),
        .O(\outDataBuffer[15]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_25 
       (.I0(\outDataBuffer[15]_i_56_n_0 ),
        .I1(outGainBuf[1]),
        .I2(\outDataBuffer[15]_i_57_n_0 ),
        .O(\outDataBuffer[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_26 
       (.I0(\outDataBuffer[15]_i_54_n_0 ),
        .I1(\outDataBuffer[15]_i_55_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_58_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_59_n_0 ),
        .O(\outDataBuffer[15]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010501)) 
    \outDataBuffer[15]_i_27 
       (.I0(\outDataBuffer[15]_i_60_n_0 ),
        .I1(\outDataBuffer[15]_i_61_n_0 ),
        .I2(\outDataBuffer[15]_i_62_n_0 ),
        .I3(outGainBuf[0]),
        .I4(\outDataBuffer[15]_i_63_n_0 ),
        .O(\outDataBuffer[15]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_28 
       (.I0(\outDataBuffer[15]_i_64_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_5_n_0 ),
        .O(\outDataBuffer[15]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_29 
       (.I0(\outDataBuffer[15]_i_61_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_65_n_0 ),
        .O(\outDataBuffer[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAABAAAAAA)) 
    \outDataBuffer[15]_i_3 
       (.I0(sum_reg[40]),
        .I1(\outDataBuffer[15]_i_6_n_0 ),
        .I2(\outDataBuffer[15]_i_7_n_0 ),
        .I3(\outDataBuffer[15]_i_8_n_0 ),
        .I4(\outDataBuffer[15]_i_9_n_0 ),
        .I5(\outDataBuffer[15]_i_10_n_0 ),
        .O(\outDataBuffer[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_30 
       (.I0(\outDataBuffer[15]_i_65_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_64_n_0 ),
        .O(\outDataBuffer[15]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_31 
       (.I0(\outDataBuffer[15]_i_66_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_67_n_0 ),
        .O(\outDataBuffer[15]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_32 
       (.I0(\outDataBuffer[15]_i_67_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_63_n_0 ),
        .O(\outDataBuffer[15]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_33 
       (.I0(\outDataBuffer[15]_i_68_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_66_n_0 ),
        .O(\outDataBuffer[15]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_34 
       (.I0(\outDataBuffer[15]_i_26_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_69_n_0 ),
        .O(\outDataBuffer[15]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_35 
       (.I0(\outDataBuffer[15]_i_69_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_70_n_0 ),
        .O(\outDataBuffer[15]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_36 
       (.I0(\outDataBuffer[15]_i_70_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_68_n_0 ),
        .O(\outDataBuffer[15]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_37 
       (.I0(\outDataBuffer[15]_i_45_n_0 ),
        .I1(\outDataBuffer[15]_i_43_n_0 ),
        .I2(outGainBuf[0]),
        .I3(\outDataBuffer[15]_i_46_n_0 ),
        .I4(outGainBuf[1]),
        .I5(\outDataBuffer[15]_i_47_n_0 ),
        .O(\outDataBuffer[15]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \outDataBuffer[15]_i_38 
       (.I0(outGainBuf[1]),
        .I1(sum_reg[39]),
        .I2(outGainBuf[4]),
        .I3(outGainBuf[3]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h505F03F3FFFFFFFF)) 
    \outDataBuffer[15]_i_39 
       (.I0(\outDataBuffer[15]_i_45_n_0 ),
        .I1(\outDataBuffer[15]_i_48_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_43_n_0 ),
        .I4(outGainBuf[0]),
        .I5(\outDataBuffer[15]_i_71_n_0 ),
        .O(\outDataBuffer[15]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h00001000FFFFFFFF)) 
    \outDataBuffer[15]_i_4 
       (.I0(\outDataBuffer[15]_i_11_n_0 ),
        .I1(\outDataBuffer[15]_i_12_n_0 ),
        .I2(\outDataBuffer[15]_i_13_n_0 ),
        .I3(\outDataBuffer[15]_i_14_n_0 ),
        .I4(\outDataBuffer[15]_i_15_n_0 ),
        .I5(sum_reg[40]),
        .O(\outDataBuffer[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \outDataBuffer[15]_i_40 
       (.I0(\outDataBuffer[15]_i_52_n_0 ),
        .I1(outGainBuf[1]),
        .I2(\outDataBuffer[15]_i_51_n_0 ),
        .I3(outGainBuf[0]),
        .I4(\outDataBuffer[15]_i_50_n_0 ),
        .O(\outDataBuffer[15]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_41 
       (.I0(\outDataBuffer[15]_i_50_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[15]_i_24_n_0 ),
        .O(\outDataBuffer[15]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA0800080)) 
    \outDataBuffer[15]_i_42 
       (.I0(\outDataBuffer[15]_i_60_n_0 ),
        .I1(\outDataBuffer[15]_i_61_n_0 ),
        .I2(\outDataBuffer[15]_i_62_n_0 ),
        .I3(outGainBuf[0]),
        .I4(\outDataBuffer[15]_i_63_n_0 ),
        .O(\outDataBuffer[15]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \outDataBuffer[15]_i_43 
       (.I0(sum_reg[37]),
        .I1(outGainBuf[4]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \outDataBuffer[15]_i_44 
       (.I0(outGainBuf[1]),
        .I1(sum_reg[38]),
        .I2(outGainBuf[4]),
        .I3(outGainBuf[3]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \outDataBuffer[15]_i_45 
       (.I0(sum_reg[39]),
        .I1(outGainBuf[4]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \outDataBuffer[15]_i_46 
       (.I0(sum_reg[38]),
        .I1(outGainBuf[4]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \outDataBuffer[15]_i_47 
       (.I0(sum_reg[36]),
        .I1(outGainBuf[4]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[2]),
        .O(\outDataBuffer[15]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \outDataBuffer[15]_i_48 
       (.I0(sum_reg[39]),
        .I1(outGainBuf[2]),
        .I2(sum_reg[35]),
        .I3(outGainBuf[4]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \outDataBuffer[15]_i_49 
       (.I0(sum_reg[34]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_55_n_0 ),
        .O(\outDataBuffer[15]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_5 
       (.I0(\outDataBuffer[15]_i_16_n_0 ),
        .I1(\outDataBuffer[14]_i_10_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_8_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_9_n_0 ),
        .O(\outDataBuffer[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \outDataBuffer[15]_i_50 
       (.I0(\outDataBuffer[15]_i_53_n_0 ),
        .I1(outGainBuf[1]),
        .I2(\outDataBuffer[15]_i_72_n_0 ),
        .I3(outGainBuf[2]),
        .I4(\outDataBuffer[15]_i_73_n_0 ),
        .O(\outDataBuffer[15]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \outDataBuffer[15]_i_51 
       (.I0(sum_reg[36]),
        .I1(outGainBuf[2]),
        .I2(sum_reg[32]),
        .I3(outGainBuf[4]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \outDataBuffer[15]_i_52 
       (.I0(sum_reg[38]),
        .I1(outGainBuf[2]),
        .I2(sum_reg[34]),
        .I3(outGainBuf[4]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \outDataBuffer[15]_i_53 
       (.I0(sum_reg[37]),
        .I1(outGainBuf[2]),
        .I2(sum_reg[33]),
        .I3(outGainBuf[4]),
        .I4(sum_reg[40]),
        .I5(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \outDataBuffer[15]_i_54 
       (.I0(sum_reg[34]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_54_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_55 
       (.I0(sum_reg[38]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[30]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \outDataBuffer[15]_i_56 
       (.I0(sum_reg[35]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_73_n_0 ),
        .O(\outDataBuffer[15]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hF0E2FFFFF0E20000)) 
    \outDataBuffer[15]_i_57 
       (.I0(sum_reg[33]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_74_n_0 ),
        .O(\outDataBuffer[15]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \outDataBuffer[15]_i_58 
       (.I0(sum_reg[32]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_59 
       (.I0(sum_reg[36]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[28]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \outDataBuffer[15]_i_6 
       (.I0(\outDataBuffer[15]_i_17_n_0 ),
        .I1(\outDataBuffer[15]_i_18_n_0 ),
        .I2(\outDataBuffer[15]_i_19_n_0 ),
        .I3(\outDataBuffer[15]_i_20_n_0 ),
        .I4(\outDataBuffer[15]_i_21_n_0 ),
        .I5(sum_reg[40]),
        .O(\outDataBuffer[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_60 
       (.I0(\outDataBuffer[15]_i_75_n_0 ),
        .I1(\outDataBuffer[15]_i_16_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_76_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_8_n_0 ),
        .O(\outDataBuffer[15]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_61 
       (.I0(\outDataBuffer[15]_i_77_n_0 ),
        .I1(\outDataBuffer[14]_i_4_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_78_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_6_n_0 ),
        .O(\outDataBuffer[15]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_62 
       (.I0(\outDataBuffer[15]_i_79_n_0 ),
        .I1(\outDataBuffer[15]_i_78_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_77_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_4_n_0 ),
        .O(\outDataBuffer[15]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_63 
       (.I0(\outDataBuffer[15]_i_59_n_0 ),
        .I1(\outDataBuffer[15]_i_76_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_75_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_16_n_0 ),
        .O(\outDataBuffer[15]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_64 
       (.I0(\outDataBuffer[15]_i_78_n_0 ),
        .I1(\outDataBuffer[14]_i_6_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[14]_i_4_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_5_n_0 ),
        .O(\outDataBuffer[15]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_65 
       (.I0(\outDataBuffer[15]_i_76_n_0 ),
        .I1(\outDataBuffer[14]_i_8_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_16_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[14]_i_10_n_0 ),
        .O(\outDataBuffer[15]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_66 
       (.I0(\outDataBuffer[15]_i_55_n_0 ),
        .I1(\outDataBuffer[15]_i_75_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_59_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_76_n_0 ),
        .O(\outDataBuffer[15]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_67 
       (.I0(\outDataBuffer[15]_i_74_n_0 ),
        .I1(\outDataBuffer[15]_i_77_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_79_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_78_n_0 ),
        .O(\outDataBuffer[15]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_68 
       (.I0(\outDataBuffer[15]_i_73_n_0 ),
        .I1(\outDataBuffer[15]_i_79_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_74_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_77_n_0 ),
        .O(\outDataBuffer[15]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_69 
       (.I0(\outDataBuffer[15]_i_80_n_0 ),
        .I1(\outDataBuffer[15]_i_74_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_73_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_79_n_0 ),
        .O(\outDataBuffer[15]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFEEE)) 
    \outDataBuffer[15]_i_7 
       (.I0(\outDataBuffer[15]_i_22_n_0 ),
        .I1(\outDataBuffer[15]_i_23_n_0 ),
        .I2(\outDataBuffer[15]_i_24_n_0 ),
        .I3(outGainBuf[0]),
        .I4(\outDataBuffer[15]_i_25_n_0 ),
        .I5(\outDataBuffer[15]_i_26_n_0 ),
        .O(\outDataBuffer[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[15]_i_70 
       (.I0(\outDataBuffer[15]_i_58_n_0 ),
        .I1(\outDataBuffer[15]_i_59_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[15]_i_55_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[15]_i_75_n_0 ),
        .O(\outDataBuffer[15]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \outDataBuffer[15]_i_71 
       (.I0(\outDataBuffer[15]_i_46_n_0 ),
        .I1(outGainBuf[1]),
        .I2(\outDataBuffer[15]_i_47_n_0 ),
        .O(\outDataBuffer[15]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \outDataBuffer[15]_i_72 
       (.I0(sum_reg[35]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_73 
       (.I0(sum_reg[39]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[31]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_74 
       (.I0(sum_reg[37]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[29]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_74_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_75 
       (.I0(sum_reg[34]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[26]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_76 
       (.I0(sum_reg[32]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[24]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_77 
       (.I0(sum_reg[33]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[25]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \outDataBuffer[15]_i_78 
       (.I0(sum_reg[31]),
        .I1(sum_reg[40]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[39]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[23]),
        .O(\outDataBuffer[15]_i_78_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \outDataBuffer[15]_i_79 
       (.I0(sum_reg[35]),
        .I1(outGainBuf[3]),
        .I2(sum_reg[27]),
        .I3(sum_reg[40]),
        .I4(outGainBuf[4]),
        .O(\outDataBuffer[15]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \outDataBuffer[15]_i_8 
       (.I0(\outDataBuffer[15]_i_27_n_0 ),
        .I1(\outDataBuffer[15]_i_28_n_0 ),
        .I2(\outDataBuffer[15]_i_29_n_0 ),
        .I3(\outDataBuffer[15]_i_30_n_0 ),
        .I4(\outDataBuffer[15]_i_31_n_0 ),
        .O(\outDataBuffer[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \outDataBuffer[15]_i_80 
       (.I0(sum_reg[33]),
        .I1(outGainBuf[4]),
        .I2(sum_reg[40]),
        .I3(outGainBuf[3]),
        .O(\outDataBuffer[15]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \outDataBuffer[15]_i_9 
       (.I0(\outDataBuffer[15]_i_32_n_0 ),
        .I1(\outDataBuffer[15]_i_33_n_0 ),
        .I2(\outDataBuffer[15]_i_34_n_0 ),
        .I3(\outDataBuffer[15]_i_35_n_0 ),
        .I4(\outDataBuffer[15]_i_2_n_0 ),
        .I5(\outDataBuffer[15]_i_36_n_0 ),
        .O(\outDataBuffer[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[1]_i_1 
       (.I0(\outDataBuffer[2]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[1]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \outDataBuffer[1]_i_2 
       (.I0(\outDataBuffer[7]_i_3_n_0 ),
        .I1(outGainBuf[2]),
        .I2(\outDataBuffer[3]_i_3_n_0 ),
        .I3(\outDataBuffer[1]_i_3_n_0 ),
        .I4(\outDataBuffer[5]_i_3_n_0 ),
        .I5(outGainBuf[1]),
        .O(\outDataBuffer[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[1]_i_3 
       (.I0(sum_reg[1]),
        .I1(sum_reg[17]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[25]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[9]),
        .O(\outDataBuffer[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[2]_i_1 
       (.I0(\outDataBuffer[3]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[2]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \outDataBuffer[2]_i_2 
       (.I0(\outDataBuffer[6]_i_3_n_0 ),
        .I1(outGainBuf[2]),
        .I2(\outDataBuffer[2]_i_3_n_0 ),
        .I3(\outDataBuffer[8]_i_3_n_0 ),
        .I4(\outDataBuffer[4]_i_3_n_0 ),
        .I5(outGainBuf[1]),
        .O(\outDataBuffer[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[2]_i_3 
       (.I0(sum_reg[2]),
        .I1(sum_reg[18]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[26]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[10]),
        .O(\outDataBuffer[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[3]_i_1 
       (.I0(\outDataBuffer[4]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[3]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \outDataBuffer[3]_i_2 
       (.I0(\outDataBuffer[9]_i_3_n_0 ),
        .I1(outGainBuf[2]),
        .I2(\outDataBuffer[5]_i_3_n_0 ),
        .I3(\outDataBuffer[7]_i_3_n_0 ),
        .I4(\outDataBuffer[3]_i_3_n_0 ),
        .I5(outGainBuf[1]),
        .O(\outDataBuffer[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[3]_i_3 
       (.I0(sum_reg[3]),
        .I1(sum_reg[19]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[27]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[11]),
        .O(\outDataBuffer[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[4]_i_1 
       (.I0(\outDataBuffer[5]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[4]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[4]_i_2 
       (.I0(\outDataBuffer[10]_i_3_n_0 ),
        .I1(\outDataBuffer[6]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[8]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[4]_i_3_n_0 ),
        .O(\outDataBuffer[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[4]_i_3 
       (.I0(sum_reg[4]),
        .I1(sum_reg[20]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[28]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[12]),
        .O(\outDataBuffer[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[5]_i_1 
       (.I0(\outDataBuffer[6]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[5]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[5]_i_2 
       (.I0(\outDataBuffer[11]_i_3_n_0 ),
        .I1(\outDataBuffer[7]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[9]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[5]_i_3_n_0 ),
        .O(\outDataBuffer[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[5]_i_3 
       (.I0(sum_reg[5]),
        .I1(sum_reg[21]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[29]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[13]),
        .O(\outDataBuffer[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[6]_i_1 
       (.I0(\outDataBuffer[7]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[6]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[6]_i_2 
       (.I0(\outDataBuffer[12]_i_3_n_0 ),
        .I1(\outDataBuffer[8]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[10]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[6]_i_3_n_0 ),
        .O(\outDataBuffer[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[6]_i_3 
       (.I0(sum_reg[6]),
        .I1(sum_reg[22]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[30]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[14]),
        .O(\outDataBuffer[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[7]_i_1 
       (.I0(\outDataBuffer[8]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[7]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[7]_i_2 
       (.I0(\outDataBuffer[13]_i_3_n_0 ),
        .I1(\outDataBuffer[9]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[11]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[7]_i_3_n_0 ),
        .O(\outDataBuffer[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \outDataBuffer[7]_i_3 
       (.I0(sum_reg[7]),
        .I1(sum_reg[23]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[31]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[15]),
        .O(\outDataBuffer[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[8]_i_1 
       (.I0(\outDataBuffer[9]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[8]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[8]_i_2 
       (.I0(\outDataBuffer[14]_i_11_n_0 ),
        .I1(\outDataBuffer[10]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[12]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[8]_i_3_n_0 ),
        .O(\outDataBuffer[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[8]_i_3 
       (.I0(sum_reg[32]),
        .I1(sum_reg[16]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[24]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[8]),
        .O(\outDataBuffer[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB800FFFF)) 
    \outDataBuffer[9]_i_1 
       (.I0(\outDataBuffer[10]_i_2_n_0 ),
        .I1(outGainBuf[0]),
        .I2(\outDataBuffer[9]_i_2_n_0 ),
        .I3(\outDataBuffer[15]_i_4_n_0 ),
        .I4(\outDataBuffer[15]_i_3_n_0 ),
        .O(\outDataBuffer[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[9]_i_2 
       (.I0(\outDataBuffer[14]_i_7_n_0 ),
        .I1(\outDataBuffer[11]_i_3_n_0 ),
        .I2(outGainBuf[1]),
        .I3(\outDataBuffer[13]_i_3_n_0 ),
        .I4(outGainBuf[2]),
        .I5(\outDataBuffer[9]_i_3_n_0 ),
        .O(\outDataBuffer[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \outDataBuffer[9]_i_3 
       (.I0(sum_reg[33]),
        .I1(sum_reg[17]),
        .I2(outGainBuf[3]),
        .I3(sum_reg[25]),
        .I4(outGainBuf[4]),
        .I5(sum_reg[9]),
        .O(\outDataBuffer[9]_i_3_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[0] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[0]_i_1_n_0 ),
        .Q(outData[0]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[10] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[10]_i_1_n_0 ),
        .Q(outData[10]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[11] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[11]_i_1_n_0 ),
        .Q(outData[11]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[12] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[12]_i_1_n_0 ),
        .Q(outData[12]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[13] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[13]_i_1_n_0 ),
        .Q(outData[13]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[14] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[14]_i_1_n_0 ),
        .Q(outData[14]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[15] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[15]_i_1_n_0 ),
        .Q(outData[15]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[1] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[1]_i_1_n_0 ),
        .Q(outData[1]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[2] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[2]_i_1_n_0 ),
        .Q(outData[2]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[3] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[3]_i_1_n_0 ),
        .Q(outData[3]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[4] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[4]_i_1_n_0 ),
        .Q(outData[4]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[5] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[5]_i_1_n_0 ),
        .Q(outData[5]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[6] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[6]_i_1_n_0 ),
        .Q(outData[6]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[7] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[7]_i_1_n_0 ),
        .Q(outData[7]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[8] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[8]_i_1_n_0 ),
        .Q(outData[8]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outDataBuffer_reg[9] 
       (.C(sysClk),
        .CE(sync),
        .D(\outDataBuffer[9]_i_1_n_0 ),
        .Q(outData[9]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outGainBuf_reg[0] 
       (.C(sysClk),
        .CE(1'b1),
        .D(outGain[0]),
        .Q(outGainBuf[0]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outGainBuf_reg[1] 
       (.C(sysClk),
        .CE(1'b1),
        .D(outGain[1]),
        .Q(outGainBuf[1]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outGainBuf_reg[2] 
       (.C(sysClk),
        .CE(1'b1),
        .D(outGain[2]),
        .Q(outGainBuf[2]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outGainBuf_reg[3] 
       (.C(sysClk),
        .CE(1'b1),
        .D(outGain[3]),
        .Q(outGainBuf[3]),
        .R(clear));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \outGainBuf_reg[4] 
       (.C(sysClk),
        .CE(1'b1),
        .D(outGain[4]),
        .Q(outGainBuf[4]),
        .R(clear));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_3 
       (.I0(mult_P[3]),
        .I1(sync),
        .I2(sum_reg[3]),
        .O(\sum[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_4 
       (.I0(mult_P[2]),
        .I1(sync),
        .I2(sum_reg[2]),
        .O(\sum[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_5 
       (.I0(mult_P[1]),
        .I1(sync),
        .I2(sum_reg[1]),
        .O(\sum[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[0]_i_6 
       (.I0(mult_P[0]),
        .I1(sync),
        .I2(sum_reg[0]),
        .O(\sum[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_2 
       (.I0(mult_P[15]),
        .I1(sync),
        .I2(sum_reg[15]),
        .O(\sum[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_3 
       (.I0(mult_P[14]),
        .I1(sync),
        .I2(sum_reg[14]),
        .O(\sum[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_4 
       (.I0(mult_P[13]),
        .I1(sync),
        .I2(sum_reg[13]),
        .O(\sum[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[12]_i_5 
       (.I0(mult_P[12]),
        .I1(sync),
        .I2(sum_reg[12]),
        .O(\sum[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_2 
       (.I0(mult_P[19]),
        .I1(sync),
        .I2(sum_reg[19]),
        .O(\sum[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_3 
       (.I0(mult_P[18]),
        .I1(sync),
        .I2(sum_reg[18]),
        .O(\sum[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_4 
       (.I0(mult_P[17]),
        .I1(sync),
        .I2(sum_reg[17]),
        .O(\sum[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[16]_i_5 
       (.I0(mult_P[16]),
        .I1(sync),
        .I2(sum_reg[16]),
        .O(\sum[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_2 
       (.I0(mult_P[23]),
        .I1(sync),
        .I2(sum_reg[23]),
        .O(\sum[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_3 
       (.I0(mult_P[22]),
        .I1(sync),
        .I2(sum_reg[22]),
        .O(\sum[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_4 
       (.I0(mult_P[21]),
        .I1(sync),
        .I2(sum_reg[21]),
        .O(\sum[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[20]_i_5 
       (.I0(mult_P[20]),
        .I1(sync),
        .I2(sum_reg[20]),
        .O(\sum[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_2 
       (.I0(mult_P[27]),
        .I1(sync),
        .I2(sum_reg[27]),
        .O(\sum[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_3 
       (.I0(mult_P[26]),
        .I1(sync),
        .I2(sum_reg[26]),
        .O(\sum[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_4 
       (.I0(mult_P[25]),
        .I1(sync),
        .I2(sum_reg[25]),
        .O(\sum[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[24]_i_5 
       (.I0(mult_P[24]),
        .I1(sync),
        .I2(sum_reg[24]),
        .O(\sum[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_2 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[31]),
        .O(\sum[28]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_3 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[30]),
        .O(\sum[28]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_4 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[29]),
        .O(\sum[28]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[28]_i_5 
       (.I0(mult_P[28]),
        .I1(sync),
        .I2(sum_reg[28]),
        .O(\sum[28]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[32]_i_2 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[35]),
        .O(\sum[32]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[32]_i_3 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[34]),
        .O(\sum[32]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[32]_i_4 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[33]),
        .O(\sum[32]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[32]_i_5 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[32]),
        .O(\sum[32]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[36]_i_2 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[39]),
        .O(\sum[36]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[36]_i_3 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[38]),
        .O(\sum[36]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[36]_i_4 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[37]),
        .O(\sum[36]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[36]_i_5 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[36]),
        .O(\sum[36]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[40]_i_2 
       (.I0(mult_P[29]),
        .I1(sync),
        .I2(sum_reg[40]),
        .O(\sum[40]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_2 
       (.I0(mult_P[7]),
        .I1(sync),
        .I2(sum_reg[7]),
        .O(\sum[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_3 
       (.I0(mult_P[6]),
        .I1(sync),
        .I2(sum_reg[6]),
        .O(\sum[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_4 
       (.I0(mult_P[5]),
        .I1(sync),
        .I2(sum_reg[5]),
        .O(\sum[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[4]_i_5 
       (.I0(mult_P[4]),
        .I1(sync),
        .I2(sum_reg[4]),
        .O(\sum[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_2 
       (.I0(mult_P[11]),
        .I1(sync),
        .I2(sum_reg[11]),
        .O(\sum[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_3 
       (.I0(mult_P[10]),
        .I1(sync),
        .I2(sum_reg[10]),
        .O(\sum[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_4 
       (.I0(mult_P[9]),
        .I1(sync),
        .I2(sum_reg[9]),
        .O(\sum[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \sum[8]_i_5 
       (.I0(mult_P[8]),
        .I1(sync),
        .I2(sum_reg[8]),
        .O(\sum[8]_i_5_n_0 ));
  FDRE \sum_reg[0] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[0]_i_1_n_7 ),
        .Q(sum_reg[0]),
        .R(clear));
  CARRY4 \sum_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[0]_i_1_n_0 ,\sum_reg[0]_i_1_n_1 ,\sum_reg[0]_i_1_n_2 ,\sum_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[3:0]),
        .O({\sum_reg[0]_i_1_n_4 ,\sum_reg[0]_i_1_n_5 ,\sum_reg[0]_i_1_n_6 ,\sum_reg[0]_i_1_n_7 }),
        .S({\sum[0]_i_3_n_0 ,\sum[0]_i_4_n_0 ,\sum[0]_i_5_n_0 ,\sum[0]_i_6_n_0 }));
  FDRE \sum_reg[10] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[8]_i_1_n_5 ),
        .Q(sum_reg[10]),
        .R(clear));
  FDRE \sum_reg[11] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[8]_i_1_n_4 ),
        .Q(sum_reg[11]),
        .R(clear));
  FDRE \sum_reg[12] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[12]_i_1_n_7 ),
        .Q(sum_reg[12]),
        .R(clear));
  CARRY4 \sum_reg[12]_i_1 
       (.CI(\sum_reg[8]_i_1_n_0 ),
        .CO({\sum_reg[12]_i_1_n_0 ,\sum_reg[12]_i_1_n_1 ,\sum_reg[12]_i_1_n_2 ,\sum_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[15:12]),
        .O({\sum_reg[12]_i_1_n_4 ,\sum_reg[12]_i_1_n_5 ,\sum_reg[12]_i_1_n_6 ,\sum_reg[12]_i_1_n_7 }),
        .S({\sum[12]_i_2_n_0 ,\sum[12]_i_3_n_0 ,\sum[12]_i_4_n_0 ,\sum[12]_i_5_n_0 }));
  FDRE \sum_reg[13] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[12]_i_1_n_6 ),
        .Q(sum_reg[13]),
        .R(clear));
  FDRE \sum_reg[14] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[12]_i_1_n_5 ),
        .Q(sum_reg[14]),
        .R(clear));
  FDRE \sum_reg[15] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[12]_i_1_n_4 ),
        .Q(sum_reg[15]),
        .R(clear));
  FDRE \sum_reg[16] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[16]_i_1_n_7 ),
        .Q(sum_reg[16]),
        .R(clear));
  CARRY4 \sum_reg[16]_i_1 
       (.CI(\sum_reg[12]_i_1_n_0 ),
        .CO({\sum_reg[16]_i_1_n_0 ,\sum_reg[16]_i_1_n_1 ,\sum_reg[16]_i_1_n_2 ,\sum_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[19:16]),
        .O({\sum_reg[16]_i_1_n_4 ,\sum_reg[16]_i_1_n_5 ,\sum_reg[16]_i_1_n_6 ,\sum_reg[16]_i_1_n_7 }),
        .S({\sum[16]_i_2_n_0 ,\sum[16]_i_3_n_0 ,\sum[16]_i_4_n_0 ,\sum[16]_i_5_n_0 }));
  FDRE \sum_reg[17] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[16]_i_1_n_6 ),
        .Q(sum_reg[17]),
        .R(clear));
  FDRE \sum_reg[18] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[16]_i_1_n_5 ),
        .Q(sum_reg[18]),
        .R(clear));
  FDRE \sum_reg[19] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[16]_i_1_n_4 ),
        .Q(sum_reg[19]),
        .R(clear));
  FDRE \sum_reg[1] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[0]_i_1_n_6 ),
        .Q(sum_reg[1]),
        .R(clear));
  FDRE \sum_reg[20] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[20]_i_1_n_7 ),
        .Q(sum_reg[20]),
        .R(clear));
  CARRY4 \sum_reg[20]_i_1 
       (.CI(\sum_reg[16]_i_1_n_0 ),
        .CO({\sum_reg[20]_i_1_n_0 ,\sum_reg[20]_i_1_n_1 ,\sum_reg[20]_i_1_n_2 ,\sum_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[23:20]),
        .O({\sum_reg[20]_i_1_n_4 ,\sum_reg[20]_i_1_n_5 ,\sum_reg[20]_i_1_n_6 ,\sum_reg[20]_i_1_n_7 }),
        .S({\sum[20]_i_2_n_0 ,\sum[20]_i_3_n_0 ,\sum[20]_i_4_n_0 ,\sum[20]_i_5_n_0 }));
  FDRE \sum_reg[21] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[20]_i_1_n_6 ),
        .Q(sum_reg[21]),
        .R(clear));
  FDRE \sum_reg[22] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[20]_i_1_n_5 ),
        .Q(sum_reg[22]),
        .R(clear));
  FDRE \sum_reg[23] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[20]_i_1_n_4 ),
        .Q(sum_reg[23]),
        .R(clear));
  FDRE \sum_reg[24] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[24]_i_1_n_7 ),
        .Q(sum_reg[24]),
        .R(clear));
  CARRY4 \sum_reg[24]_i_1 
       (.CI(\sum_reg[20]_i_1_n_0 ),
        .CO({\sum_reg[24]_i_1_n_0 ,\sum_reg[24]_i_1_n_1 ,\sum_reg[24]_i_1_n_2 ,\sum_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[27:24]),
        .O({\sum_reg[24]_i_1_n_4 ,\sum_reg[24]_i_1_n_5 ,\sum_reg[24]_i_1_n_6 ,\sum_reg[24]_i_1_n_7 }),
        .S({\sum[24]_i_2_n_0 ,\sum[24]_i_3_n_0 ,\sum[24]_i_4_n_0 ,\sum[24]_i_5_n_0 }));
  FDRE \sum_reg[25] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[24]_i_1_n_6 ),
        .Q(sum_reg[25]),
        .R(clear));
  FDRE \sum_reg[26] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[24]_i_1_n_5 ),
        .Q(sum_reg[26]),
        .R(clear));
  FDRE \sum_reg[27] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[24]_i_1_n_4 ),
        .Q(sum_reg[27]),
        .R(clear));
  FDRE \sum_reg[28] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[28]_i_1_n_7 ),
        .Q(sum_reg[28]),
        .R(clear));
  CARRY4 \sum_reg[28]_i_1 
       (.CI(\sum_reg[24]_i_1_n_0 ),
        .CO({\sum_reg[28]_i_1_n_0 ,\sum_reg[28]_i_1_n_1 ,\sum_reg[28]_i_1_n_2 ,\sum_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_P[29],mult_P[29],mult_P[29:28]}),
        .O({\sum_reg[28]_i_1_n_4 ,\sum_reg[28]_i_1_n_5 ,\sum_reg[28]_i_1_n_6 ,\sum_reg[28]_i_1_n_7 }),
        .S({\sum[28]_i_2_n_0 ,\sum[28]_i_3_n_0 ,\sum[28]_i_4_n_0 ,\sum[28]_i_5_n_0 }));
  FDRE \sum_reg[29] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[28]_i_1_n_6 ),
        .Q(sum_reg[29]),
        .R(clear));
  FDRE \sum_reg[2] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[0]_i_1_n_5 ),
        .Q(sum_reg[2]),
        .R(clear));
  FDRE \sum_reg[30] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[28]_i_1_n_5 ),
        .Q(sum_reg[30]),
        .R(clear));
  FDRE \sum_reg[31] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[28]_i_1_n_4 ),
        .Q(sum_reg[31]),
        .R(clear));
  FDRE \sum_reg[32] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[32]_i_1_n_7 ),
        .Q(sum_reg[32]),
        .R(clear));
  CARRY4 \sum_reg[32]_i_1 
       (.CI(\sum_reg[28]_i_1_n_0 ),
        .CO({\sum_reg[32]_i_1_n_0 ,\sum_reg[32]_i_1_n_1 ,\sum_reg[32]_i_1_n_2 ,\sum_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_P[29],mult_P[29],mult_P[29],mult_P[29]}),
        .O({\sum_reg[32]_i_1_n_4 ,\sum_reg[32]_i_1_n_5 ,\sum_reg[32]_i_1_n_6 ,\sum_reg[32]_i_1_n_7 }),
        .S({\sum[32]_i_2_n_0 ,\sum[32]_i_3_n_0 ,\sum[32]_i_4_n_0 ,\sum[32]_i_5_n_0 }));
  FDRE \sum_reg[33] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[32]_i_1_n_6 ),
        .Q(sum_reg[33]),
        .R(clear));
  FDRE \sum_reg[34] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[32]_i_1_n_5 ),
        .Q(sum_reg[34]),
        .R(clear));
  FDRE \sum_reg[35] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[32]_i_1_n_4 ),
        .Q(sum_reg[35]),
        .R(clear));
  FDRE \sum_reg[36] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[36]_i_1_n_7 ),
        .Q(sum_reg[36]),
        .R(clear));
  CARRY4 \sum_reg[36]_i_1 
       (.CI(\sum_reg[32]_i_1_n_0 ),
        .CO({\sum_reg[36]_i_1_n_0 ,\sum_reg[36]_i_1_n_1 ,\sum_reg[36]_i_1_n_2 ,\sum_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_P[29],mult_P[29],mult_P[29],mult_P[29]}),
        .O({\sum_reg[36]_i_1_n_4 ,\sum_reg[36]_i_1_n_5 ,\sum_reg[36]_i_1_n_6 ,\sum_reg[36]_i_1_n_7 }),
        .S({\sum[36]_i_2_n_0 ,\sum[36]_i_3_n_0 ,\sum[36]_i_4_n_0 ,\sum[36]_i_5_n_0 }));
  FDRE \sum_reg[37] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[36]_i_1_n_6 ),
        .Q(sum_reg[37]),
        .R(clear));
  FDRE \sum_reg[38] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[36]_i_1_n_5 ),
        .Q(sum_reg[38]),
        .R(clear));
  FDRE \sum_reg[39] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[36]_i_1_n_4 ),
        .Q(sum_reg[39]),
        .R(clear));
  FDRE \sum_reg[3] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[0]_i_1_n_4 ),
        .Q(sum_reg[3]),
        .R(clear));
  FDRE \sum_reg[40] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[40]_i_1_n_7 ),
        .Q(sum_reg[40]),
        .R(clear));
  CARRY4 \sum_reg[40]_i_1 
       (.CI(\sum_reg[36]_i_1_n_0 ),
        .CO(\NLW_sum_reg[40]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_reg[40]_i_1_O_UNCONNECTED [3:1],\sum_reg[40]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\sum[40]_i_2_n_0 }));
  FDRE \sum_reg[4] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[4]_i_1_n_7 ),
        .Q(sum_reg[4]),
        .R(clear));
  CARRY4 \sum_reg[4]_i_1 
       (.CI(\sum_reg[0]_i_1_n_0 ),
        .CO({\sum_reg[4]_i_1_n_0 ,\sum_reg[4]_i_1_n_1 ,\sum_reg[4]_i_1_n_2 ,\sum_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[7:4]),
        .O({\sum_reg[4]_i_1_n_4 ,\sum_reg[4]_i_1_n_5 ,\sum_reg[4]_i_1_n_6 ,\sum_reg[4]_i_1_n_7 }),
        .S({\sum[4]_i_2_n_0 ,\sum[4]_i_3_n_0 ,\sum[4]_i_4_n_0 ,\sum[4]_i_5_n_0 }));
  FDRE \sum_reg[5] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[4]_i_1_n_6 ),
        .Q(sum_reg[5]),
        .R(clear));
  FDRE \sum_reg[6] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[4]_i_1_n_5 ),
        .Q(sum_reg[6]),
        .R(clear));
  FDRE \sum_reg[7] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[4]_i_1_n_4 ),
        .Q(sum_reg[7]),
        .R(clear));
  FDRE \sum_reg[8] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[8]_i_1_n_7 ),
        .Q(sum_reg[8]),
        .R(clear));
  CARRY4 \sum_reg[8]_i_1 
       (.CI(\sum_reg[4]_i_1_n_0 ),
        .CO({\sum_reg[8]_i_1_n_0 ,\sum_reg[8]_i_1_n_1 ,\sum_reg[8]_i_1_n_2 ,\sum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mult_P[11:8]),
        .O({\sum_reg[8]_i_1_n_4 ,\sum_reg[8]_i_1_n_5 ,\sum_reg[8]_i_1_n_6 ,\sum_reg[8]_i_1_n_7 }),
        .S({\sum[8]_i_2_n_0 ,\sum[8]_i_3_n_0 ,\sum[8]_i_4_n_0 ,\sum[8]_i_5_n_0 }));
  FDRE \sum_reg[9] 
       (.C(sysClk_0),
        .CE(1'b1),
        .D(\sum_reg[8]_i_1_n_6 ),
        .Q(sum_reg[9]),
        .R(clear));
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
