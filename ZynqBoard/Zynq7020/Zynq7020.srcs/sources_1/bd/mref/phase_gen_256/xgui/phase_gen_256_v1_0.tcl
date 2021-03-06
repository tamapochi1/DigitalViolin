# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "M_ONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_TWO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ONE" -parent ${Page_0}


}

proc update_PARAM_VALUE.M_ONE { PARAM_VALUE.M_ONE } {
	# Procedure called to update M_ONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_ONE { PARAM_VALUE.M_ONE } {
	# Procedure called to validate M_ONE
	return true
}

proc update_PARAM_VALUE.M_TWO { PARAM_VALUE.M_TWO } {
	# Procedure called to update M_TWO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_TWO { PARAM_VALUE.M_TWO } {
	# Procedure called to validate M_TWO
	return true
}

proc update_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to update ONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to validate ONE
	return true
}


proc update_MODELPARAM_VALUE.M_TWO { MODELPARAM_VALUE.M_TWO PARAM_VALUE.M_TWO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_TWO}] ${MODELPARAM_VALUE.M_TWO}
}

proc update_MODELPARAM_VALUE.M_ONE { MODELPARAM_VALUE.M_ONE PARAM_VALUE.M_ONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_ONE}] ${MODELPARAM_VALUE.M_ONE}
}

proc update_MODELPARAM_VALUE.ONE { MODELPARAM_VALUE.ONE PARAM_VALUE.ONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ONE}] ${MODELPARAM_VALUE.ONE}
}

