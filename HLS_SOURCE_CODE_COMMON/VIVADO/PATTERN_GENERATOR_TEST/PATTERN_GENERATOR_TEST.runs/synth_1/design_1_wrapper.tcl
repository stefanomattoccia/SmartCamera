# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.cache/wt [current_project]
set_property parent.project_path C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths {
  c:/Users/Riccardo/Documents/HLS_COMMON/VGA/AXI_STREAM_TO_VGA
  c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS
  c:/Users/Riccardo/Documents/HLS_COMMON/DDR/AXIS_TO_DDR_WRITER_VGA64
  c:/Users/Riccardo/Documents/HLS_COMMON/DDR/DDR_TO_AXIS_READER_VGA64
} [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0/design_1_axis_data_fifo_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axi_stream_to_vga_0_0/constraints/axi_stream_to_vga_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_1/design_1_proc_sys_reset_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0/design_1_axis_data_fifo_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_ddr_to_axis_reader_0_1/constraints/ddr_to_axis_reader_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_axis_to_ddr_writer_0_1/constraints/axis_to_ddr_writer_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_pattern_generator_cross_0_0/constraints/pattern_generator_cross_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.srcs/constrs_1/new/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7z020clg484-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
