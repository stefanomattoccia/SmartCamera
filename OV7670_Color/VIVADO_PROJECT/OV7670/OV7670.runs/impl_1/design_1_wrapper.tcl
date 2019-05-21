proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.cache/wt [current_project]
  set_property parent.project_path F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.xpr [current_project]
  set_property ip_repo_paths {
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.cache/ip
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_HLS/OV7670_INTERFACE
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/FILTERS/Configurable_Convolution_Filter
  F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/FILTERS/Sep_Convolution_Filter
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_HLS/OV7670_LUMA_CHROMA
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/VIDEO_STREAM_MUX
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_HLS/OV7670_GRAYSCALE
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/LF_VALID_TO_AXIS
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/DDR/AXIS_TO_DDR_WRITER_AXILITE
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/DDR/DDR_TO_AXIS_READER_AXILITE
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/DDR/DDR_TO_AXIS_READER_AXILITE_SD
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/FILTERS/FILTER_CONVOLUTION
  f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/HLS_COMMON/VGA/AXI_STREAM_TO_VGA
} [current_project]
  set_property ip_output_repo f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.runs/synth_1/design_1_wrapper.dcp
  read_xdc -ref design_1_processing_system7_0_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
  read_xdc -ref design_1_axis_data_fifo_0_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_rst_processing_system7_0_100M_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref design_1_rst_processing_system7_0_100M_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_clk_wiz_0_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
  read_xdc -ref design_1_clk_wiz_0_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_reset_0_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc]
  read_xdc -ref design_1_proc_sys_reset_0_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_proc_sys_reset_0_1 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_board.xdc]
  read_xdc -ref design_1_proc_sys_reset_0_1 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1.xdc]
  read_xdc -ref design_1_axis_data_fifo_1_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_0_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
  read_xdc -ref design_1_axi_gpio_0_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref design_1_axi_gpio_1_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_board.xdc]
  read_xdc -ref design_1_axi_gpio_1_0 -cells U0 f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0.xdc]
  read_xdc -ref design_1_axis_data_fifo_0_2 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2.xdc]
  read_xdc -ref design_1_axis_data_fifo_1_2 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2.xdc
  set_property processing_order EARLY [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2.xdc]
  read_xdc F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/constrs_1/new/constraints.xdc
  read_xdc -ref design_1_axis_data_fifo_0_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_clocks.xdc
  set_property processing_order LATE [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_clocks.xdc]
  read_xdc -ref design_1_axis_data_fifo_1_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0_clocks.xdc
  set_property processing_order LATE [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0_clocks.xdc]
  read_xdc -ref design_1_axis_data_fifo_0_2 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2_clocks.xdc
  set_property processing_order LATE [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2/design_1_axis_data_fifo_0_2_clocks.xdc]
  read_xdc -ref design_1_axis_data_fifo_1_2 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2_clocks.xdc
  set_property processing_order LATE [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2/design_1_axis_data_fifo_1_2_clocks.xdc]
  read_xdc -ref design_1_auto_cc_0 -cells inst f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files f:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc]
  link_design -top design_1_wrapper -part xc7z020clg484-1
  write_hwdef -file design_1_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force design_1_wrapper_opt.dcp
  report_drc -file design_1_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force design_1_wrapper_placed.dcp
  report_io -file design_1_wrapper_io_placed.rpt
  report_utilization -file design_1_wrapper_utilization_placed.rpt -pb design_1_wrapper_utilization_placed.pb
  report_control_sets -verbose -file design_1_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force design_1_wrapper_routed.dcp
  report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -rpx design_1_wrapper_timing_summary_routed.rpx
  report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
  report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
  report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force design_1_wrapper.mmi }
  write_bitstream -force design_1_wrapper.bit 
  catch { write_sysdef -hwdef design_1_wrapper.hwdef -bitfile design_1_wrapper.bit -meminfo design_1_wrapper.mmi -file design_1_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

