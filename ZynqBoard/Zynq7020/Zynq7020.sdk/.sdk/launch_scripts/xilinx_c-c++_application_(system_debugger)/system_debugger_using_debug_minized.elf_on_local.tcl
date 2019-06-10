connect -url tcp:127.0.0.1:3121
source C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A"} -index 0
loadhw -hw C:/Git/DigitalViolin/ZynqBoard/Zynq7020/Zynq7020.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A"} -index 0
stop
ps7_init
ps7_post_config
configparams force-mem-access 0
bpadd -addr &main
