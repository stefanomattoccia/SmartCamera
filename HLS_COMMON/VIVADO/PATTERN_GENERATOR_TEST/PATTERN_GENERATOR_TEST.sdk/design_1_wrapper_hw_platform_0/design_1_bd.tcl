
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
  set R_V [ create_bd_port -dir O -from 3 -to 0 -type data R_V ]
  set V_SYNC_V [ create_bd_port -dir O -from 0 -to 0 -type data V_SYNC_V ]
  set ext_reset_in [ create_bd_port -dir I -type rst ext_reset_in ]
  set selftest [ create_bd_port -dir I -from 0 -to 0 -type data selftest ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $selftest

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

  # Create instance: axi_stream_to_vga, and set properties
  set axi_stream_to_vga [ create_bd_cell -type ip -vlnv xilinx.com:hls:axi_stream_to_vga:1.0 axi_stream_to_vga ]

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

  # Create instance: axis_to_ddr_writer, and set properties
  set axis_to_ddr_writer [ create_bd_cell -type ip -vlnv xilinx.com:hls:axis_to_ddr_writer:1.0 axis_to_ddr_writer ]
  set_property -dict [ list \
CONFIG.C_M_AXI_BASE_DDR_ADDR_TARGET_ADDR {0x10000000} \
 ] $axis_to_ddr_writer

  # Create instance: clk_gen_25M_23M, and set properties
  set clk_gen_25M_23M [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.2 clk_gen_25M_23M ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {210.025} \
CONFIG.CLKOUT1_PHASE_ERROR {175.059} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.175} \
CONFIG.CLKOUT2_JITTER {215.269} \
CONFIG.CLKOUT2_PHASE_ERROR {175.059} \
CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {23} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.MMCM_CLKFBOUT_MULT_F {35.875} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {47.500} \
CONFIG.MMCM_CLKOUT1_DIVIDE {52} \
CONFIG.MMCM_DIVCLK_DIVIDE {3} \
CONFIG.NUM_OUT_CLKS {2} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_gen_25M_23M

  # Create instance: const_1, and set properties
  set const_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_1 ]

  # Create instance: ddr_to_axis_reader, and set properties
  set ddr_to_axis_reader [ create_bd_cell -type ip -vlnv xilinx.com:hls:ddr_to_axis_reader:1.0 ddr_to_axis_reader ]
  set_property -dict [ list \
CONFIG.C_M_AXI_BASE_DDR_ADDR_TARGET_ADDR {0x10000000} \
 ] $ddr_to_axis_reader

  # Create instance: pattern_generator_cross, and set properties
  set pattern_generator_cross [ create_bd_cell -type ip -vlnv xilinx.com:hls:pattern_generator_cross:1.0 pattern_generator_cross ]

  # Create instance: processing_system7, and set properties
  set processing_system7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7 ]
  set_property -dict [ list \
CONFIG.PCW_USE_M_AXI_GP0 {0} \
CONFIG.PCW_USE_S_AXI_HP0 {1} \
CONFIG.PCW_USE_S_AXI_HP1 {1} \
CONFIG.preset {ZedBoard} \
 ] $processing_system7

  # Create instance: reset_100M, and set properties
  set reset_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_100M ]

  # Create instance: reset_23M, and set properties
  set reset_23M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_23M ]

  # Create instance: reset_25M, and set properties
  set reset_25M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_25M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_mem_intercon_reader/M00_AXI] [get_bd_intf_pins processing_system7/S_AXI_HP1]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon_writer/M00_AXI] [get_bd_intf_pins processing_system7/S_AXI_HP0]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axi_stream_to_vga/inStream_V_V] [get_bd_intf_pins axis_data_fifo_reader_to_vga/M_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_pipeline_to_writer_M_AXIS [get_bd_intf_pins axis_data_fifo_pipeline_to_writer/M_AXIS] [get_bd_intf_pins axis_to_ddr_writer/inputStream_V]
  connect_bd_intf_net -intf_net axis_to_ddr_writer_m_axi_base_ddr_addr [get_bd_intf_pins axi_mem_intercon_writer/S00_AXI] [get_bd_intf_pins axis_to_ddr_writer/m_axi_base_ddr_addr]
  connect_bd_intf_net -intf_net ddr_to_axis_reader_0_outStream_V [get_bd_intf_pins axis_data_fifo_reader_to_vga/S_AXIS] [get_bd_intf_pins ddr_to_axis_reader/outStream_V]
  connect_bd_intf_net -intf_net ddr_to_axis_reader_m_axi_base_ddr_addr [get_bd_intf_pins axi_mem_intercon_reader/S00_AXI] [get_bd_intf_pins ddr_to_axis_reader/m_axi_base_ddr_addr]
  connect_bd_intf_net -intf_net pattern_generator_cross_0_outputStream_V [get_bd_intf_pins axis_data_fifo_pipeline_to_writer/S_AXIS] [get_bd_intf_pins pattern_generator_cross/outputStream_V]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7/FIXED_IO]

  # Create port connections
  connect_bd_net -net ap_start_1 [get_bd_pins axi_stream_to_vga/ap_start] [get_bd_pins axis_to_ddr_writer/ap_start] [get_bd_pins const_1/dout] [get_bd_pins ddr_to_axis_reader/ap_start]
  connect_bd_net -net axi_stream_to_vga_0_B_V [get_bd_ports B_V] [get_bd_pins axi_stream_to_vga/B_V]
  connect_bd_net -net axi_stream_to_vga_0_G_V [get_bd_ports G_V] [get_bd_pins axi_stream_to_vga/G_V]
  connect_bd_net -net axi_stream_to_vga_0_H_SYNC_V [get_bd_ports H_SYNC_V] [get_bd_pins axi_stream_to_vga/H_SYNC_V]
  connect_bd_net -net axi_stream_to_vga_0_R_V [get_bd_ports R_V] [get_bd_pins axi_stream_to_vga/R_V]
  connect_bd_net -net axi_stream_to_vga_0_V_SYNC_V [get_bd_ports V_SYNC_V] [get_bd_pins axi_stream_to_vga/V_SYNC_V]
  connect_bd_net -net axis_to_ddr_writer_frame_index_V [get_bd_pins axis_to_ddr_writer/frame_index_V] [get_bd_pins ddr_to_axis_reader/frame_index_V]
  connect_bd_net -net clk_gen_25M_23M_clk_out2 [get_bd_pins axis_data_fifo_pipeline_to_writer/s_axis_aclk] [get_bd_pins clk_gen_25M_23M/clk_out2] [get_bd_pins pattern_generator_cross/ap_clk] [get_bd_pins reset_23M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins axi_stream_to_vga/ap_clk] [get_bd_pins axis_data_fifo_reader_to_vga/m_axis_aclk] [get_bd_pins clk_gen_25M_23M/clk_out1] [get_bd_pins reset_25M/slowest_sync_clk]
  connect_bd_net -net ext_reset_in_1 [get_bd_ports ext_reset_in] [get_bd_pins reset_100M/ext_reset_in] [get_bd_pins reset_23M/ext_reset_in] [get_bd_pins reset_25M/ext_reset_in]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axis_data_fifo_pipeline_to_writer/s_axis_aresetn] [get_bd_pins pattern_generator_cross/ap_rst_n] [get_bd_pins reset_23M/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_mem_intercon_reader/ACLK] [get_bd_pins axi_mem_intercon_reader/M00_ACLK] [get_bd_pins axi_mem_intercon_reader/S00_ACLK] [get_bd_pins axi_mem_intercon_writer/ACLK] [get_bd_pins axi_mem_intercon_writer/M00_ACLK] [get_bd_pins axi_mem_intercon_writer/S00_ACLK] [get_bd_pins axis_data_fifo_pipeline_to_writer/m_axis_aclk] [get_bd_pins axis_data_fifo_reader_to_vga/s_axis_aclk] [get_bd_pins axis_to_ddr_writer/ap_clk] [get_bd_pins clk_gen_25M_23M/clk_in1] [get_bd_pins ddr_to_axis_reader/ap_clk] [get_bd_pins processing_system7/FCLK_CLK0] [get_bd_pins processing_system7/S_AXI_HP0_ACLK] [get_bd_pins processing_system7/S_AXI_HP1_ACLK] [get_bd_pins reset_100M/slowest_sync_clk]
  connect_bd_net -net reset_25M_interconnect_aresetn [get_bd_pins axis_data_fifo_reader_to_vga/m_axis_aresetn] [get_bd_pins reset_25M/interconnect_aresetn]
  connect_bd_net -net reset_25M_peripheral_aresetn [get_bd_pins axi_stream_to_vga/ap_rst_n] [get_bd_pins reset_25M/peripheral_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_interconnect_aresetn [get_bd_pins axi_mem_intercon_reader/ARESETN] [get_bd_pins axi_mem_intercon_writer/ARESETN] [get_bd_pins axis_data_fifo_reader_to_vga/s_axis_aresetn] [get_bd_pins reset_100M/interconnect_aresetn]
  connect_bd_net -net rst_processing_system7_0_100M_peripheral_aresetn [get_bd_pins axi_mem_intercon_reader/M00_ARESETN] [get_bd_pins axi_mem_intercon_reader/S00_ARESETN] [get_bd_pins axi_mem_intercon_writer/M00_ARESETN] [get_bd_pins axi_mem_intercon_writer/S00_ARESETN] [get_bd_pins axis_data_fifo_pipeline_to_writer/m_axis_aresetn] [get_bd_pins axis_to_ddr_writer/ap_rst_n] [get_bd_pins ddr_to_axis_reader/ap_rst_n] [get_bd_pins reset_100M/peripheral_aresetn]
  connect_bd_net -net selftest_1 [get_bd_ports selftest] [get_bd_pins axi_stream_to_vga/selftest]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axis_to_ddr_writer/Data_m_axi_base_ddr_addr] [get_bd_addr_segs processing_system7/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces ddr_to_axis_reader/Data_m_axi_base_ddr_addr] [get_bd_addr_segs processing_system7/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 40 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 60 -defaultsOSRD
preplace port ext_reset_in -pg 1 -y 640 -defaultsOSRD
preplace portBus V_SYNC_V -pg 1 -y 560 -defaultsOSRD
preplace portBus selftest -pg 1 -y 680 -defaultsOSRD
preplace portBus R_V -pg 1 -y 500 -defaultsOSRD
preplace portBus H_SYNC_V -pg 1 -y 580 -defaultsOSRD
preplace portBus B_V -pg 1 -y 540 -defaultsOSRD
preplace portBus G_V -pg 1 -y 520 -defaultsOSRD
preplace inst reset_23M -pg 1 -lvl 2 -y 460 -defaultsOSRD
preplace inst clk_gen_25M_23M -pg 1 -lvl 1 -y 570 -defaultsOSRD
preplace inst axi_mem_intercon_writer -pg 1 -lvl 6 -y 350 -defaultsOSRD
preplace inst axis_data_fifo_pipeline_to_writer -pg 1 -lvl 4 -y 340 -defaultsOSRD
preplace inst processing_system7 -pg 1 -lvl 7 -y 110 -defaultsOSRD
preplace inst axis_to_ddr_writer -pg 1 -lvl 5 -y 310 -defaultsOSRD
preplace inst axi_stream_to_vga -pg 1 -lvl 7 -y 540 -defaultsOSRD
preplace inst reset_25M -pg 1 -lvl 5 -y 590 -defaultsOSRD
preplace inst axi_mem_intercon_reader -pg 1 -lvl 6 -y 110 -defaultsOSRD
preplace inst reset_100M -pg 1 -lvl 3 -y 460 -defaultsOSRD
preplace inst const_1 -pg 1 -lvl 4 -y 100 -defaultsOSRD
preplace inst ddr_to_axis_reader -pg 1 -lvl 5 -y 120 -defaultsOSRD
preplace inst axis_data_fifo_reader_to_vga -pg 1 -lvl 6 -y 560 -defaultsOSRD
preplace inst pattern_generator_cross -pg 1 -lvl 3 -y 300 -defaultsOSRD
preplace netloc processing_system7_0_DDR 1 7 1 NJ
preplace netloc clk_gen_25M_23M_clk_out2 1 1 3 180 370 530 370 NJ
preplace netloc selftest_1 1 0 7 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ
preplace netloc reset_25M_peripheral_aresetn 1 5 2 NJ 660 1950
preplace netloc axi_stream_to_vga_0_G_V 1 7 1 NJ
preplace netloc axi_mem_intercon_1_M00_AXI 1 6 1 1960
preplace netloc axi_stream_to_vga_0_R_V 1 7 1 NJ
preplace netloc pattern_generator_cross_0_outputStream_V 1 3 1 N
preplace netloc ddr_to_axis_reader_m_axi_base_ddr_addr 1 5 1 1600
preplace netloc ap_start_1 1 4 3 1190 470 NJ 470 NJ
preplace netloc axi_mem_intercon_M00_AXI 1 6 1 1940
preplace netloc axi_stream_to_vga_0_H_SYNC_V 1 7 1 NJ
preplace netloc rst_processing_system7_0_100M_peripheral_aresetn 1 3 3 860 250 1200 210 1640
preplace netloc axi_stream_to_vga_0_B_V 1 7 1 NJ
preplace netloc reset_25M_interconnect_aresetn 1 5 1 1640
preplace netloc processing_system7_0_FIXED_IO 1 7 1 NJ
preplace netloc axis_data_fifo_pipeline_to_writer_M_AXIS 1 4 1 N
preplace netloc ext_reset_in_1 1 0 5 NJ 640 190 550 520 570 NJ 570 NJ
preplace netloc clk_wiz_0_clk_out1 1 1 6 NJ 560 NJ 560 NJ 560 1200 500 1600 650 1940
preplace netloc axis_to_ddr_writer_m_axi_base_ddr_addr 1 5 1 N
preplace netloc ddr_to_axis_reader_0_outStream_V 1 5 1 1610
preplace netloc proc_sys_reset_0_peripheral_aresetn 1 2 2 510 230 880
preplace netloc axis_data_fifo_0_M_AXIS 1 6 1 N
preplace netloc rst_processing_system7_0_100M_interconnect_aresetn 1 3 3 870 460 NJ 460 1630
preplace netloc processing_system7_0_FCLK_CLK0 1 0 8 20 630 NJ 630 530 550 880 430 1180 400 1620 230 1960 230 2380
preplace netloc axis_to_ddr_writer_frame_index_V 1 4 2 1210 220 1600
preplace netloc axi_stream_to_vga_0_V_SYNC_V 1 7 1 NJ
levelinfo -pg 1 0 100 350 690 1030 1400 1790 2170 2400 -top 0 -bot 700
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


