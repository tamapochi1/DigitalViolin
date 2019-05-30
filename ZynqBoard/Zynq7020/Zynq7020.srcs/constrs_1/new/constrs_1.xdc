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
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[0]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[1]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[2]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[3]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[4]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[5]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[6]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[7]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[8]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[9]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[10]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[11]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[12]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[13]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[14]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[15]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[16]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[17]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[18]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[19]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[20]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[21]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[22]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[23]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[24]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[25]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[26]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[27]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[28]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[29]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[30]} {design_1_i/DSP/FFTInputBitsConverter_0_bram_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 128 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/DSP/blk_mem_gen_0_doutb[0]} {design_1_i/DSP/blk_mem_gen_0_doutb[1]} {design_1_i/DSP/blk_mem_gen_0_doutb[2]} {design_1_i/DSP/blk_mem_gen_0_doutb[3]} {design_1_i/DSP/blk_mem_gen_0_doutb[4]} {design_1_i/DSP/blk_mem_gen_0_doutb[5]} {design_1_i/DSP/blk_mem_gen_0_doutb[6]} {design_1_i/DSP/blk_mem_gen_0_doutb[7]} {design_1_i/DSP/blk_mem_gen_0_doutb[8]} {design_1_i/DSP/blk_mem_gen_0_doutb[9]} {design_1_i/DSP/blk_mem_gen_0_doutb[10]} {design_1_i/DSP/blk_mem_gen_0_doutb[11]} {design_1_i/DSP/blk_mem_gen_0_doutb[12]} {design_1_i/DSP/blk_mem_gen_0_doutb[13]} {design_1_i/DSP/blk_mem_gen_0_doutb[14]} {design_1_i/DSP/blk_mem_gen_0_doutb[15]} {design_1_i/DSP/blk_mem_gen_0_doutb[16]} {design_1_i/DSP/blk_mem_gen_0_doutb[17]} {design_1_i/DSP/blk_mem_gen_0_doutb[18]} {design_1_i/DSP/blk_mem_gen_0_doutb[19]} {design_1_i/DSP/blk_mem_gen_0_doutb[20]} {design_1_i/DSP/blk_mem_gen_0_doutb[21]} {design_1_i/DSP/blk_mem_gen_0_doutb[22]} {design_1_i/DSP/blk_mem_gen_0_doutb[23]} {design_1_i/DSP/blk_mem_gen_0_doutb[24]} {design_1_i/DSP/blk_mem_gen_0_doutb[25]} {design_1_i/DSP/blk_mem_gen_0_doutb[26]} {design_1_i/DSP/blk_mem_gen_0_doutb[27]} {design_1_i/DSP/blk_mem_gen_0_doutb[28]} {design_1_i/DSP/blk_mem_gen_0_doutb[29]} {design_1_i/DSP/blk_mem_gen_0_doutb[30]} {design_1_i/DSP/blk_mem_gen_0_doutb[31]} {design_1_i/DSP/blk_mem_gen_0_doutb[32]} {design_1_i/DSP/blk_mem_gen_0_doutb[33]} {design_1_i/DSP/blk_mem_gen_0_doutb[34]} {design_1_i/DSP/blk_mem_gen_0_doutb[35]} {design_1_i/DSP/blk_mem_gen_0_doutb[36]} {design_1_i/DSP/blk_mem_gen_0_doutb[37]} {design_1_i/DSP/blk_mem_gen_0_doutb[38]} {design_1_i/DSP/blk_mem_gen_0_doutb[39]} {design_1_i/DSP/blk_mem_gen_0_doutb[40]} {design_1_i/DSP/blk_mem_gen_0_doutb[41]} {design_1_i/DSP/blk_mem_gen_0_doutb[42]} {design_1_i/DSP/blk_mem_gen_0_doutb[43]} {design_1_i/DSP/blk_mem_gen_0_doutb[44]} {design_1_i/DSP/blk_mem_gen_0_doutb[45]} {design_1_i/DSP/blk_mem_gen_0_doutb[46]} {design_1_i/DSP/blk_mem_gen_0_doutb[47]} {design_1_i/DSP/blk_mem_gen_0_doutb[48]} {design_1_i/DSP/blk_mem_gen_0_doutb[49]} {design_1_i/DSP/blk_mem_gen_0_doutb[50]} {design_1_i/DSP/blk_mem_gen_0_doutb[51]} {design_1_i/DSP/blk_mem_gen_0_doutb[52]} {design_1_i/DSP/blk_mem_gen_0_doutb[53]} {design_1_i/DSP/blk_mem_gen_0_doutb[54]} {design_1_i/DSP/blk_mem_gen_0_doutb[55]} {design_1_i/DSP/blk_mem_gen_0_doutb[56]} {design_1_i/DSP/blk_mem_gen_0_doutb[57]} {design_1_i/DSP/blk_mem_gen_0_doutb[58]} {design_1_i/DSP/blk_mem_gen_0_doutb[59]} {design_1_i/DSP/blk_mem_gen_0_doutb[60]} {design_1_i/DSP/blk_mem_gen_0_doutb[61]} {design_1_i/DSP/blk_mem_gen_0_doutb[62]} {design_1_i/DSP/blk_mem_gen_0_doutb[63]} {design_1_i/DSP/blk_mem_gen_0_doutb[64]} {design_1_i/DSP/blk_mem_gen_0_doutb[65]} {design_1_i/DSP/blk_mem_gen_0_doutb[66]} {design_1_i/DSP/blk_mem_gen_0_doutb[67]} {design_1_i/DSP/blk_mem_gen_0_doutb[68]} {design_1_i/DSP/blk_mem_gen_0_doutb[69]} {design_1_i/DSP/blk_mem_gen_0_doutb[70]} {design_1_i/DSP/blk_mem_gen_0_doutb[71]} {design_1_i/DSP/blk_mem_gen_0_doutb[72]} {design_1_i/DSP/blk_mem_gen_0_doutb[73]} {design_1_i/DSP/blk_mem_gen_0_doutb[74]} {design_1_i/DSP/blk_mem_gen_0_doutb[75]} {design_1_i/DSP/blk_mem_gen_0_doutb[76]} {design_1_i/DSP/blk_mem_gen_0_doutb[77]} {design_1_i/DSP/blk_mem_gen_0_doutb[78]} {design_1_i/DSP/blk_mem_gen_0_doutb[79]} {design_1_i/DSP/blk_mem_gen_0_doutb[80]} {design_1_i/DSP/blk_mem_gen_0_doutb[81]} {design_1_i/DSP/blk_mem_gen_0_doutb[82]} {design_1_i/DSP/blk_mem_gen_0_doutb[83]} {design_1_i/DSP/blk_mem_gen_0_doutb[84]} {design_1_i/DSP/blk_mem_gen_0_doutb[85]} {design_1_i/DSP/blk_mem_gen_0_doutb[86]} {design_1_i/DSP/blk_mem_gen_0_doutb[87]} {design_1_i/DSP/blk_mem_gen_0_doutb[88]} {design_1_i/DSP/blk_mem_gen_0_doutb[89]} {design_1_i/DSP/blk_mem_gen_0_doutb[90]} {design_1_i/DSP/blk_mem_gen_0_doutb[91]} {design_1_i/DSP/blk_mem_gen_0_doutb[92]} {design_1_i/DSP/blk_mem_gen_0_doutb[93]} {design_1_i/DSP/blk_mem_gen_0_doutb[94]} {design_1_i/DSP/blk_mem_gen_0_doutb[95]} {design_1_i/DSP/blk_mem_gen_0_doutb[96]} {design_1_i/DSP/blk_mem_gen_0_doutb[97]} {design_1_i/DSP/blk_mem_gen_0_doutb[98]} {design_1_i/DSP/blk_mem_gen_0_doutb[99]} {design_1_i/DSP/blk_mem_gen_0_doutb[100]} {design_1_i/DSP/blk_mem_gen_0_doutb[101]} {design_1_i/DSP/blk_mem_gen_0_doutb[102]} {design_1_i/DSP/blk_mem_gen_0_doutb[103]} {design_1_i/DSP/blk_mem_gen_0_doutb[104]} {design_1_i/DSP/blk_mem_gen_0_doutb[105]} {design_1_i/DSP/blk_mem_gen_0_doutb[106]} {design_1_i/DSP/blk_mem_gen_0_doutb[107]} {design_1_i/DSP/blk_mem_gen_0_doutb[108]} {design_1_i/DSP/blk_mem_gen_0_doutb[109]} {design_1_i/DSP/blk_mem_gen_0_doutb[110]} {design_1_i/DSP/blk_mem_gen_0_doutb[111]} {design_1_i/DSP/blk_mem_gen_0_doutb[112]} {design_1_i/DSP/blk_mem_gen_0_doutb[113]} {design_1_i/DSP/blk_mem_gen_0_doutb[114]} {design_1_i/DSP/blk_mem_gen_0_doutb[115]} {design_1_i/DSP/blk_mem_gen_0_doutb[116]} {design_1_i/DSP/blk_mem_gen_0_doutb[117]} {design_1_i/DSP/blk_mem_gen_0_doutb[118]} {design_1_i/DSP/blk_mem_gen_0_doutb[119]} {design_1_i/DSP/blk_mem_gen_0_doutb[120]} {design_1_i/DSP/blk_mem_gen_0_doutb[121]} {design_1_i/DSP/blk_mem_gen_0_doutb[122]} {design_1_i/DSP/blk_mem_gen_0_doutb[123]} {design_1_i/DSP/blk_mem_gen_0_doutb[124]} {design_1_i/DSP/blk_mem_gen_0_doutb[125]} {design_1_i/DSP/blk_mem_gen_0_doutb[126]} {design_1_i/DSP/blk_mem_gen_0_doutb[127]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
