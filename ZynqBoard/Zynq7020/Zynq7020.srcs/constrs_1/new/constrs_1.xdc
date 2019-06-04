set_property PACKAGE_PIN H18 [get_ports {RGB_OUT_0[2]}]
set_property PACKAGE_PIN H19 [get_ports {RGB_OUT_0[1]}]
set_property PACKAGE_PIN H17 [get_ports {RGB_OUT_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {RGB_OUT_0[0]}]
set_property SLEW SLOW [get_ports {RGB_OUT_0[2]}]
set_property DRIVE 12 [get_ports {RGB_OUT_0[2]}]

set_property PACKAGE_PIN A21 [get_ports UART_1_rxd]
set_property PACKAGE_PIN A22 [get_ports UART_1_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_1_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_1_txd]

set_property PACKAGE_PIN G19 [get_ports USB_nRESET_0]
set_property IOSTANDARD LVCMOS33 [get_ports USB_nRESET_0]
set_property SLEW SLOW [get_ports USB_nRESET_0]

create_interface DAC
set_property INTERFACE DAC [get_ports { DAC_MCLK_0 DAC_LRCK_0 DAC_SDT_0 DAC_BICK_0 }]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_LRCK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_MCLK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_SDT_0]
set_property PULLDOWN true [get_ports DAC_LRCK_0]
set_property PULLDOWN true [get_ports DAC_MCLK_0]
set_property PULLDOWN true [get_ports DAC_SDT_0]
set_property PACKAGE_PIN A19 [get_ports DAC_LRCK_0]
set_property PACKAGE_PIN D18 [get_ports DAC_MCLK_0]
set_property PACKAGE_PIN A18 [get_ports DAC_SDT_0]
set_property SLEW SLOW [get_ports DAC_MCLK_0]


set_property PACKAGE_PIN C19 [get_ports DAC_BICK_0]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_BICK_0]
set_property PULLDOWN true [get_ports DAC_BICK_0]



set_false_path -to [get_cells {design_1_i/DSP/DSP_reset_0/inst/nResetAudio256ClkBuf_reg[1]}]
set_false_path -to [get_cells {design_1_i/DSP/audio_clk_gen_0/inst/audioClkSyncBuf_reg[0]}]
set_false_path -to [get_cells {design_1_i/DSP/DSP_registers_0/inst/audioSampleSync_reg[0]}]
set_false_path -to [get_cells {design_1_i/DSP/DSP_registers_0/inst/slv_reg0_reg[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Slave_1_s_txd]
set_property PACKAGE_PIN T22 [get_ports UIF_Slave_1_s_sck]
set_property PACKAGE_PIN U22 [get_ports UIF_Slave_1_s_txd]


set_property IOSTANDARD LVCMOS33 [get_ports UIF_Res_1]
set_property PACKAGE_PIN W21 [get_ports UIF_Res_1]
set_property DRIVE 12 [get_ports UIF_Res_1]

set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_sck]
set_property IOSTANDARD LVCMOS33 [get_ports UIF_Master_1_h_txd]
set_property PACKAGE_PIN U21 [get_ports UIF_Master_1_h_sck]
set_property PACKAGE_PIN W22 [get_ports UIF_Master_1_h_txd]
set_property PACKAGE_PIN V22 [get_ports UIF_Master_1_h_rxd]
set_property PACKAGE_PIN T21 [get_ports SPI_Master_CSn_1]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_Master_CSn_1]


set_property PACKAGE_PIN Y18 [get_ports UIF_Slave_1_s_rxd]








create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[0]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[1]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[2]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[3]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[4]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[5]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[6]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[7]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[8]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[9]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[10]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[11]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[12]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[13]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[14]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[15]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[16]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[17]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[18]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[19]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[20]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[21]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[22]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[23]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[24]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[25]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[26]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[27]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[28]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[29]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[30]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 128 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[0]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[1]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[2]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[3]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[4]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[5]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[6]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[7]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[8]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[9]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[10]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[11]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[12]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[13]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[14]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[15]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[16]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[17]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[18]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[19]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[20]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[21]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[22]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[23]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[24]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[25]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[26]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[27]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[28]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[29]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[30]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[31]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[32]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[33]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[34]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[35]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[36]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[37]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[38]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[39]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[40]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[41]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[42]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[43]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[44]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[45]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[46]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[47]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[48]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[49]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[50]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[51]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[52]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[53]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[54]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[55]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[56]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[57]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[58]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[59]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[60]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[61]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[62]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[63]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[64]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[65]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[66]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[67]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[68]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[69]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[70]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[71]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[72]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[73]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[74]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[75]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[76]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[77]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[78]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[79]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[80]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[81]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[82]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[83]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[84]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[85]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[86]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[87]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[88]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[89]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[90]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[91]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[92]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[93]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[94]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[95]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[96]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[97]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[98]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[99]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[100]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[101]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[102]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[103]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[104]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[105]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[106]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[107]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[108]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[109]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[110]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[111]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[112]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[113]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[114]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[115]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[116]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[117]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[118]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[119]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[120]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[121]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[122]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[123]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[124]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[125]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[126]} {design_1_i/DSP/FFTOutputBitsConvert_0_bram_wddata[127]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[0]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[1]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[2]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[3]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[4]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[5]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[6]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[7]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[8]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[9]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[10]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[11]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[12]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[13]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[14]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[15]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[16]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[17]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[18]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[19]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[20]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[21]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[22]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[23]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[24]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[25]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[26]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[27]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[28]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[29]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[30]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DIN[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_WE[0]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_WE[1]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_WE[2]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_WE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[0]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[1]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[2]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[3]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[4]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[5]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[6]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[7]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[8]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[9]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[10]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[11]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[12]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[13]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[14]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[15]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[16]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[17]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[18]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[19]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[20]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[21]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[22]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[23]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[24]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[25]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[26]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[27]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[28]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[29]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[30]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_DOUT[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 14 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[0]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[1]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[2]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[3]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[4]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[5]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[6]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[7]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[8]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[9]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[10]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[11]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[12]} {design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_ADDR[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_EN]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/DSP/axi_bram_ctrl_result_BRAM_PORTA_RST]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
