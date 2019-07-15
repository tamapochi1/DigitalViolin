
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[0]}]

set_false_path -to [get_cells {design_1_i/DSP/DSP_registers_0/inst/audioSampleSync_reg[0]}]
set_false_path -to [get_cells {design_1_i/DSP/DSP_registers_0/inst/slv_reg0_reg[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_txd]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_Master_CSn_1]

set_property PACKAGE_PIN N11 [get_ports {RGB_OUT_0[0]}]
set_property PACKAGE_PIN N12 [get_ports {RGB_OUT_0[1]}]
set_property PACKAGE_PIN F12 [get_ports {RGB_OUT_0[2]}]
set_property PACKAGE_PIN M9 [get_ports SPI_Master_CSn_1]
set_property PACKAGE_PIN N9 [get_ports UIF_Master_1_h_sck]
set_property PACKAGE_PIN M10 [get_ports UIF_Master_1_h_txd]
set_property PACKAGE_PIN M11 [get_ports UIF_Master_1_h_rxd]



set_property PACKAGE_PIN R8 [get_ports SPI_Master_CSn_2]
set_property PACKAGE_PIN N7 [get_ports SPI_Master_CSn_3]
set_property PACKAGE_PIN P8 [get_ports UIF_Master_2_h_sck]
set_property PACKAGE_PIN P9 [get_ports UIF_Master_2_h_txd]
set_property PACKAGE_PIN R7 [get_ports UIF_Master_2_h_rxd]
set_property PACKAGE_PIN R10 [get_ports UIF_Master_3_h_sck]
set_property PACKAGE_PIN P10 [get_ports UIF_Master_3_h_txd]
set_property PACKAGE_PIN N8 [get_ports UIF_Master_3_h_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_2_h_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_2_h_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_2_h_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_3_h_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_3_h_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_3_h_txd]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_Master_CSn_2]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_Master_CSn_3]







create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 12 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[0]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[1]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[2]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[3]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[4]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[5]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[6]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[7]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[8]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[9]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[10]} {design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TDATA[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 12 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[0]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[1]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[2]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[3]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[4]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[5]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[6]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[7]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[8]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[9]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[10]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[11]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/DSP/FFTInputBitsConverter_0_m_axis_data_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/DSP/FFTOutputBitsConvert_0_bram_we]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
