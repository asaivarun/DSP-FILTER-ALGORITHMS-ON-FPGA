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
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.cache/wt [current_project]
  set_property parent.project_path C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.xpr [current_project]
  set_property ip_repo_paths c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.cache/ip [current_project]
  set_property ip_output_repo c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.runs/synth_1/noise_cancel_fixpt_fil.dcp
  add_files -quiet C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo.dcp
  set_property netlist_only true [get_files C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo.dcp]
  add_files -quiet C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo.dcp
  set_property netlist_only true [get_files C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo.dcp]
  add_files -quiet C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  read_xdc -mode out_of_context -ref simcycle_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo_ooc.xdc]
  read_xdc -ref simcycle_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo/simcycle_fifo.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo/simcycle_fifo.xdc]
  read_xdc -mode out_of_context -ref jtag_mac_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_ooc.xdc]
  read_xdc -ref jtag_mac_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo/jtag_mac_fifo.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo/jtag_mac_fifo.xdc]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells inst c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc C:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/filsrc/noise_cancel_fixpt_fil.xdc
  read_xdc -ref simcycle_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo/simcycle_fifo_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/simcycle_fifo/simcycle_fifo/simcycle_fifo_clocks.xdc]
  read_xdc -ref jtag_mac_fifo -cells U0 c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo/jtag_mac_fifo_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/admin/Desktop/bhavesh/noise_cancel/fil/noise_cancel_fixpt_fil/fpgaproj/noise_cancel_fixpt_fil.srcs/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo/jtag_mac_fifo_clocks.xdc]
  link_design -top noise_cancel_fixpt_fil -part xc7a100tcsg324-1
  write_hwdef -file noise_cancel_fixpt_fil.hwdef
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
  write_checkpoint -force noise_cancel_fixpt_fil_opt.dcp
  report_drc -file noise_cancel_fixpt_fil_drc_opted.rpt
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
  write_checkpoint -force noise_cancel_fixpt_fil_placed.dcp
  report_io -file noise_cancel_fixpt_fil_io_placed.rpt
  report_utilization -file noise_cancel_fixpt_fil_utilization_placed.rpt -pb noise_cancel_fixpt_fil_utilization_placed.pb
  report_control_sets -verbose -file noise_cancel_fixpt_fil_control_sets_placed.rpt
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
  write_checkpoint -force noise_cancel_fixpt_fil_routed.dcp
  report_drc -file noise_cancel_fixpt_fil_drc_routed.rpt -pb noise_cancel_fixpt_fil_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file noise_cancel_fixpt_fil_timing_summary_routed.rpt -rpx noise_cancel_fixpt_fil_timing_summary_routed.rpx
  report_power -file noise_cancel_fixpt_fil_power_routed.rpt -pb noise_cancel_fixpt_fil_power_summary_routed.pb -rpx noise_cancel_fixpt_fil_power_routed.rpx
  report_route_status -file noise_cancel_fixpt_fil_route_status.rpt -pb noise_cancel_fixpt_fil_route_status.pb
  report_clock_utilization -file noise_cancel_fixpt_fil_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

