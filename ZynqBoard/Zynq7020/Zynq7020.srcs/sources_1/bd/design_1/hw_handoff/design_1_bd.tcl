
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# DAC_FIFO, DAC_IF, DSP_registers, DSP_reset, FFTInputBitsConverter, FFTOutputBitsConverter, audio_clk_gen, UIF_AXI, UIF_SerialMasterController, UIF_SerialSlave, UIF_SerialSlave, delay, mult_sum, phase_gen_256, DSP_reg_read

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: SynthesizerReg
proc create_hier_cell_SynthesizerReg { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_SynthesizerReg() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:bram_rtl:1.0 BRAM_PORTA
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_delta
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_gain

  # Create pins
  create_bd_pin -dir I -from 10 -to 0 index
  create_bd_pin -dir I index_valid
  create_bd_pin -dir I nReset
  create_bd_pin -dir I -type clk sysClk

  # Create instance: DSP_reg_read_0, and set properties
  set block_name DSP_reg_read
  set block_cell_name DSP_reg_read_0
  if { [catch {set DSP_reg_read_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DSP_reg_read_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {WRITE_FIRST} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Create instance: mult_gen_1, and set properties
  set mult_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_1 ]
  set_property -dict [ list \
   CONFIG.MultType {Parallel_Multiplier} \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OptGoal {Speed} \
   CONFIG.OutputWidthHigh {35} \
   CONFIG.PipeStages {4} \
   CONFIG.PortAType {Unsigned} \
   CONFIG.PortBType {Unsigned} \
 ] $mult_gen_1

  # Create interface connections
  connect_bd_intf_net -intf_net DSP_reg_read_0_m_axis_delta [get_bd_intf_pins m_axis_delta] [get_bd_intf_pins DSP_reg_read_0/m_axis_delta]
  connect_bd_intf_net -intf_net DSP_reg_read_0_m_axis_gain [get_bd_intf_pins m_axis_gain] [get_bd_intf_pins DSP_reg_read_0/m_axis_gain]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]

  # Create port connections
  connect_bd_net -net DSP_reg_read_0_const [get_bd_pins DSP_reg_read_0/const] [get_bd_pins mult_gen_1/B]
  connect_bd_net -net DSP_reg_read_0_freq [get_bd_pins DSP_reg_read_0/freq] [get_bd_pins mult_gen_1/A]
  connect_bd_net -net DSP_register_0_sysNReset [get_bd_pins nReset] [get_bd_pins DSP_reg_read_0/nReset]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins DSP_reg_read_0/m_bram_rddata] [get_bd_pins blk_mem_gen_0/doutb]
  connect_bd_net -net mult_gen_1_P [get_bd_pins DSP_reg_read_0/freqXconst] [get_bd_pins mult_gen_1/P]
  connect_bd_net -net phase_gen_256_0_bram_en [get_bd_pins DSP_reg_read_0/m_bram_en] [get_bd_pins blk_mem_gen_0/enb]
  connect_bd_net -net phase_gen_256_0_bram_rst [get_bd_pins DSP_reg_read_0/m_bram_rst] [get_bd_pins blk_mem_gen_0/rstb]
  connect_bd_net -net phase_gen_256_0_m_bram_we [get_bd_pins DSP_reg_read_0/m_bram_we] [get_bd_pins blk_mem_gen_0/web]
  connect_bd_net -net phase_gen_256_0_reg_index [get_bd_pins index] [get_bd_pins DSP_reg_read_0/index]
  connect_bd_net -net phase_gen_256_0_reg_index_valid [get_bd_pins index_valid] [get_bd_pins DSP_reg_read_0/index_valid]
  connect_bd_net -net phase_gen_256_0_s_bram_addr [get_bd_pins DSP_reg_read_0/m_bram_addr] [get_bd_pins blk_mem_gen_0/addrb]
  connect_bd_net -net phase_gen_256_0_s_bram_clk [get_bd_pins DSP_reg_read_0/m_bram_clk] [get_bd_pins blk_mem_gen_0/clkb]
  connect_bd_net -net sysClk_0_1 [get_bd_pins sysClk] [get_bd_pins DSP_reg_read_0/aclk] [get_bd_pins mult_gen_1/CLK]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Oscillator
proc create_hier_cell_Oscillator { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Oscillator() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_phase
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_delta

  # Create pins
  create_bd_pin -dir I audioClkSync
  create_bd_pin -dir I nReset
  create_bd_pin -dir O -from 10 -to 0 reg_index
  create_bd_pin -dir O reg_index_valid
  create_bd_pin -dir O sync
  create_bd_pin -dir I sysClk

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {9} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {24} \
   CONFIG.Read_Width_B {24} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Reset_Priority_B {SR} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.Write_Width_A {24} \
   CONFIG.Write_Width_B {24} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: phase_gen_256_0, and set properties
  set block_name phase_gen_256
  set block_cell_name phase_gen_256_0
  if { [catch {set phase_gen_256_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $phase_gen_256_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net DSP_reg_read_0_m_axis_delta [get_bd_intf_pins s_axis_delta] [get_bd_intf_pins phase_gen_256_0/s_axis_delta]
  connect_bd_intf_net -intf_net phase_gen_256_0_m_axis_phase [get_bd_intf_pins m_axis_phase] [get_bd_intf_pins phase_gen_256_0/m_axis_phase]

  # Create port connections
  connect_bd_net -net DSP_register_0_sysNReset [get_bd_pins nReset] [get_bd_pins phase_gen_256_0/nReset]
  connect_bd_net -net audio_clk_gen_0_audioClk [get_bd_pins audioClkSync] [get_bd_pins phase_gen_256_0/audioClkSync]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/doutb] [get_bd_pins phase_gen_256_0/m_bram_int_rddata]
  connect_bd_net -net phase_gen_256_0_m_bram_int_clk [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_1/clkb] [get_bd_pins phase_gen_256_0/m_bram_int_clk]
  connect_bd_net -net phase_gen_256_0_m_bram_int_rdaddr [get_bd_pins blk_mem_gen_1/addrb] [get_bd_pins phase_gen_256_0/m_bram_int_rdaddr]
  connect_bd_net -net phase_gen_256_0_m_bram_int_rst [get_bd_pins blk_mem_gen_1/rstb] [get_bd_pins phase_gen_256_0/m_bram_int_rst]
  connect_bd_net -net phase_gen_256_0_m_bram_int_we [get_bd_pins blk_mem_gen_1/wea] [get_bd_pins phase_gen_256_0/m_bram_int_we]
  connect_bd_net -net phase_gen_256_0_m_bram_int_wraddr [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins phase_gen_256_0/m_bram_int_wraddr]
  connect_bd_net -net phase_gen_256_0_m_bram_int_wrdata [get_bd_pins blk_mem_gen_1/dina] [get_bd_pins phase_gen_256_0/m_bram_int_wrdata]
  connect_bd_net -net phase_gen_256_0_reg_index [get_bd_pins reg_index] [get_bd_pins phase_gen_256_0/reg_index]
  connect_bd_net -net phase_gen_256_0_reg_index_valid [get_bd_pins reg_index_valid] [get_bd_pins phase_gen_256_0/reg_index_valid]
  connect_bd_net -net phase_gen_256_0_sync [get_bd_pins sync] [get_bd_pins phase_gen_256_0/sync]
  connect_bd_net -net sysClk_0_1 [get_bd_pins sysClk] [get_bd_pins phase_gen_256_0/sysClk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: GainAndSum
proc create_hier_cell_GainAndSum { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_GainAndSum() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_gain
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_sin

  # Create pins
  create_bd_pin -dir I clear
  create_bd_pin -dir I nReset
  create_bd_pin -dir O -from 15 -to 0 outData
  create_bd_pin -dir O outDataValid
  create_bd_pin -dir I -from 7 -to 0 outGain
  create_bd_pin -dir I -type clk sysClk

  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.Multiplier_Construction {Use_Mults} \
   CONFIG.OutputWidthHigh {29} \
   CONFIG.PipeStages {3} \
   CONFIG.PortAWidth {16} \
   CONFIG.PortBType {Unsigned} \
   CONFIG.PortBWidth {14} \
 ] $mult_gen_0

  # Create instance: mult_sum_0, and set properties
  set block_name mult_sum
  set block_cell_name mult_sum_0
  if { [catch {set mult_sum_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mult_sum_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CLEAR_DELAY {29} \
 ] $mult_sum_0

  # Create interface connections
  connect_bd_intf_net -intf_net cordic_0_M_AXIS_DOUT [get_bd_intf_pins s_axis_sin] [get_bd_intf_pins mult_sum_0/s_axis_sin]
  connect_bd_intf_net -intf_net delay_0_m_axis_out [get_bd_intf_pins s_axis_gain] [get_bd_intf_pins mult_sum_0/s_axis_gain]

  # Create port connections
  connect_bd_net -net DSP_register_0_sysNReset [get_bd_pins nReset] [get_bd_pins mult_sum_0/nReset]
  connect_bd_net -net mult_gen_0_P [get_bd_pins mult_gen_0/P] [get_bd_pins mult_sum_0/mult_P]
  connect_bd_net -net mult_sum_0_mult_A [get_bd_pins mult_gen_0/A] [get_bd_pins mult_sum_0/mult_A]
  connect_bd_net -net mult_sum_0_mult_B [get_bd_pins mult_gen_0/B] [get_bd_pins mult_sum_0/mult_B]
  connect_bd_net -net mult_sum_0_out [get_bd_pins outData] [get_bd_pins mult_sum_0/outData]
  connect_bd_net -net mult_sum_0_sync [get_bd_pins outDataValid] [get_bd_pins mult_sum_0/sync]
  connect_bd_net -net outGain_0_1 [get_bd_pins outGain] [get_bd_pins mult_sum_0/outGain]
  connect_bd_net -net phase_gen_256_0_sync [get_bd_pins clear] [get_bd_pins mult_sum_0/clear]
  connect_bd_net -net sysClk_0_1 [get_bd_pins sysClk] [get_bd_pins mult_gen_0/CLK] [get_bd_pins mult_sum_0/sysClk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Synthesizer
proc create_hier_cell_Synthesizer { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_Synthesizer() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I audioClkSync
  create_bd_pin -dir I nReset
  create_bd_pin -dir O -from 15 -to 0 outData
  create_bd_pin -dir O outDataValid
  create_bd_pin -dir I -from 7 -to 0 outGain
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn
  create_bd_pin -dir I -type clk sysClk

  # Create instance: GainAndSum
  create_hier_cell_GainAndSum $hier_obj GainAndSum

  # Create instance: Oscillator
  create_hier_cell_Oscillator $hier_obj Oscillator

  # Create instance: SynthesizerReg
  create_hier_cell_SynthesizerReg $hier_obj SynthesizerReg

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.ECC_TYPE {Hamming} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: cordic_0, and set properties
  set cordic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_0 ]
  set_property -dict [ list \
   CONFIG.Coarse_Rotation {true} \
   CONFIG.Compensation_Scaling {No_Scale_Compensation} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Sin_and_Cos} \
   CONFIG.Phase_Format {Scaled_Radians} \
   CONFIG.Pipelining_Mode {Optimal} \
 ] $cordic_0

  # Create instance: delay_0, and set properties
  set block_name delay
  set block_cell_name delay_0
  if { [catch {set delay_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $delay_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.DELAY {25} \
   CONFIG.WIDTH {14} \
 ] $delay_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net DSP_reg_read_0_m_axis_delta [get_bd_intf_pins Oscillator/s_axis_delta] [get_bd_intf_pins SynthesizerReg/m_axis_delta]
  connect_bd_intf_net -intf_net DSP_reg_read_0_m_axis_gain [get_bd_intf_pins SynthesizerReg/m_axis_gain] [get_bd_intf_pins delay_0/s_axis_in]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins SynthesizerReg/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net cordic_0_M_AXIS_DOUT [get_bd_intf_pins GainAndSum/s_axis_sin] [get_bd_intf_pins cordic_0/M_AXIS_DOUT]
  connect_bd_intf_net -intf_net delay_0_m_axis_out [get_bd_intf_pins GainAndSum/s_axis_gain] [get_bd_intf_pins delay_0/m_axis_out]
  connect_bd_intf_net -intf_net phase_gen_256_0_m_axis_phase [get_bd_intf_pins Oscillator/m_axis_phase] [get_bd_intf_pins cordic_0/S_AXIS_PHASE]

  # Create port connections
  connect_bd_net -net DSP_register_0_sysNReset [get_bd_pins nReset] [get_bd_pins GainAndSum/nReset] [get_bd_pins Oscillator/nReset] [get_bd_pins SynthesizerReg/nReset] [get_bd_pins delay_0/nReset]
  connect_bd_net -net GainAndSum_sync_0 [get_bd_pins outDataValid] [get_bd_pins GainAndSum/outDataValid]
  connect_bd_net -net audio_clk_gen_0_audioClk [get_bd_pins audioClkSync] [get_bd_pins Oscillator/audioClkSync]
  connect_bd_net -net mult_sum_0_out [get_bd_pins outData] [get_bd_pins GainAndSum/outData]
  connect_bd_net -net outGain_0_1 [get_bd_pins outGain] [get_bd_pins GainAndSum/outGain]
  connect_bd_net -net phase_gen_256_0_reg_index [get_bd_pins Oscillator/reg_index] [get_bd_pins SynthesizerReg/index]
  connect_bd_net -net phase_gen_256_0_reg_index_valid [get_bd_pins Oscillator/reg_index_valid] [get_bd_pins SynthesizerReg/index_valid]
  connect_bd_net -net phase_gen_256_0_sync [get_bd_pins GainAndSum/clear] [get_bd_pins Oscillator/sync]
  connect_bd_net -net s_axi_aclk_0_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]
  connect_bd_net -net sysClk_0_1 [get_bd_pins sysClk] [get_bd_pins GainAndSum/sysClk] [get_bd_pins Oscillator/sysClk] [get_bd_pins SynthesizerReg/sysClk] [get_bd_pins cordic_0/aclk] [get_bd_pins delay_0/aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: UIF
proc create_hier_cell_UIF { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_UIF() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI
  create_bd_intf_pin -mode Master -vlnv tamapochi1:user:UIF_Master_rtl:1.0 UIF_Master_1
  create_bd_intf_pin -mode Master -vlnv tamapochi1:user:UIF_Slave_rtl:1.0 UIF_Slave_1

  # Create pins
  create_bd_pin -dir O SPI_Master_CSn_1
  create_bd_pin -dir I -type rst S_AXI_ARESETN
  create_bd_pin -dir O UIF_Res_1
  create_bd_pin -dir I -type clk s_aclk

  # Create instance: UIF_AXI_0, and set properties
  set block_name UIF_AXI
  set block_cell_name UIF_AXI_0
  if { [catch {set UIF_AXI_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UIF_AXI_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UIF_SerialMasterCont_0, and set properties
  set block_name UIF_SerialMasterController
  set block_cell_name UIF_SerialMasterCont_0
  if { [catch {set UIF_SerialMasterCont_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UIF_SerialMasterCont_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.preScale {32} \
 ] $UIF_SerialMasterCont_0

  # Create instance: UIF_SerialSlave_0, and set properties
  set block_name UIF_SerialSlave
  set block_cell_name UIF_SerialSlave_0
  if { [catch {set UIF_SerialSlave_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UIF_SerialSlave_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UIF_SerialSlave_1, and set properties
  set block_name UIF_SerialSlave
  set block_cell_name UIF_SerialSlave_1
  if { [catch {set UIF_SerialSlave_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $UIF_SerialSlave_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {2046} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {false} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {2047} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_TKEEP {false} \
   CONFIG.HAS_TSTRB {false} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {2048} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {2046} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {false} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {2047} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_TKEEP {false} \
   CONFIG.HAS_TSTRB {false} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {2048} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_1

  # Create instance: fifo_generator_2, and set properties
  set fifo_generator_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_2 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {2046} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {false} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {2047} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_TKEEP {false} \
   CONFIG.HAS_TSTRB {false} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {2048} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_2

  # Create instance: fifo_generator_3, and set properties
  set fifo_generator_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_3 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {2046} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {true} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {false} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {2047} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.HAS_TKEEP {false} \
   CONFIG.HAS_TSTRB {false} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {2048} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_3

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins UIF_Master_1] [get_bd_intf_pins UIF_SerialMasterCont_0/UIF_Master]
  connect_bd_intf_net -intf_net UIF_AXI_0_m_axis_ht [get_bd_intf_pins UIF_AXI_0/m_axis_ht] [get_bd_intf_pins fifo_generator_2/S_AXIS]
  connect_bd_intf_net -intf_net UIF_AXI_0_m_axis_sr [get_bd_intf_pins UIF_AXI_0/m_axis_sr] [get_bd_intf_pins fifo_generator_0/S_AXIS]
  connect_bd_intf_net -intf_net UIF_SerialSlave_0_UIF_Slave [get_bd_intf_pins UIF_Slave_1] [get_bd_intf_pins UIF_SerialSlave_0/UIF_Slave]
  connect_bd_intf_net -intf_net UIF_SerialSlave_0_m_axis_st [get_bd_intf_pins UIF_SerialSlave_0/m_axis_st] [get_bd_intf_pins fifo_generator_1/S_AXIS]
  connect_bd_intf_net -intf_net UIF_SerialSlave_1_UIF_Slave [get_bd_intf_pins UIF_SerialMasterCont_0/internal] [get_bd_intf_pins UIF_SerialSlave_1/UIF_Slave]
  connect_bd_intf_net -intf_net UIF_SerialSlave_1_m_axis_st [get_bd_intf_pins UIF_SerialSlave_1/m_axis_st] [get_bd_intf_pins fifo_generator_3/S_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXIS [get_bd_intf_pins UIF_SerialSlave_0/s_axis_sr] [get_bd_intf_pins fifo_generator_0/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_1_M_AXIS [get_bd_intf_pins UIF_AXI_0/s_axis_st] [get_bd_intf_pins fifo_generator_1/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_2_M_AXIS [get_bd_intf_pins UIF_SerialSlave_1/s_axis_sr] [get_bd_intf_pins fifo_generator_2/M_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_3_M_AXIS [get_bd_intf_pins UIF_AXI_0/s_axis_hr] [get_bd_intf_pins fifo_generator_3/M_AXIS]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins S_AXI] [get_bd_intf_pins UIF_AXI_0/S_AXI]

  # Create port connections
  connect_bd_net -net UIF_AXI_0_UIF_res [get_bd_pins UIF_Res_1] [get_bd_pins UIF_AXI_0/UIF_res]
  connect_bd_net -net UIF_AXI_0_hostStart [get_bd_pins UIF_AXI_0/hostStart] [get_bd_pins UIF_SerialMasterCont_0/start]
  connect_bd_net -net UIF_AXI_0_sys_nReset [get_bd_pins UIF_AXI_0/sys_nReset] [get_bd_pins UIF_SerialMasterCont_0/nReset] [get_bd_pins UIF_SerialSlave_0/nReset] [get_bd_pins UIF_SerialSlave_1/nReset] [get_bd_pins fifo_generator_0/s_aresetn] [get_bd_pins fifo_generator_1/s_aresetn] [get_bd_pins fifo_generator_2/s_aresetn] [get_bd_pins fifo_generator_3/s_aresetn]
  connect_bd_net -net UIF_SerialMasterCont_0_SPI_Master_CSn [get_bd_pins SPI_Master_CSn_1] [get_bd_pins UIF_SerialMasterCont_0/SPI_Master_CSn]
  connect_bd_net -net UIF_SerialMasterCont_0_busy [get_bd_pins UIF_AXI_0/hostIsBusy] [get_bd_pins UIF_SerialMasterCont_0/busy]
  connect_bd_net -net fifo_generator_1_axis_data_count [get_bd_pins UIF_AXI_0/st_fifo_count] [get_bd_pins fifo_generator_1/axis_data_count]
  connect_bd_net -net fifo_generator_2_axis_data_count [get_bd_pins UIF_SerialMasterCont_0/txFifoCount] [get_bd_pins fifo_generator_2/axis_data_count]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins s_aclk] [get_bd_pins UIF_AXI_0/S_AXI_ACLK] [get_bd_pins UIF_SerialMasterCont_0/sysClk] [get_bd_pins UIF_SerialSlave_0/sysClk] [get_bd_pins UIF_SerialSlave_1/sysClk] [get_bd_pins fifo_generator_0/s_aclk] [get_bd_pins fifo_generator_1/s_aclk] [get_bd_pins fifo_generator_2/s_aclk] [get_bd_pins fifo_generator_3/s_aclk]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins S_AXI_ARESETN] [get_bd_pins UIF_AXI_0/S_AXI_ARESETN]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DSP
proc create_hier_cell_DSP { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_DSP() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S01_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S02_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S03_AXI

  # Create pins
  create_bd_pin -dir I audio256Clk
  create_bd_pin -dir O audioClkInterrupt
  create_bd_pin -dir I audioSample
  create_bd_pin -dir O fftCompleteInterrupt
  create_bd_pin -dir O nResetAudio256Clk
  create_bd_pin -dir I nResetExt
  create_bd_pin -dir O nResetSysClk
  create_bd_pin -dir O -from 15 -to 0 outData0
  create_bd_pin -dir O -from 15 -to 0 outData1
  create_bd_pin -dir O outDataValid
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -type rst s00_axi_aresetn
  create_bd_pin -dir I -type clk s01_axi_aclk
  create_bd_pin -dir I -type rst s01_axi_aresetn
  create_bd_pin -dir I sysClk

  # Create instance: DSP_registers_0, and set properties
  set block_name DSP_registers
  set block_cell_name DSP_registers_0
  if { [catch {set DSP_registers_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DSP_registers_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DSP_reset_0, and set properties
  set block_name DSP_reset
  set block_cell_name DSP_reset_0
  if { [catch {set DSP_reset_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DSP_reset_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FFTInputBitsConverter_0, and set properties
  set block_name FFTInputBitsConverter
  set block_cell_name FFTInputBitsConverter_0
  if { [catch {set FFTInputBitsConverter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FFTInputBitsConverter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FFTOutputBitsConvert_0, and set properties
  set block_name FFTOutputBitsConverter
  set block_cell_name FFTOutputBitsConvert_0
  if { [catch {set FFTOutputBitsConvert_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FFTOutputBitsConvert_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Synthesizer
  create_hier_cell_Synthesizer $hier_obj Synthesizer

  # Create instance: audio_clk_gen_0, and set properties
  set block_name audio_clk_gen
  set block_cell_name audio_clk_gen_0
  if { [catch {set audio_clk_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $audio_clk_gen_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.ECC_TYPE {Hamming} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.ECC_TYPE {Hamming} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {WRITE_FIRST} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {WRITE_FIRST} \
   CONFIG.Operating_Mode_B {WRITE_FIRST} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_B {32} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $blk_mem_gen_1

  # Create instance: xfft_0, and set properties
  set xfft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0 ]
  set_property -dict [ list \
   CONFIG.aclken {false} \
   CONFIG.aresetn {true} \
   CONFIG.butterfly_type {use_luts} \
   CONFIG.channels {2} \
   CONFIG.complex_mult_type {use_mults_resources} \
   CONFIG.cyclic_prefix_insertion {false} \
   CONFIG.implementation_options {radix_2_burst_io} \
   CONFIG.input_width {12} \
   CONFIG.memory_options_data {block_ram} \
   CONFIG.memory_options_hybrid {false} \
   CONFIG.memory_options_phase_factors {block_ram} \
   CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {0} \
   CONFIG.output_ordering {natural_order} \
   CONFIG.phase_factor_width {16} \
   CONFIG.rounding_modes {truncation} \
   CONFIG.run_time_configurable_transform_length {false} \
   CONFIG.scaling_options {scaled} \
   CONFIG.target_clock_frequency {100} \
   CONFIG.target_data_throughput {50} \
   CONFIG.throttle_scheme {nonrealtime} \
   CONFIG.xk_index {false} \
 ] $xfft_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S02_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins S01_AXI] [get_bd_intf_pins Synthesizer/S_AXI]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins S03_AXI] [get_bd_intf_pins axi_bram_ctrl_1/S_AXI]
  connect_bd_intf_net -intf_net FFTInputBitsConverter_0_m_axis_config [get_bd_intf_pins FFTInputBitsConverter_0/m_axis_config] [get_bd_intf_pins xfft_0/S_AXIS_CONFIG]
  connect_bd_intf_net -intf_net FFTInputBitsConverter_0_m_axis_data [get_bd_intf_pins FFTInputBitsConverter_0/m_axis_data] [get_bd_intf_pins xfft_0/S_AXIS_DATA]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins DSP_registers_0/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTA]
  connect_bd_intf_net -intf_net xfft_0_M_AXIS_DATA [get_bd_intf_pins FFTOutputBitsConvert_0/s_axis_data] [get_bd_intf_pins xfft_0/M_AXIS_DATA]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_intf_nets xfft_0_M_AXIS_DATA]

  # Create port connections
  connect_bd_net -net DSP_registers_0_audioClkInterrupt [get_bd_pins audioClkInterrupt] [get_bd_pins DSP_registers_0/audioClkInterrupt]
  connect_bd_net -net DSP_registers_0_fftCompleteInterrupt [get_bd_pins fftCompleteInterrupt] [get_bd_pins DSP_registers_0/fftCompleteInterrupt]
  connect_bd_net -net DSP_registers_0_fft_scale [get_bd_pins DSP_registers_0/fft_scale] [get_bd_pins FFTInputBitsConverter_0/scale]
  connect_bd_net -net DSP_registers_0_fft_start [get_bd_pins DSP_registers_0/fft_start] [get_bd_pins FFTInputBitsConverter_0/start]
  connect_bd_net -net DSP_registers_0_synth0Gain [get_bd_pins DSP_registers_0/synth0Gain] [get_bd_pins Synthesizer/outGain]
  connect_bd_net -net DSP_registers_0_sysNReset [get_bd_pins DSP_registers_0/sysNReset] [get_bd_pins DSP_reset_0/nResetInt]
  connect_bd_net -net DSP_reset_0_nResetAudioClk [get_bd_pins nResetAudio256Clk] [get_bd_pins DSP_reset_0/nResetAudio256Clk] [get_bd_pins audio_clk_gen_0/nResetAudio256Clk]
  connect_bd_net -net DSP_reset_0_nResetSysClk1 [get_bd_pins nResetSysClk] [get_bd_pins DSP_reset_0/nResetSysClk] [get_bd_pins FFTInputBitsConverter_0/nReset] [get_bd_pins FFTOutputBitsConvert_0/nReset] [get_bd_pins Synthesizer/nReset] [get_bd_pins audio_clk_gen_0/nResetSysClk] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins xfft_0/aresetn]
  connect_bd_net -net FFTInputBitsConverter_0_bram_addr [get_bd_pins FFTInputBitsConverter_0/bram_addr] [get_bd_pins blk_mem_gen_0/addrb]
  connect_bd_net -net FFTInputBitsConverter_0_bram_clk [get_bd_pins FFTInputBitsConverter_0/bram_clk] [get_bd_pins blk_mem_gen_0/clkb]
  connect_bd_net -net FFTInputBitsConverter_0_bram_en [get_bd_pins FFTInputBitsConverter_0/bram_en] [get_bd_pins blk_mem_gen_0/enb]
  connect_bd_net -net FFTInputBitsConverter_0_bram_rst [get_bd_pins FFTInputBitsConverter_0/bram_rst] [get_bd_pins blk_mem_gen_0/rstb]
  connect_bd_net -net FFTInputBitsConverter_0_bram_we [get_bd_pins FFTInputBitsConverter_0/bram_we] [get_bd_pins blk_mem_gen_0/web]
  connect_bd_net -net FFTInputBitsConverter_0_m_axis_data_tdata [get_bd_pins FFTInputBitsConverter_0/m_axis_data_tdata] [get_bd_pins xfft_0/s_axis_data_tdata]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_addr [get_bd_pins FFTOutputBitsConvert_0/bram_addr] [get_bd_pins blk_mem_gen_1/addrb]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets FFTOutputBitsConvert_0_bram_addr]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_clk [get_bd_pins FFTOutputBitsConvert_0/bram_clk] [get_bd_pins blk_mem_gen_1/clkb]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_en [get_bd_pins FFTOutputBitsConvert_0/bram_en] [get_bd_pins blk_mem_gen_1/enb]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets FFTOutputBitsConvert_0_bram_en]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_rst [get_bd_pins FFTOutputBitsConvert_0/bram_rst] [get_bd_pins blk_mem_gen_1/rstb]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets FFTOutputBitsConvert_0_bram_rst]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_wddata [get_bd_pins FFTOutputBitsConvert_0/bram_wddata] [get_bd_pins blk_mem_gen_1/dinb]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets FFTOutputBitsConvert_0_bram_wddata]
  connect_bd_net -net FFTOutputBitsConvert_0_bram_we [get_bd_pins FFTOutputBitsConvert_0/bram_we] [get_bd_pins blk_mem_gen_1/web]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets FFTOutputBitsConvert_0_bram_we]
  connect_bd_net -net FFTOutputBitsConvert_0_event_fft_complete [get_bd_pins DSP_registers_0/fftComplete] [get_bd_pins FFTOutputBitsConvert_0/event_fft_complete]
  connect_bd_net -net Synthesizer_sync_0 [get_bd_pins outDataValid] [get_bd_pins Synthesizer/outDataValid]
  connect_bd_net -net audioClk256_0_1 [get_bd_pins audio256Clk] [get_bd_pins DSP_reset_0/audio256Clk] [get_bd_pins audio_clk_gen_0/audio256Clk]
  connect_bd_net -net audioClkSync_0_1 [get_bd_pins audioSample] [get_bd_pins DSP_registers_0/audioSample]
  connect_bd_net -net audio_clk_gen_0_audioClk [get_bd_pins Synthesizer/audioClkSync] [get_bd_pins audio_clk_gen_0/audioClkSync]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins FFTInputBitsConverter_0/bram_rddata] [get_bd_pins blk_mem_gen_0/doutb]
  connect_bd_net -net event_frame_started [get_bd_pins xfft_0/event_frame_started]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets event_frame_started]
  connect_bd_net -net event_tlast_missing [get_bd_pins xfft_0/event_tlast_missing]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets event_tlast_missing]
  connect_bd_net -net m_axis_data_tvalid [get_bd_pins FFTInputBitsConverter_0/m_axis_data_tvalid] [get_bd_pins xfft_0/s_axis_data_tvalid]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets m_axis_data_tvalid]
  connect_bd_net -net mult_sum_0_out [get_bd_pins outData0] [get_bd_pins outData1] [get_bd_pins Synthesizer/outData]
  connect_bd_net -net nResetExt_0_1 [get_bd_pins nResetExt] [get_bd_pins DSP_reset_0/nResetExt]
  connect_bd_net -net s00_axi_aclk_1 [get_bd_pins s00_axi_aclk] [get_bd_pins DSP_registers_0/S_AXI_ACLK]
  connect_bd_net -net s00_axi_aresetn_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins DSP_registers_0/S_AXI_ARESETN]
  connect_bd_net -net s_axi_aclk_0_1 [get_bd_pins s01_axi_aclk] [get_bd_pins Synthesizer/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_0_1 [get_bd_pins s01_axi_aresetn] [get_bd_pins Synthesizer/s_axi_aresetn]
  connect_bd_net -net s_axis_data_tready [get_bd_pins FFTInputBitsConverter_0/m_axis_data_tready] [get_bd_pins xfft_0/s_axis_data_tready]
set_property HDL_ATTRIBUTE.DEBUG {true} [get_bd_nets s_axis_data_tready]
  connect_bd_net -net sysClk_0_1 [get_bd_pins sysClk] [get_bd_pins DSP_reset_0/sysClk] [get_bd_pins FFTInputBitsConverter_0/clk] [get_bd_pins FFTOutputBitsConvert_0/clk] [get_bd_pins Synthesizer/sysClk] [get_bd_pins audio_clk_gen_0/sysClk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins xfft_0/aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DAC_Interface
proc create_hier_cell_DAC_Interface { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_DAC_Interface() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O DAC_BICK_0
  create_bd_pin -dir O DAC_LRCK_0
  create_bd_pin -dir O DAC_MCLK_0
  create_bd_pin -dir O DAC_SDT_0
  create_bd_pin -dir I -from 15 -to 0 Data0
  create_bd_pin -dir I -from 15 -to 0 Data1
  create_bd_pin -dir I DataValid
  create_bd_pin -dir I -type clk audio256Clk
  create_bd_pin -dir I -type rst fifo_aresetn
  create_bd_pin -dir I nResetAudio256Clk
  create_bd_pin -dir I sysClk

  # Create instance: DAC_FIFO_0, and set properties
  set block_name DAC_FIFO
  set block_cell_name DAC_FIFO_0
  if { [catch {set DAC_FIFO_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DAC_FIFO_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: DAC_IF_0, and set properties
  set block_name DAC_IF
  set block_cell_name DAC_IF_0
  if { [catch {set DAC_IF_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $DAC_IF_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Independent_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {13} \
   CONFIG.Empty_Threshold_Assert_Value_rach {13} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1021} \
   CONFIG.Empty_Threshold_Assert_Value_wach {13} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1021} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {13} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.FIFO_Implementation_axis {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {15} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {16} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
   CONFIG.Use_Embedded_Registers_axis {false} \
 ] $fifo_generator_0

  # Create interface connections
  connect_bd_intf_net -intf_net DAC_FIFO_0_m_axis [get_bd_intf_pins DAC_FIFO_0/m_axis] [get_bd_intf_pins fifo_generator_0/S_AXIS]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXIS [get_bd_intf_pins DAC_IF_0/s_axis] [get_bd_intf_pins fifo_generator_0/M_AXIS]

  # Create port connections
  connect_bd_net -net DAC_IF_0_DAC_BCLK [get_bd_pins DAC_BICK_0] [get_bd_pins DAC_IF_0/DAC_BICK]
  connect_bd_net -net DAC_IF_0_DAC_LRCK [get_bd_pins DAC_LRCK_0] [get_bd_pins DAC_IF_0/DAC_LRCK]
  connect_bd_net -net DAC_IF_0_DAC_MCLK [get_bd_pins DAC_MCLK_0] [get_bd_pins DAC_IF_0/DAC_MCLK]
  connect_bd_net -net DAC_IF_0_DAC_SDT [get_bd_pins DAC_SDT_0] [get_bd_pins DAC_IF_0/DAC_SDT]
  connect_bd_net -net DSP_nResetSysClk [get_bd_pins fifo_aresetn] [get_bd_pins fifo_generator_0/s_aresetn]
  connect_bd_net -net DSP_outData2 [get_bd_pins Data1] [get_bd_pins DAC_FIFO_0/Data1]
  connect_bd_net -net DSP_outDataValid [get_bd_pins nResetAudio256Clk] [get_bd_pins DAC_IF_0/nReset]
  connect_bd_net -net DSP_outDataValid1 [get_bd_pins DataValid] [get_bd_pins DAC_FIFO_0/DataValid]
  connect_bd_net -net Data0_1 [get_bd_pins Data0] [get_bd_pins DAC_FIFO_0/Data0]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins audio256Clk] [get_bd_pins DAC_IF_0/audio256Clk] [get_bd_pins DAC_IF_0/s_axis_aclk] [get_bd_pins fifo_generator_0/m_aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins sysClk] [get_bd_pins fifo_generator_0/s_aclk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set UART_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART_1 ]
  set UIF_Master_1 [ create_bd_intf_port -mode Master -vlnv tamapochi1:user:UIF_Master_rtl:1.0 UIF_Master_1 ]
  set UIF_Slave_1 [ create_bd_intf_port -mode Master -vlnv tamapochi1:user:UIF_Slave_rtl:1.0 UIF_Slave_1 ]

  # Create ports
  set DAC_BICK_0 [ create_bd_port -dir O DAC_BICK_0 ]
  set DAC_LRCK_0 [ create_bd_port -dir O DAC_LRCK_0 ]
  set DAC_MCLK_0 [ create_bd_port -dir O DAC_MCLK_0 ]
  set DAC_SDT_0 [ create_bd_port -dir O DAC_SDT_0 ]
  set RGB_OUT_0 [ create_bd_port -dir O -from 2 -to 0 RGB_OUT_0 ]
  set SPI_Master_CSn_1 [ create_bd_port -dir O SPI_Master_CSn_1 ]
  set UIF_Res_1 [ create_bd_port -dir O UIF_Res_1 ]
  set USB_nRESET_0 [ create_bd_port -dir O USB_nRESET_0 ]

  # Create instance: DAC_Interface
  create_hier_cell_DAC_Interface [current_bd_instance .] DAC_Interface

  # Create instance: DSP
  create_hier_cell_DSP [current_bd_instance .] DSP

  # Create instance: UIF
  create_hier_cell_UIF [current_bd_instance .] UIF

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {100.0} \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {360.948} \
   CONFIG.CLKOUT1_PHASE_ERROR {301.601} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {12.288} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {78.125} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.PRIM_IN_FREQ {100} \
   CONFIG.PRIM_SOURCE {No_buffer} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_INCLK_STOPPED {false} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {true} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: myip_0, and set properties
  set myip_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:myip:1.0 myip_0 ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {100000000} \
   CONFIG.PCW_CLK1_FREQ {100000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CORE0_FIQ_INTR {0} \
   CONFIG.PCW_CORE0_IRQ_INTR {0} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_EN_CLK1_PORT {1} \
   CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
   CONFIG.PCW_EN_EMIO_I2C0 {0} \
   CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_EMIO_UART1 {1} \
   CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
   CONFIG.PCW_EN_GPIO {1} \
   CONFIG.PCW_EN_I2C0 {1} \
   CONFIG.PCW_EN_MODEM_UART0 {0} \
   CONFIG.PCW_EN_SDIO0 {1} \
   CONFIG.PCW_EN_UART0 {0} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_EN_USB0 {0} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {4} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {4} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
   CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
   CONFIG.PCW_I2C0_I2C0_IO {MIO 10 .. 11} \
   CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_I2C0_RESET_ENABLE {0} \
   CONFIG.PCW_I2C1_RESET_ENABLE {0} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_I2C_RESET_ENABLE {0} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {48} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1600.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_0_DIRECTION {inout} \
   CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_0_PULLUP {enabled} \
   CONFIG.PCW_MIO_0_SLEW {slow} \
   CONFIG.PCW_MIO_10_DIRECTION {inout} \
   CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_10_PULLUP {enabled} \
   CONFIG.PCW_MIO_10_SLEW {slow} \
   CONFIG.PCW_MIO_11_DIRECTION {inout} \
   CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_11_PULLUP {enabled} \
   CONFIG.PCW_MIO_11_SLEW {slow} \
   CONFIG.PCW_MIO_12_DIRECTION {inout} \
   CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_12_PULLUP {enabled} \
   CONFIG.PCW_MIO_12_SLEW {slow} \
   CONFIG.PCW_MIO_13_DIRECTION {inout} \
   CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_13_PULLUP {enabled} \
   CONFIG.PCW_MIO_13_SLEW {slow} \
   CONFIG.PCW_MIO_14_DIRECTION {inout} \
   CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_14_PULLUP {enabled} \
   CONFIG.PCW_MIO_14_SLEW {slow} \
   CONFIG.PCW_MIO_15_DIRECTION {inout} \
   CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_15_PULLUP {enabled} \
   CONFIG.PCW_MIO_15_SLEW {slow} \
   CONFIG.PCW_MIO_16_DIRECTION {inout} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {inout} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {inout} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {inout} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {inout} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {inout} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {inout} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {inout} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {inout} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {inout} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {inout} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {inout} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {inout} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_28_DIRECTION {inout} \
   CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_28_PULLUP {enabled} \
   CONFIG.PCW_MIO_28_SLEW {slow} \
   CONFIG.PCW_MIO_29_DIRECTION {inout} \
   CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_29_PULLUP {enabled} \
   CONFIG.PCW_MIO_29_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_30_DIRECTION {inout} \
   CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_30_PULLUP {enabled} \
   CONFIG.PCW_MIO_30_SLEW {slow} \
   CONFIG.PCW_MIO_31_DIRECTION {inout} \
   CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_31_PULLUP {enabled} \
   CONFIG.PCW_MIO_31_SLEW {slow} \
   CONFIG.PCW_MIO_32_DIRECTION {inout} \
   CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_32_PULLUP {enabled} \
   CONFIG.PCW_MIO_32_SLEW {slow} \
   CONFIG.PCW_MIO_33_DIRECTION {inout} \
   CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_33_PULLUP {enabled} \
   CONFIG.PCW_MIO_33_SLEW {slow} \
   CONFIG.PCW_MIO_34_DIRECTION {inout} \
   CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_34_PULLUP {enabled} \
   CONFIG.PCW_MIO_34_SLEW {slow} \
   CONFIG.PCW_MIO_35_DIRECTION {inout} \
   CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_35_PULLUP {enabled} \
   CONFIG.PCW_MIO_35_SLEW {slow} \
   CONFIG.PCW_MIO_36_DIRECTION {inout} \
   CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_36_PULLUP {enabled} \
   CONFIG.PCW_MIO_36_SLEW {slow} \
   CONFIG.PCW_MIO_37_DIRECTION {inout} \
   CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_37_PULLUP {enabled} \
   CONFIG.PCW_MIO_37_SLEW {slow} \
   CONFIG.PCW_MIO_38_DIRECTION {inout} \
   CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_38_PULLUP {enabled} \
   CONFIG.PCW_MIO_38_SLEW {slow} \
   CONFIG.PCW_MIO_39_DIRECTION {inout} \
   CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_39_PULLUP {enabled} \
   CONFIG.PCW_MIO_39_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_40_DIRECTION {inout} \
   CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_40_PULLUP {enabled} \
   CONFIG.PCW_MIO_40_SLEW {slow} \
   CONFIG.PCW_MIO_41_DIRECTION {inout} \
   CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_41_PULLUP {enabled} \
   CONFIG.PCW_MIO_41_SLEW {slow} \
   CONFIG.PCW_MIO_42_DIRECTION {inout} \
   CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_42_PULLUP {enabled} \
   CONFIG.PCW_MIO_42_SLEW {slow} \
   CONFIG.PCW_MIO_43_DIRECTION {inout} \
   CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_43_PULLUP {enabled} \
   CONFIG.PCW_MIO_43_SLEW {slow} \
   CONFIG.PCW_MIO_44_DIRECTION {inout} \
   CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_44_PULLUP {enabled} \
   CONFIG.PCW_MIO_44_SLEW {slow} \
   CONFIG.PCW_MIO_45_DIRECTION {inout} \
   CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_45_PULLUP {enabled} \
   CONFIG.PCW_MIO_45_SLEW {slow} \
   CONFIG.PCW_MIO_46_DIRECTION {inout} \
   CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_46_PULLUP {enabled} \
   CONFIG.PCW_MIO_46_SLEW {slow} \
   CONFIG.PCW_MIO_47_DIRECTION {in} \
   CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_47_PULLUP {enabled} \
   CONFIG.PCW_MIO_47_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {inout} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {inout} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_50_DIRECTION {inout} \
   CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_50_PULLUP {enabled} \
   CONFIG.PCW_MIO_50_SLEW {slow} \
   CONFIG.PCW_MIO_51_DIRECTION {inout} \
   CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_51_PULLUP {enabled} \
   CONFIG.PCW_MIO_51_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {inout} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {inout} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_7_DIRECTION {out} \
   CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_7_PULLUP {disabled} \
   CONFIG.PCW_MIO_7_SLEW {slow} \
   CONFIG.PCW_MIO_8_DIRECTION {out} \
   CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_8_PULLUP {disabled} \
   CONFIG.PCW_MIO_8_SLEW {slow} \
   CONFIG.PCW_MIO_9_DIRECTION {inout} \
   CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_9_PULLUP {enabled} \
   CONFIG.PCW_MIO_9_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#I2C 0#I2C 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#GPIO#SD 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO} \
   CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#gpio[1]#gpio[2]#gpio[3]#gpio[4]#gpio[5]#gpio[6]#gpio[7]#gpio[8]#gpio[9]#scl#sda#gpio[12]#gpio[13]#gpio[14]#gpio[15]#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#gpio[24]#gpio[25]#gpio[26]#gpio[27]#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#cd#gpio[48]#gpio[49]#gpio[50]#gpio[51]#gpio[52]#gpio[53]} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.248} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.276} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.191} \
   CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.209} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {0.136} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {0.078} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {0.120} \
   CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {0.078} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
   CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
   CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
   CONFIG.PCW_SD0_GRP_WP_IO {<Select>} \
   CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {32} \
   CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
   CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART0_UART0_IO {<Select>} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {EMIO} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {16} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_BL {8} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.248} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.276} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.191} \
   CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.209} \
   CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {16 Bit} \
   CONFIG.PCW_UIPARAM_DDR_CL {11} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {40.897} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {40.897} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {40} \
   CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {40} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {8} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {18.213} \
   CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {26.941} \
   CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {20} \
   CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {20} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.136} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.078} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.120} \
   CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.078} \
   CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {18} \
   CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {27} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
   CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {15} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1600K} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {11} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {11} \
   CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
   CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
   CONFIG.PCW_USB0_RESET_ENABLE {0} \
   CONFIG.PCW_USB0_USB0_IO {<Select>} \
   CONFIG.PCW_USB1_RESET_ENABLE {0} \
   CONFIG.PCW_USB_RESET_ENABLE {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {6} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_pins DSP/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins DSP/S02_AXI] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_pins DSP/S03_AXI] [get_bd_intf_pins ps7_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net UIF_SerialSlave_0_UIF_Slave [get_bd_intf_ports UIF_Slave_1] [get_bd_intf_pins UIF/UIF_Slave_1]
  connect_bd_intf_net -intf_net UIF_UIF_Master_0 [get_bd_intf_ports UIF_Master_1] [get_bd_intf_pins UIF/UIF_Master_1]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_UART_1 [get_bd_intf_ports UART_1] [get_bd_intf_pins processing_system7_0/UART_1]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins myip_0/S00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins DSP/S01_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins UIF/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net DAC_IF_0_DAC_BCLK [get_bd_ports DAC_BICK_0] [get_bd_pins DAC_Interface/DAC_BICK_0]
  connect_bd_net -net DAC_IF_0_DAC_LRCK [get_bd_ports DAC_LRCK_0] [get_bd_pins DAC_Interface/DAC_LRCK_0] [get_bd_pins DSP/audioSample]
  connect_bd_net -net DAC_IF_0_DAC_MCLK [get_bd_ports DAC_MCLK_0] [get_bd_pins DAC_Interface/DAC_MCLK_0]
  connect_bd_net -net DAC_IF_0_DAC_SDT [get_bd_ports DAC_SDT_0] [get_bd_pins DAC_Interface/DAC_SDT_0]
  connect_bd_net -net DSP_audioClkInterrupt [get_bd_pins DSP/audioClkInterrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net DSP_fftCompleteInterrupt [get_bd_pins DSP/fftCompleteInterrupt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net DSP_nResetSysClk [get_bd_pins DAC_Interface/fifo_aresetn] [get_bd_pins DSP/nResetSysClk]
  connect_bd_net -net DSP_outData1 [get_bd_pins DAC_Interface/Data0] [get_bd_pins DSP/outData0]
  connect_bd_net -net DSP_outData2 [get_bd_pins DAC_Interface/Data1] [get_bd_pins DSP/outData1]
  connect_bd_net -net DSP_outDataValid [get_bd_pins DAC_Interface/nResetAudio256Clk] [get_bd_pins DSP/nResetAudio256Clk]
  connect_bd_net -net DSP_outDataValid1 [get_bd_pins DAC_Interface/DataValid] [get_bd_pins DSP/outDataValid]
  connect_bd_net -net UIF_AXI_0_UIF_res [get_bd_ports UIF_Res_1] [get_bd_pins UIF/UIF_Res_1]
  connect_bd_net -net UIF_SPI_Master_CSn_0 [get_bd_ports SPI_Master_CSn_1] [get_bd_pins UIF/SPI_Master_CSn_1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins DAC_Interface/audio256Clk] [get_bd_pins DSP/audio256Clk] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins DSP/nResetExt] [get_bd_pins clk_wiz_0/locked]
  connect_bd_net -net myip_0_RGB_OUT [get_bd_ports RGB_OUT_0] [get_bd_pins myip_0/RGB_OUT]
  connect_bd_net -net myip_0_USB_nRESET [get_bd_ports USB_nRESET_0] [get_bd_pins myip_0/USB_nRESET]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins DAC_Interface/sysClk] [get_bd_pins DSP/s00_axi_aclk] [get_bd_pins DSP/s01_axi_aclk] [get_bd_pins DSP/sysClk] [get_bd_pins UIF/s_aclk] [get_bd_pins myip_0/s00_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/M05_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins clk_wiz_0/resetn] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins DSP/s00_axi_aresetn] [get_bd_pins DSP/s01_axi_aresetn] [get_bd_pins UIF/S_AXI_ARESETN] [get_bd_pins myip_0/s00_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/M05_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DSP/DSP_registers_0/S_AXI/reg0] SEG_DSP_registers_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs UIF/UIF_AXI_0/S_AXI/reg0] SEG_UIF_AXI_0_reg0
  create_bd_addr_seg -range 0x00002000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DSP/Synthesizer/axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00002000 -offset 0x42000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DSP/axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem01
  create_bd_addr_seg -range 0x00002000 -offset 0x44000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs DSP/axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs myip_0/S00_AXI/S00_AXI_reg] SEG_myip_0_S00_AXI_reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


