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
























connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/DSP/Synthesizer/mult_sum_0_out[0]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[1]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[2]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[3]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[4]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[5]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[6]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[7]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[8]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[9]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[10]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[11]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[12]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[13]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[14]} {design_1_i/DSP/Synthesizer/mult_sum_0_out[15]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/DSP/Synthesizer/mult_gen_0_P[0]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[1]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[2]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[3]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[4]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[5]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[6]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[7]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[8]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[9]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[10]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[11]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[12]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[13]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[14]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[15]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[16]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[17]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[18]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[19]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[20]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[21]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[22]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[23]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[24]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[25]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[26]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[27]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[28]} {design_1_i/DSP/Synthesizer/mult_gen_0_P[29]}]]
connect_debug_port u_ila_0/probe10 [get_nets [list design_1_i/DSP/Synthesizer/sync]]

