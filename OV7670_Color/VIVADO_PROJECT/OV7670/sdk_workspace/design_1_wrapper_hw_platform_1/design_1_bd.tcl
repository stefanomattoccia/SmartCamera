
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z020clg484-1
#    set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
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

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: VDMA
proc create_hier_cell_VDMA { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_VDMA() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 AXIM_READER
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 AXIM_WRITER
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 AXIS_IN
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 AXIS_OUT
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_AXILiteS1

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 ap_start
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_in
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_out
  create_bd_pin -dir I -from 0 -to 0 -type rst aresetn_vdma
  create_bd_pin -dir I -type clk clk_in
  create_bd_pin -dir I -type clk clk_out
  create_bd_pin -dir I -type clk clk_vdma
  create_bd_pin -dir O -from 7 -to 0 -type data frame_index_V
  create_bd_pin -dir I -from 0 -to 0 -type rst interconnect_aresetn

  # Create instance: axi_mem_intercon_reader, and set properties
  set axi_mem_intercon_reader [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_reader ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon_reader

  # Create instance: axi_mem_intercon_writer, and set properties
  set axi_mem_intercon_writer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_writer ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon_writer

  # Create instance: axis_data_fifo_pipeline_to_writer, and set properties
  set axis_data_fifo_pipeline_to_writer [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_pipeline_to_writer ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_pipeline_to_writer

  # Create instance: axis_data_fifo_reader_to_vga, and set properties
  set axis_data_fifo_reader_to_vga [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_reader_to_vga ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_reader_to_vga

  # Create instance: axis_to_ddr_writer_0, and set properties
  set axis_to_ddr_writer_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axis_to_ddr_writer:1.0 axis_to_ddr_writer_0 ]

  # Create instance: ddr_to_axis_reader_0, and set properties
  set ddr_to_axis_reader_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ddr_to_axis_reader:1.0 ddr_to_axis_reader_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Filter_Convolution_0_out_img_V [get_bd_intf_pins AXIS_IN] [get_bd_intf_pins axis_data_fifo_pipeline_to_writer/S_AXIS]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins AXIM_WRITER] [get_bd_intf_pins axi_mem_intercon_writer/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_reader_M00_AXI [get_bd_intf_pins AXIM_READER] [get_bd_intf_pins axi_mem_intercon_reader/M00_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_pipeline_to_writer_M_AXIS [get_bd_intf_pins axis_data_fifo_pipeline_to_writer/M_AXIS] [get_bd_intf_pins axis_to_ddr_writer_0/inputStream_V]
  connect_bd_intf_net -intf_net axis_data_fifo_reader_to_vga_M_AXIS [get_bd_intf_pins AXIS_OUT] [get_bd_intf_pins axis_data_fifo_reader_to_vga/M_AXIS]
  connect_bd_intf_net -intf_net axis_to_ddr_writer_0_m_axi_base_ddr_addr [get_bd_intf_pins axi_mem_intercon_writer/S00_AXI] [get_bd_intf_pins axis_to_ddr_writer_0/m_axi_base_ddr_addr]
  connect_bd_intf_net -intf_net ddr_to_axis_reader_0_m_axi_base_ddr_addr [get_bd_intf_pins axi_mem_intercon_reader/S00_AXI] [get_bd_intf_pins ddr_to_axis_reader_0/m_axi_base_ddr_addr]
  connect_bd_intf_net -intf_net ddr_to_axis_reader_0_outStream_V [get_bd_intf_pins axis_data_fifo_reader_to_vga/S_AXIS] [get_bd_intf_pins ddr_to_axis_reader_0/outStream_V]
  connect_bd_intf_net -intf_net s_axi_AXILiteS1_1 [get_bd_intf_pins s_axi_AXILiteS1] [get_bd_intf_pins ddr_to_axis_reader_0/s_axi_AXILiteS]
  connect_bd_intf_net -intf_net s_axi_AXILiteS_1 [get_bd_intf_pins s_axi_AXILiteS] [get_bd_intf_pins axis_to_ddr_writer_0/s_axi_AXILiteS]

  # Create port connections
  connect_bd_net -net CLOCK_100M_1 [get_bd_pins clk_vdma] [get_bd_pins axi_mem_intercon_reader/ACLK] [get_bd_pins axi_mem_intercon_reader/M00_ACLK] [get_bd_pins axi_mem_intercon_reader/S00_ACLK] [get_bd_pins axi_mem_intercon_writer/ACLK] [get_bd_pins axi_mem_intercon_writer/M00_ACLK] [get_bd_pins axi_mem_intercon_writer/S00_ACLK] [get_bd_pins axis_data_fifo_pipeline_to_writer/m_axis_aclk] [get_bd_pins axis_data_fifo_reader_to_vga/s_axis_aclk] [get_bd_pins axis_to_ddr_writer_0/ap_clk] [get_bd_pins ddr_to_axis_reader_0/ap_clk]
  connect_bd_net -net PCLK_1 [get_bd_pins clk_in] [get_bd_pins axis_data_fifo_pipeline_to_writer/s_axis_aclk]
  connect_bd_net -net aresetn_vga [get_bd_pins aresetn_out] [get_bd_pins axis_data_fifo_reader_to_vga/m_axis_aresetn]
  connect_bd_net -net axis_to_ddr_writer_0_frame_index_V [get_bd_pins frame_index_V] [get_bd_pins axis_to_ddr_writer_0/frame_index_V] [get_bd_pins ddr_to_axis_reader_0/frame_index_V]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_out] [get_bd_pins axis_data_fifo_reader_to_vga/m_axis_aclk]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins aresetn_in] [get_bd_pins axis_data_fifo_pipeline_to_writer/s_axis_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins axi_mem_intercon_reader/ARESETN] [get_bd_pins axi_mem_intercon_writer/ARESETN]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins aresetn_vdma] [get_bd_pins axi_mem_intercon_reader/M00_ARESETN] [get_bd_pins axi_mem_intercon_reader/S00_ARESETN] [get_bd_pins axi_mem_intercon_writer/M00_ARESETN] [get_bd_pins axi_mem_intercon_writer/S00_ARESETN] [get_bd_pins axis_data_fifo_pipeline_to_writer/m_axis_aresetn] [get_bd_pins axis_data_fifo_reader_to_vga/s_axis_aresetn] [get_bd_pins axis_to_ddr_writer_0/ap_rst_n] [get_bd_pins ddr_to_axis_reader_0/ap_rst_n]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: OV7670_GRAYSCALE_TO_AXIS
proc create_hier_cell_OV7670_GRAYSCALE_TO_AXIS { parentCell nameHier } {

  if { $parentCell eq "" || $nameHier eq "" } {
     puts "ERROR: create_hier_cell_OV7670_GRAYSCALE_TO_AXIS() - Empty argument(s)!"
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 outStream_V_V

  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst
  create_bd_pin -dir I -from 0 -to 0 -type rst ap_rst_n
  create_bd_pin -dir I -from 0 -to 0 ap_start
  create_bd_pin -dir I -from 7 -to 0 -type data data_in
  create_bd_pin -dir I -from 0 -to 0 -type data href
  create_bd_pin -dir I -from 0 -to 0 -type data vsync

  # Create instance: LF_valid_to_AXIS, and set properties
  set LF_valid_to_AXIS [ create_bd_cell -type ip -vlnv xilinx.com:hls:LF_valid_to_AXIS:1.0 LF_valid_to_AXIS ]

  # Create instance: ov7670_grayscale, and set properties
  set ov7670_grayscale [ create_bd_cell -type ip -vlnv xilinx.com:hls:ov7670_grayscale:1.0 ov7670_grayscale ]

  # Create instance: ov7670_interface_0, and set properties
  set ov7670_interface_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ov7670_interface:1.0 ov7670_interface_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net LF_valid_to_AXIS_outputStream_V_V [get_bd_intf_pins LF_valid_to_AXIS/outputStream_V_V] [get_bd_intf_pins ov7670_grayscale/inStream_V_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets LF_valid_to_AXIS_outputStream_V_V]
  connect_bd_intf_net -intf_net ov7670_grayscale_0_outStream_V_V [get_bd_intf_pins outStream_V_V] [get_bd_intf_pins ov7670_grayscale/outStream_V_V]

  # Create port connections
  connect_bd_net -net PCLK_1 [get_bd_pins ap_clk] [get_bd_pins LF_valid_to_AXIS/ap_clk] [get_bd_pins ov7670_grayscale/ap_clk] [get_bd_pins ov7670_interface_0/ap_clk]
  connect_bd_net -net ap_start_1 [get_bd_pins ap_start] [get_bd_pins LF_valid_to_AXIS/ap_start] [get_bd_pins ov7670_grayscale/ap_start] [get_bd_pins ov7670_interface_0/ap_start]
  connect_bd_net -net data_in_V_1 [get_bd_pins data_in] [get_bd_pins ov7670_interface_0/data_in_V]
  connect_bd_net -net href_V_1 [get_bd_pins href] [get_bd_pins ov7670_interface_0/href_V]
  connect_bd_net -net ov7670_interface_0_data_out_V [get_bd_pins LF_valid_to_AXIS/data_in_V] [get_bd_pins ov7670_interface_0/data_out_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets ov7670_interface_0_data_out_V]
  connect_bd_net -net ov7670_interface_0_frame_valid_V [get_bd_pins LF_valid_to_AXIS/frame_valid] [get_bd_pins ov7670_interface_0/frame_valid_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets ov7670_interface_0_frame_valid_V]
  connect_bd_net -net ov7670_interface_0_line_valid_V [get_bd_pins LF_valid_to_AXIS/line_valid] [get_bd_pins ov7670_interface_0/line_valid_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets ov7670_interface_0_line_valid_V]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins ap_rst_n] [get_bd_pins LF_valid_to_AXIS/ap_rst_n] [get_bd_pins ov7670_grayscale/ap_rst_n]
  connect_bd_net -net reset_24M_peripheral_reset [get_bd_pins ap_rst] [get_bd_pins ov7670_interface_0/ap_rst]
  connect_bd_net -net vsync_V_1 [get_bd_pins vsync] [get_bd_pins ov7670_interface_0/vsync_V]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set B_V [ create_bd_port -dir O -from 3 -to 0 -type data B_V ]
  set G_V [ create_bd_port -dir O -from 3 -to 0 -type data G_V ]
  set H_SYNC_V [ create_bd_port -dir O -from 0 -to 0 -type data H_SYNC_V ]
  set OV7670_RESET [ create_bd_port -dir O -from 0 -to 0 -type rst OV7670_RESET ]
  set PCLK [ create_bd_port -dir I -type clk PCLK ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {24000000} \
 ] $PCLK
  set R_V [ create_bd_port -dir O -from 3 -to 0 -type data R_V ]
  set V_SYNC_V [ create_bd_port -dir O -from 0 -to 0 -type data V_SYNC_V ]
  set XCLK [ create_bd_port -dir O -type clk XCLK ]
  set data_in_V [ create_bd_port -dir I -from 7 -to 0 -type data data_in_V ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $data_in_V
  set href_V [ create_bd_port -dir I -from 0 -to 0 -type data href_V ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $href_V
  set id_filter [ create_bd_port -dir I -from 2 -to 0 -type data id_filter ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $id_filter
  set reset_sw [ create_bd_port -dir I -type intr reset_sw ]
  set selftest [ create_bd_port -dir I -from 0 -to 0 -type data selftest ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $selftest
  set vsync_V [ create_bd_port -dir I -from 0 -to 0 -type data vsync_V ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $vsync_V

  # Create instance: Filter_Convolution, and set properties
  set Filter_Convolution [ create_bd_cell -type ip -vlnv xilinx.com:hls:Filter_Convolution:1.0 Filter_Convolution ]

  # Create instance: OV7670_GRAYSCALE_TO_AXIS
  create_hier_cell_OV7670_GRAYSCALE_TO_AXIS [current_bd_instance .] OV7670_GRAYSCALE_TO_AXIS

  # Create instance: VDMA
  create_hier_cell_VDMA [current_bd_instance .] VDMA

  # Create instance: axi_gpio_frame_intr, and set properties
  set axi_gpio_frame_intr [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_frame_intr ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO_WIDTH {8} \
CONFIG.C_INTERRUPT_PRESENT {1} \
 ] $axi_gpio_frame_intr

  # Create instance: axi_gpio_pl_reset, and set properties
  set axi_gpio_pl_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_pl_reset ]
  set_property -dict [ list \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_DOUT_DEFAULT {0x00000001} \
CONFIG.C_GPIO_WIDTH {1} \
 ] $axi_gpio_pl_reset

  # Create instance: axi_stream_to_vga_0, and set properties
  set axi_stream_to_vga_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axi_stream_to_vga:1.0 axi_stream_to_vga_0 ]

  # Create instance: clk_gen_25M_24M, and set properties
  set clk_gen_25M_24M [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_gen_25M_24M ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {469.645} \
CONFIG.CLKOUT1_PHASE_ERROR {476.991} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.175} \
CONFIG.CLKOUT2_JITTER {473.605} \
CONFIG.CLKOUT2_PHASE_ERROR {476.991} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {24} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {53.750} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {30.500} \
CONFIG.MMCM_CLKOUT1_DIVIDE {32} \
CONFIG.MMCM_DIVCLK_DIVIDE {7} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_gen_25M_24M

  # Create instance: const_1, and set properties
  set const_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_1 ]

  # Create instance: const_true, and set properties
  set const_true [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_true ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(24)/LPR(8)} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {1} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {1} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {High} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {High} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {1} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_M_AXI_GP0 {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {0} \
CONFIG.PCW_USE_S_AXI_HP2 {1} \
CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
 ] $processing_system7_0_axi_periph

  # Create instance: reset_100M, and set properties
  set reset_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_100M ]

  # Create instance: reset_24M, and set properties
  set reset_24M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_24M ]

  # Create instance: reset_25M, and set properties
  set reset_25M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_25M ]

  # Create instance: xlconcat, and set properties
  set xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat ]

  # Create interface connections
  connect_bd_intf_net -intf_net AXIS_IN_1 [get_bd_intf_pins Filter_Convolution/out_img_V] [get_bd_intf_pins VDMA/AXIS_IN]
  connect_bd_intf_net -intf_net OV7670_GRAYSCALE_TO_AXIS_outStream_V_V [get_bd_intf_pins Filter_Convolution/in_img_V] [get_bd_intf_pins OV7670_GRAYSCALE_TO_AXIS/outStream_V_V]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins VDMA/AXIM_WRITER] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_mem_intercon_reader_M00_AXI [get_bd_intf_pins VDMA/AXIM_READER] [get_bd_intf_pins processing_system7_0/S_AXI_HP2]
  connect_bd_intf_net -intf_net axis_data_fifo_reader_to_vga_M_AXIS [get_bd_intf_pins VDMA/AXIS_OUT] [get_bd_intf_pins axi_stream_to_vga_0/inStream_V_V]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_frame_intr/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins axi_gpio_pl_reset/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins VDMA/s_axi_AXILiteS] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins VDMA/s_axi_AXILiteS1] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net CLOCK_100M_1 [get_bd_pins VDMA/clk_vdma] [get_bd_pins axi_gpio_frame_intr/s_axi_aclk] [get_bd_pins axi_gpio_pl_reset/s_axi_aclk] [get_bd_pins clk_gen_25M_24M/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins reset_100M/slowest_sync_clk]
  connect_bd_net -net PCLK_1 [get_bd_ports PCLK] [get_bd_pins Filter_Convolution/ap_clk] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/ap_clk] [get_bd_pins VDMA/clk_in] [get_bd_pins reset_24M/slowest_sync_clk]
  connect_bd_net -net ap_start_1 [get_bd_pins Filter_Convolution/ap_start] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/ap_start] [get_bd_pins VDMA/ap_start] [get_bd_pins axi_stream_to_vga_0/ap_start] [get_bd_pins const_true/dout]
  connect_bd_net -net axi_gpio_frame_intr_ip2intc_irpt [get_bd_pins axi_gpio_frame_intr/ip2intc_irpt] [get_bd_pins xlconcat/In0]
  connect_bd_net -net axi_stream_to_vga_0_B_V [get_bd_ports B_V] [get_bd_pins axi_stream_to_vga_0/B_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axi_stream_to_vga_0_B_V]
  connect_bd_net -net axi_stream_to_vga_0_G_V [get_bd_ports G_V] [get_bd_pins axi_stream_to_vga_0/G_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axi_stream_to_vga_0_G_V]
  connect_bd_net -net axi_stream_to_vga_0_H_SYNC_V [get_bd_ports H_SYNC_V] [get_bd_pins axi_stream_to_vga_0/H_SYNC_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axi_stream_to_vga_0_H_SYNC_V]
  connect_bd_net -net axi_stream_to_vga_0_R_V [get_bd_ports R_V] [get_bd_pins axi_stream_to_vga_0/R_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axi_stream_to_vga_0_R_V]
  connect_bd_net -net axi_stream_to_vga_0_V_SYNC_V [get_bd_ports V_SYNC_V] [get_bd_pins axi_stream_to_vga_0/V_SYNC_V]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axi_stream_to_vga_0_V_SYNC_V]
  connect_bd_net -net axis_to_ddr_writer_0_frame_index_V [get_bd_pins VDMA/frame_index_V] [get_bd_pins axi_gpio_frame_intr/gpio_io_i]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets axis_to_ddr_writer_0_frame_index_V]
  connect_bd_net -net clk_gen_25M_23M_clk_out2 [get_bd_ports XCLK] [get_bd_pins clk_gen_25M_24M/clk_out2]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins VDMA/clk_out] [get_bd_pins axi_stream_to_vga_0/ap_clk] [get_bd_pins clk_gen_25M_24M/clk_out1] [get_bd_pins reset_25M/slowest_sync_clk]
  connect_bd_net -net data_in_V_1 [get_bd_ports data_in_V] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/data_in]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets data_in_V_1]
  connect_bd_net -net ext_reset_in_1 [get_bd_ports OV7670_RESET] [get_bd_pins axi_gpio_pl_reset/gpio_io_o] [get_bd_pins reset_100M/ext_reset_in] [get_bd_pins reset_24M/ext_reset_in] [get_bd_pins reset_25M/ext_reset_in]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets ext_reset_in_1]
  connect_bd_net -net href_V_1 [get_bd_ports href_V] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/href]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets href_V_1]
  connect_bd_net -net id_filter_1 [get_bd_ports id_filter] [get_bd_pins Filter_Convolution/id_filter_V]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins Filter_Convolution/ap_rst_n] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/ap_rst_n] [get_bd_pins VDMA/aresetn_in] [get_bd_pins reset_24M/peripheral_aresetn]
  connect_bd_net -net reset_24M_peripheral_reset [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/ap_rst] [get_bd_pins reset_24M/peripheral_reset]
  connect_bd_net -net reset_25M_peripheral_aresetn [get_bd_pins VDMA/aresetn_out] [get_bd_pins axi_stream_to_vga_0/ap_rst_n] [get_bd_pins reset_25M/peripheral_aresetn]
  connect_bd_net -net reset_sw_1 [get_bd_ports reset_sw] [get_bd_pins xlconcat/In1]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins VDMA/interconnect_aresetn] [get_bd_pins reset_100M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins VDMA/aresetn_vdma] [get_bd_pins axi_gpio_frame_intr/s_axi_aresetn] [get_bd_pins reset_100M/peripheral_aresetn]
  connect_bd_net -net selftest_1 [get_bd_ports selftest] [get_bd_pins axi_stream_to_vga_0/selftest]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets selftest_1]
  connect_bd_net -net vsync_V_1 [get_bd_ports vsync_V] [get_bd_pins OV7670_GRAYSCALE_TO_AXIS/vsync]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets vsync_V_1]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_gpio_pl_reset/s_axi_aresetn] [get_bd_pins const_1/dout] [get_bd_pins processing_system7_0_axi_periph/ARESETN] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN]

  # Create address segments
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_frame_intr/S_AXI/Reg] SEG_axi_gpio_frame_intr_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_pl_reset/S_AXI/Reg] SEG_axi_gpio_pl_reset_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs VDMA/axis_to_ddr_writer_0/s_axi_AXILiteS/Reg] SEG_axis_to_ddr_writer_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs VDMA/ddr_to_axis_reader_0/s_axi_AXILiteS/Reg] SEG_ddr_to_axis_reader_0_Reg
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces VDMA/axis_to_ddr_writer_0/Data_m_axi_base_ddr_addr] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces VDMA/ddr_to_axis_reader_0/Data_m_axi_base_ddr_addr] [get_bd_addr_segs processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_processing_system7_0_HP2_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 190 -defaultsOSRD
preplace port XCLK -pg 1 -y 720 -defaultsOSRD
preplace port PCLK -pg 1 -y 790 -defaultsOSRD
preplace port reset_sw -pg 1 -y 750 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 210 -defaultsOSRD
preplace portBus V_SYNC_V -pg 1 -y 500 -defaultsOSRD
preplace portBus OV7670_RESET -pg 1 -y 660 -defaultsOSRD
preplace portBus href_V -pg 1 -y 1050 -defaultsOSRD
preplace portBus selftest -pg 1 -y 730 -defaultsOSRD
preplace portBus R_V -pg 1 -y 440 -defaultsOSRD
preplace portBus data_in_V -pg 1 -y 1020 -defaultsOSRD
preplace portBus H_SYNC_V -pg 1 -y 520 -defaultsOSRD
preplace portBus id_filter -pg 1 -y 770 -defaultsOSRD
preplace portBus B_V -pg 1 -y 480 -defaultsOSRD
preplace portBus vsync_V -pg 1 -y 1080 -defaultsOSRD
preplace portBus G_V -pg 1 -y 460 -defaultsOSRD
preplace inst VDMA -pg 1 -lvl 4 -y 340 -defaultsOSRD
preplace inst Filter_Convolution -pg 1 -lvl 3 -y 890 -defaultsOSRD
preplace inst OV7670_GRAYSCALE_TO_AXIS|ov7670_grayscale -pg 1 -lvl 3 -y 942 -defaultsOSRD
preplace inst const_true -pg 1 -lvl 1 -y 990 -defaultsOSRD
preplace inst axi_stream_to_vga_0 -pg 1 -lvl 5 -y 480 -defaultsOSRD
preplace inst axi_gpio_frame_intr -pg 1 -lvl 4 -y 130 -defaultsOSRD
preplace inst clk_gen_25M_24M -pg 1 -lvl 4 -y 710 -defaultsOSRD
preplace inst OV7670_GRAYSCALE_TO_AXIS|LF_valid_to_AXIS -pg 1 -lvl 2 -y 1002 -defaultsOSRD
preplace inst xlconcat -pg 1 -lvl 4 -y 840 -defaultsOSRD
preplace inst reset_25M -pg 1 -lvl 3 -y 640 -defaultsOSRD
preplace inst reset_24M -pg 1 -lvl 1 -y 870 -defaultsOSRD
preplace inst reset_100M -pg 1 -lvl 3 -y 460 -defaultsOSRD
preplace inst OV7670_GRAYSCALE_TO_AXIS -pg 1 -lvl 2 -y 952 -defaultsOSRD
preplace inst const_1 -pg 1 -lvl 2 -y 110 -defaultsOSRD
preplace inst axi_gpio_pl_reset -pg 1 -lvl 5 -y 650 -defaultsOSRD
preplace inst OV7670_GRAYSCALE_TO_AXIS|ov7670_interface_0 -pg 1 -lvl 1 -y 1042 -defaultsOSRD
preplace inst processing_system7_0_axi_periph -pg 1 -lvl 3 -y 190 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 5 -y 270 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 5 1 NJ
preplace netloc clk_gen_25M_23M_clk_out2 1 4 2 NJ 720 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|PCLK_1 1 0 3 550 902 880 872 NJ
preplace netloc AXIS_IN_1 1 3 1 2180
preplace netloc axis_data_fifo_reader_to_vga_M_AXIS 1 4 1 2600
preplace netloc OV7670_GRAYSCALE_TO_AXIS|href_V_1 1 0 1 N
preplace netloc OV7670_GRAYSCALE_TO_AXIS|proc_sys_reset_0_peripheral_aresetn 1 0 3 NJ 922 890 892 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|ov7670_interface_0_frame_valid_V 1 1 1 900
preplace netloc processing_system7_0_axi_periph_M03_AXI 1 3 1 2150
preplace netloc processing_system7_0_axi_periph_M00_AXI 1 3 1 2130
preplace netloc href_V_1 1 0 2 NJ 1050 NJ
preplace netloc reset_25M_peripheral_aresetn 1 3 2 2190 510 NJ
preplace netloc selftest_1 1 0 5 NJ 760 NJ 760 NJ 760 NJ 770 NJ
preplace netloc axi_stream_to_vga_0_G_V 1 5 1 NJ
preplace netloc PCLK_1 1 0 4 30 780 420 790 1790 790 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|LF_valid_to_AXIS_outputStream_V_V 1 2 1 1260
preplace netloc OV7670_GRAYSCALE_TO_AXIS|data_in_V_1 1 0 1 N
preplace netloc processing_system7_0_M_AXI_GP0 1 2 4 1800 10 NJ 10 NJ 10 3080
preplace netloc axi_stream_to_vga_0_R_V 1 5 1 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|vsync_V_1 1 0 1 N
preplace netloc ap_start_1 1 1 4 400 830 1800 770 2150 490 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|reset_24M_peripheral_reset 1 0 1 N
preplace netloc axi_mem_intercon_M00_AXI 1 4 1 2580
preplace netloc reset_24M_peripheral_reset 1 1 1 410
preplace netloc data_in_V_1 1 0 2 NJ 1060 NJ
preplace netloc axi_stream_to_vga_0_H_SYNC_V 1 5 1 NJ
preplace netloc processing_system7_0_axi_periph_M02_AXI 1 3 1 2230
preplace netloc axi_gpio_frame_intr_ip2intc_irpt 1 3 2 2250 50 2580
preplace netloc vsync_V_1 1 0 2 NJ 1080 NJ
preplace netloc rst_processing_system7_0_100M_peripheral_aresetn 1 3 1 2140
preplace netloc xlconcat_0_dout 1 4 1 2630
preplace netloc xlconstant_0_dout 1 2 3 1780 730 NJ 650 NJ
preplace netloc axis_to_ddr_writer_0_frame_index_V 1 4 1 2570
preplace netloc axi_stream_to_vga_0_B_V 1 5 1 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS_outStream_V_V 1 2 1 1770
preplace netloc processing_system7_0_FIXED_IO 1 5 1 NJ
preplace netloc ext_reset_in_1 1 0 6 40 740 NJ 740 1770 740 NJ 780 NJ 780 3080
preplace netloc clk_wiz_0_clk_out1 1 2 3 1800 550 2200 500 2640
preplace netloc OV7670_GRAYSCALE_TO_AXIS|ov7670_interface_0_line_valid_V 1 1 1 880
preplace netloc OV7670_GRAYSCALE_TO_AXIS|ov7670_interface_0_data_out_V 1 1 1 N
preplace netloc axi_mem_intercon_reader_M00_AXI 1 4 1 2590
preplace netloc proc_sys_reset_0_peripheral_aresetn 1 1 3 380 1180 1800 990 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|ap_start_1 1 0 3 560 932 900 882 NJ
preplace netloc rst_processing_system7_0_100M_interconnect_aresetn 1 3 1 2160
preplace netloc id_filter_1 1 0 3 NJ 770 NJ 770 NJ
preplace netloc reset_sw_1 1 0 4 NJ 750 NJ 750 NJ 750 NJ
preplace netloc CLOCK_100M_1 1 2 4 1800 370 2210 40 2620 580 3080
preplace netloc axi_stream_to_vga_0_V_SYNC_V 1 5 1 NJ
preplace netloc OV7670_GRAYSCALE_TO_AXIS|ov7670_grayscale_0_outStream_V_V 1 3 1 N
preplace netloc processing_system7_0_axi_periph_M01_AXI 1 3 2 2120 60 NJ
levelinfo -pg 1 -10 210 610 1960 2410 2869 3110 -top 0 -bot 1190
levelinfo -hier OV7670_GRAYSCALE_TO_AXIS * 720 1080 1470 *
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


