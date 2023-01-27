
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name CDC_test -dir "F:/Edu/FPGA/CDC/planAhead_run_1" -part xc6slx45fgg484-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "F:/Edu/FPGA/CDC/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/Edu/FPGA/CDC} {ipcore_dir} }
set_property target_constrs_file "PX6SL01_Test.ucf" [current_fileset -constrset]
add_files [list {PX6SL01_Test.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "F:/Edu/FPGA/CDC/top.ncd"
if {[catch {read_twx -name results_1 -file "F:/Edu/FPGA/CDC/top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"F:/Edu/FPGA/CDC/top.twx\": $eInfo"
}
