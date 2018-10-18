set_property PACKAGE_PIN H18 [get_ports {RGB_OUT_0[2]}]
set_property PACKAGE_PIN H19 [get_ports {RGB_OUT_0[1]}]
set_property PACKAGE_PIN H17 [get_ports {RGB_OUT_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[0]}]
set_property SLEW SLOW [get_ports {RGB_OUT_0[2]}]
set_property DRIVE 12 [get_ports {RGB_OUT_0[2]}]

set_property PACKAGE_PIN A21 [get_ports UART_0_0_rxd]
set_property PACKAGE_PIN A22 [get_ports UART_0_0_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_0_0_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_0_0_txd]

set_property PACKAGE_PIN A21 [get_ports UART_1_rxd]
set_property PACKAGE_PIN A22 [get_ports UART_1_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_1_txd]

set_property PACKAGE_PIN G19 [get_ports USB_nRESET_0]
set_property IOSTANDARD LVCMOS33 [get_ports USB_nRESET_0]
set_property SLEW SLOW [get_ports USB_nRESET_0]

create_interface DAC
set_property INTERFACE DAC [get_ports { DAC_MCLK_0 DAC_LRCK_0 DAC_SDT_0 DAC_BICK_0 }]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_BCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_LRCK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_MCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_SDT_0]
set_property PULLDOWN true [get_ports DAC_BCLK_0]
set_property PULLDOWN true [get_ports DAC_LRCK_0]
set_property PULLDOWN true [get_ports DAC_MCLK_0]
set_property PULLDOWN true [get_ports DAC_SDT_0]
set_property PACKAGE_PIN C19 [get_ports DAC_BCLK_0]
set_property PACKAGE_PIN A19 [get_ports DAC_LRCK_0]
set_property PACKAGE_PIN D18 [get_ports DAC_MCLK_0]
set_property PACKAGE_PIN A18 [get_ports DAC_SDT_0]
set_property SLEW SLOW [get_ports DAC_MCLK_0]


set_property PACKAGE_PIN C19 [get_ports DAC_BICK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_BICK_0]
set_property PULLDOWN true [get_ports DAC_BICK_0]



set_false_path -to [get_cells {design_1_i/DSP/DSP_reset_0/inst/nResetAudio256ClkBuf_reg[1]}]

set_false_path -to [get_cells {design_1_i/DSP/audio_clk_gen_0/inst/audioClkSyncBuf_reg[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_txd]
set_property PACKAGE_PIN T21 [get_ports UIF_Slave_1_s_rxd]
set_property PACKAGE_PIN T22 [get_ports UIF_Slave_1_s_sck]
set_property PACKAGE_PIN U22 [get_ports UIF_Slave_1_s_txd]


set_property IOSTANDARD LVCMOS33 [get_ports UIF_Res_1]
set_property PACKAGE_PIN W21 [get_ports UIF_Res_1]
set_property DRIVE 12 [get_ports UIF_Res_1]

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
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/fifo_generator_1_M_AXIS_TDATA[0]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[1]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[2]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[3]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[4]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[5]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[6]} {design_1_i/fifo_generator_1_M_AXIS_TDATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[0]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[1]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[2]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[3]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[4]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[5]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[6]} {design_1_i/UIF_SerialSlave_0_m_axis_st_TDATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/fifo_generator_1_M_AXIS_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/fifo_generator_1_M_AXIS_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/UIF_SerialSlave_0_m_axis_st_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/UIF_SerialSlave_0_m_axis_st_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/UIF_SerialSlave_0_UIF_Slave_S_RXD]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/UIF_SerialSlave_0_UIF_Slave_S_SCK]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/UIF_SerialSlave_0_UIF_Slave_S_TXD]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
