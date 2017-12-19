
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
set scripts_vivado_version 2016.4
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
# core_fpu, core_top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
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



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

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
  set default_sysclk_300 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_sysclk_300 ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {300000000} \
 ] $default_sysclk_300
  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
CONFIG.C_BAUDRATE {115200} \
CONFIG.UARTLITE_BOARD_INTERFACE {rs232_uart} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../../simulator/min-rt/min-rt.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Load_Init_File {true} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Use_ENA_Pin} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_2 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz_0 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {33.330000000000005} \
CONFIG.CLKOUT1_DRIVES {Buffer} \
CONFIG.CLKOUT1_JITTER {129.666} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.CLKOUT2_DRIVES {Buffer} \
CONFIG.CLKOUT3_DRIVES {Buffer} \
CONFIG.CLKOUT4_DRIVES {Buffer} \
CONFIG.CLKOUT5_DRIVES {Buffer} \
CONFIG.CLKOUT6_DRIVES {Buffer} \
CONFIG.CLKOUT7_DRIVES {Buffer} \
CONFIG.CLK_IN1_BOARD_INTERFACE {default_sysclk_300} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {3.3330000000000002} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {3} \
CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT2_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT3_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT4_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT5_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT6_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT7_DRIVES.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_DIVCLK_DIVIDE.VALUE_SRC {DEFAULT} \
CONFIG.PRIM_SOURCE.VALUE_SRC {DEFAULT} \
 ] $clk_wiz_0

  # Create instance: core_fpu_0, and set properties
  set block_name core_fpu
  set block_cell_name core_fpu_0
  if { [catch {set core_fpu_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $core_fpu_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: core_top_0, and set properties
  set block_name core_top
  set block_cell_name core_top_0
  if { [catch {set core_top_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $core_top_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
CONFIG.SUPPORTS_NARROW_BURST {0} \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /core_top_0/interface_aximm]

  # Create instance: core_top_0_axi_periph, and set properties
  set core_top_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 core_top_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $core_top_0_axi_periph

  # Create instance: floating_point_0, and set properties
  set floating_point_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_0 ]
  set_property -dict [ list \
CONFIG.C_Mult_Usage {Full_Usage} \
CONFIG.Has_ARESETn {true} \
 ] $floating_point_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.C_Mult_Usage.VALUE_SRC {DEFAULT} \
 ] $floating_point_0

  # Create instance: floating_point_1, and set properties
  set floating_point_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_1 ]
  set_property -dict [ list \
CONFIG.C_Latency {3} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {1} \
CONFIG.C_Result_Fraction_Width {0} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Compare} \
CONFIG.Result_Precision_Type {Custom} \
 ] $floating_point_1

  # Create instance: floating_point_2, and set properties
  set floating_point_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_2 ]
  set_property -dict [ list \
CONFIG.C_Latency {29} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Divide} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_2

  # Create instance: floating_point_3, and set properties
  set floating_point_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_3 ]
  set_property -dict [ list \
CONFIG.C_Accum_Input_Msb {32} \
CONFIG.C_Accum_Lsb {-31} \
CONFIG.C_Accum_Msb {32} \
CONFIG.C_Latency {7} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Fixed_to_float} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_3

  # Create instance: floating_point_4, and set properties
  set floating_point_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_4 ]
  set_property -dict [ list \
CONFIG.C_Accum_Input_Msb {32} \
CONFIG.C_Accum_Lsb {-31} \
CONFIG.C_Accum_Msb {32} \
CONFIG.C_Latency {7} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {32} \
CONFIG.C_Result_Fraction_Width {0} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Float_to_fixed} \
CONFIG.Result_Precision_Type {Int32} \
 ] $floating_point_4

  # Create instance: floating_point_5, and set properties
  set floating_point_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_5 ]
  set_property -dict [ list \
CONFIG.C_Accum_Input_Msb {32} \
CONFIG.C_Accum_Lsb {-31} \
CONFIG.C_Accum_Msb {32} \
CONFIG.C_Latency {29} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Square_root} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_5

  # Create instance: floating_point_6, and set properties
  set floating_point_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_6 ]
  set_property -dict [ list \
CONFIG.C_Accum_Input_Msb {32} \
CONFIG.C_Accum_Lsb {-31} \
CONFIG.C_Accum_Msb {32} \
CONFIG.C_Latency {9} \
CONFIG.C_Mult_Usage {No_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ARESETn {true} \
CONFIG.Operation_Type {Multiply} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_6

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net core_fpu_0_addsub_a [get_bd_intf_pins core_fpu_0/addsub_a] [get_bd_intf_pins floating_point_0/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_addsub_b [get_bd_intf_pins core_fpu_0/addsub_b] [get_bd_intf_pins floating_point_0/S_AXIS_B]
  connect_bd_intf_net -intf_net core_fpu_0_addsub_op [get_bd_intf_pins core_fpu_0/addsub_op] [get_bd_intf_pins floating_point_0/S_AXIS_OPERATION]
  connect_bd_intf_net -intf_net core_fpu_0_comp_a [get_bd_intf_pins core_fpu_0/comp_a] [get_bd_intf_pins floating_point_1/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_comp_b [get_bd_intf_pins core_fpu_0/comp_b] [get_bd_intf_pins floating_point_1/S_AXIS_B]
  connect_bd_intf_net -intf_net core_fpu_0_comp_op [get_bd_intf_pins core_fpu_0/comp_op] [get_bd_intf_pins floating_point_1/S_AXIS_OPERATION]
  connect_bd_intf_net -intf_net core_fpu_0_div_a [get_bd_intf_pins core_fpu_0/div_a] [get_bd_intf_pins floating_point_2/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_div_b [get_bd_intf_pins core_fpu_0/div_b] [get_bd_intf_pins floating_point_2/S_AXIS_B]
  connect_bd_intf_net -intf_net core_fpu_0_fcvtsw_a [get_bd_intf_pins core_fpu_0/fcvtsw_a] [get_bd_intf_pins floating_point_3/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_fcvtws_a [get_bd_intf_pins core_fpu_0/fcvtws_a] [get_bd_intf_pins floating_point_4/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_fsqrts_a [get_bd_intf_pins core_fpu_0/fsqrts_a] [get_bd_intf_pins floating_point_5/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_mul_a [get_bd_intf_pins core_fpu_0/mul_a] [get_bd_intf_pins floating_point_6/S_AXIS_A]
  connect_bd_intf_net -intf_net core_fpu_0_mul_b [get_bd_intf_pins core_fpu_0/mul_b] [get_bd_intf_pins floating_point_6/S_AXIS_B]
  connect_bd_intf_net -intf_net core_top_0_axi_periph_M00_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins core_top_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net core_top_0_interface_aximm [get_bd_intf_pins core_top_0/interface_aximm] [get_bd_intf_pins core_top_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net default_sysclk_300_1 [get_bd_intf_ports default_sysclk_300] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]
  connect_bd_intf_net -intf_net floating_point_0_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/addsub_r] [get_bd_intf_pins floating_point_0/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_1_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/comp_r] [get_bd_intf_pins floating_point_1/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_2_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/div_r] [get_bd_intf_pins floating_point_2/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_3_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/fcvtsw_r] [get_bd_intf_pins floating_point_3/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_4_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/fcvtws_r] [get_bd_intf_pins floating_point_4/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_5_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/fsqrts_r] [get_bd_intf_pins floating_point_5/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_6_M_AXIS_RESULT [get_bd_intf_pins core_fpu_0/mul_r] [get_bd_intf_pins floating_point_6/M_AXIS_RESULT]

  # Create port connections
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins core_top_0/I_MEM_IN]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/douta] [get_bd_pins core_top_0/MEM_IN]
  connect_bd_net -net blk_mem_gen_2_douta [get_bd_pins blk_mem_gen_2/douta] [get_bd_pins core_top_0/CSR_IN]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_2/clka] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins core_fpu_0/CLK] [get_bd_pins core_top_0/CLK] [get_bd_pins core_top_0_axi_periph/ACLK] [get_bd_pins core_top_0_axi_periph/M00_ACLK] [get_bd_pins core_top_0_axi_periph/S00_ACLK] [get_bd_pins floating_point_0/aclk] [get_bd_pins floating_point_1/aclk] [get_bd_pins floating_point_2/aclk] [get_bd_pins floating_point_3/aclk] [get_bd_pins floating_point_4/aclk] [get_bd_pins floating_point_5/aclk] [get_bd_pins floating_point_6/aclk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins clk_wiz_0/locked] [get_bd_pins core_fpu_0/RST_N] [get_bd_pins core_top_0/RST_N] [get_bd_pins core_top_0_axi_periph/ARESETN] [get_bd_pins core_top_0_axi_periph/M00_ARESETN] [get_bd_pins core_top_0_axi_periph/S00_ARESETN] [get_bd_pins floating_point_0/aresetn] [get_bd_pins floating_point_1/aresetn] [get_bd_pins floating_point_2/aresetn] [get_bd_pins floating_point_3/aresetn] [get_bd_pins floating_point_4/aresetn] [get_bd_pins floating_point_5/aresetn] [get_bd_pins floating_point_6/aresetn]
  connect_bd_net -net core_fpu_0_fpu_result [get_bd_pins core_fpu_0/fpu_result] [get_bd_pins core_top_0/fpu_result]
  connect_bd_net -net core_fpu_0_tvalid_once [get_bd_pins core_fpu_0/tvalid_once] [get_bd_pins core_top_0/tvalid_once]
  connect_bd_net -net core_top_0_CSR_ADDR [get_bd_pins blk_mem_gen_2/addra] [get_bd_pins core_top_0/CSR_ADDR]
  connect_bd_net -net core_top_0_CSR_DATA [get_bd_pins blk_mem_gen_2/dina] [get_bd_pins core_top_0/CSR_DATA]
  connect_bd_net -net core_top_0_CSR_WE [get_bd_pins blk_mem_gen_2/wea] [get_bd_pins core_top_0/CSR_WE]
  connect_bd_net -net core_top_0_I_MEM_ADDR [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins core_top_0/I_MEM_ADDR]
  connect_bd_net -net core_top_0_MEM_ADDR [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins core_top_0/MEM_ADDR]
  connect_bd_net -net core_top_0_MEM_DATA [get_bd_pins blk_mem_gen_1/dina] [get_bd_pins core_top_0/MEM_DATA]
  connect_bd_net -net core_top_0_MEM_WE [get_bd_pins blk_mem_gen_1/wea] [get_bd_pins core_top_0/MEM_WE]
  connect_bd_net -net core_top_0_exec [get_bd_pins core_fpu_0/exec] [get_bd_pins core_top_0/exec]
  connect_bd_net -net core_top_0_frs1 [get_bd_pins core_fpu_0/frs1] [get_bd_pins core_top_0/frs1]
  connect_bd_net -net core_top_0_frs2 [get_bd_pins core_fpu_0/frs2] [get_bd_pins core_top_0/frs2]
  connect_bd_net -net core_top_0_i_fadds [get_bd_pins core_fpu_0/i_fadds] [get_bd_pins core_top_0/i_fadds]
  connect_bd_net -net core_top_0_i_fcvtsw [get_bd_pins core_fpu_0/i_fcvtsw] [get_bd_pins core_top_0/i_fcvtsw]
  connect_bd_net -net core_top_0_i_fcvtws [get_bd_pins core_fpu_0/i_fcvtws] [get_bd_pins core_top_0/i_fcvtws]
  connect_bd_net -net core_top_0_i_fdivs [get_bd_pins core_fpu_0/i_fdivs] [get_bd_pins core_top_0/i_fdivs]
  connect_bd_net -net core_top_0_i_feqs [get_bd_pins core_fpu_0/i_feqs] [get_bd_pins core_top_0/i_feqs]
  connect_bd_net -net core_top_0_i_fles [get_bd_pins core_fpu_0/i_fles] [get_bd_pins core_top_0/i_fles]
  connect_bd_net -net core_top_0_i_flts [get_bd_pins core_fpu_0/i_flts] [get_bd_pins core_top_0/i_flts]
  connect_bd_net -net core_top_0_i_fmuls [get_bd_pins core_fpu_0/i_fmuls] [get_bd_pins core_top_0/i_fmuls]
  connect_bd_net -net core_top_0_i_fsqrts [get_bd_pins core_fpu_0/i_fsqrts] [get_bd_pins core_top_0/i_fsqrts]
  connect_bd_net -net core_top_0_i_fsubs [get_bd_pins core_fpu_0/i_fsubs] [get_bd_pins core_top_0/i_fsubs]
  connect_bd_net -net core_top_0_rs1 [get_bd_pins core_fpu_0/rs1] [get_bd_pins core_top_0/rs1]
  connect_bd_net -net core_top_0_stole [get_bd_pins core_fpu_0/stole] [get_bd_pins core_top_0/stole]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins blk_mem_gen_1/ena] [get_bd_pins xlconstant_1/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port default_sysclk_300 -pg 1 -y 110 -defaultsOSRD
preplace port rs232_uart -pg 1 -y 980 -defaultsOSRD
preplace port reset -pg 1 -y 130 -defaultsOSRD
preplace inst core_top_0 -pg 1 -lvl 4 -y 1100 -defaultsOSRD
preplace inst core_fpu_0 -pg 1 -lvl 3 -y 1050 -defaultsOSRD
preplace inst floating_point_0 -pg 1 -lvl 2 -y 580 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 4 -y 760 -defaultsOSRD
preplace inst floating_point_1 -pg 1 -lvl 2 -y 420 -defaultsOSRD
preplace inst core_top_0_axi_periph -pg 1 -lvl 5 -y 970 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 4 -y 1540 -defaultsOSRD
preplace inst floating_point_2 -pg 1 -lvl 2 -y 100 -defaultsOSRD
preplace inst floating_point_3 -pg 1 -lvl 2 -y 880 -defaultsOSRD
preplace inst floating_point_4 -pg 1 -lvl 2 -y 1020 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 5 -y 740 -defaultsOSRD
preplace inst floating_point_5 -pg 1 -lvl 2 -y 1390 -defaultsOSRD
preplace inst blk_mem_gen_1 -pg 1 -lvl 5 -y 1440 -defaultsOSRD
preplace inst floating_point_6 -pg 1 -lvl 2 -y 270 -defaultsOSRD
preplace inst axi_uartlite_0 -pg 1 -lvl 6 -y 990 -defaultsOSRD
preplace inst clk_wiz_0 -pg 1 -lvl 1 -y 120 -defaultsOSRD
preplace netloc core_fpu_0_mul_b 1 1 3 280 1300 670J 1370 1110
preplace netloc core_fpu_0_fsqrts_a 1 1 3 320 1320 650J 1350 1130
preplace netloc core_fpu_0_fcvtws_a 1 1 3 320 1290 680J 1340 1140
preplace netloc floating_point_3_M_AXIS_RESULT 1 2 1 N
preplace netloc core_fpu_0_div_a 1 1 3 240 1480 NJ 1480 1180
preplace netloc core_fpu_0_addsub_a 1 1 3 300 700 NJ 700 1120
preplace netloc xlconstant_1_dout 1 4 1 1800J
preplace netloc core_top_0_MEM_ADDR 1 4 1 1740
preplace netloc core_top_0_i_fcvtsw 1 2 3 790 1450 NJ 1450 1680
preplace netloc core_top_0_i_fdivs 1 2 3 820 1390 NJ 1390 1630
preplace netloc default_sysclk_300_1 1 0 1 NJ
preplace netloc core_fpu_0_fcvtsw_a 1 1 3 310 1280 690J 1330 1150
preplace netloc core_fpu_0_div_b 1 1 3 250 1470 NJ 1470 1160
preplace netloc core_fpu_0_comp_a 1 1 3 320 190 NJ 190 1170
preplace netloc core_fpu_0_addsub_b 1 1 3 320 690 NJ 690 1160
preplace netloc clk_wiz_0_locked 1 1 5 220 950 770 130 1210 130 1800 130 2090
preplace netloc core_top_0_MEM_WE 1 4 1 1720
preplace netloc blk_mem_gen_1_douta 1 3 2 1240 810 1750J
preplace netloc core_top_0_frs1 1 2 3 780 730 1200J 710 1650
preplace netloc core_top_0_rs1 1 2 3 750 1560 1260J 1480 1660
preplace netloc core_top_0_i_fsubs 1 2 3 710 1550 1240J 1460 1710
preplace netloc core_fpu_0_comp_b 1 1 3 290 720 NJ 720 1150
preplace netloc core_top_0_frs2 1 2 3 830 1430 NJ 1430 1600
preplace netloc core_top_0_i_feqs 1 2 3 720 1510 1220J 1400 1620
preplace netloc core_top_0_i_fmuls 1 2 3 810 1380 NJ 1380 1640
preplace netloc core_fpu_0_fpu_result 1 3 1 1190
preplace netloc core_fpu_0_addsub_op 1 1 3 310 710 NJ 710 1140
preplace netloc core_top_0_exec 1 2 3 840 1420 NJ 1420 1590
preplace netloc core_top_0_i_fsqrts 1 2 3 760 1540 1250J 1470 1670
preplace netloc core_top_0_axi_periph_M00_AXI 1 5 1 N
preplace netloc floating_point_5_M_AXIS_RESULT 1 2 1 700
preplace netloc core_top_0_MEM_DATA 1 4 1 1730
preplace netloc floating_point_4_M_AXIS_RESULT 1 2 1 660
preplace netloc floating_point_1_M_AXIS_RESULT 1 2 1 740
preplace netloc xlconstant_0_dout 1 4 1 1790J
preplace netloc core_top_0_i_flts 1 2 3 770 1440 NJ 1440 1690
preplace netloc clk_wiz_0_clk_out1 1 1 5 230 1090 650 110 1220 110 1780 110 2100
preplace netloc axi_uartlite_0_UART 1 6 1 N
preplace netloc core_top_0_stole 1 2 3 850 1400 1210J 1370 1580
preplace netloc blk_mem_gen_0_douta 1 3 2 1230 690 1810J
preplace netloc core_top_0_I_MEM_ADDR 1 4 1 1760
preplace netloc core_top_0_i_fadds 1 2 3 740 1410 1200J 830 1610
preplace netloc core_fpu_0_comp_op 1 1 3 270 1460 NJ 1460 1170
preplace netloc floating_point_0_M_AXIS_RESULT 1 2 1 720
preplace netloc core_top_0_interface_aximm 1 4 1 1770
preplace netloc floating_point_6_M_AXIS_RESULT 1 2 1 710
preplace netloc reset_1 1 0 1 NJ
preplace netloc core_fpu_0_tvalid_once 1 3 1 1220
preplace netloc core_fpu_0_mul_a 1 1 3 260 1310 660J 1360 1120
preplace netloc floating_point_2_M_AXIS_RESULT 1 2 1 760
preplace netloc core_top_0_i_fcvtws 1 2 3 800 1490 NJ 1490 1700
preplace netloc core_top_0_i_fles 1 2 3 730 1520 1230J 1410 1610
levelinfo -pg 1 0 120 490 980 1420 1950 2200 2320 -top 0 -bot 1580
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


