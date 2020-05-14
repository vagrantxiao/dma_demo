#!/usr/bin/tclsh
connect -url tcp:127.0.0.1:3121
fpga ./floorplan_static_wrapper_hw_platform_0/floorplan_static_wrapper.bit
targets 9
loadhw ./floorplan_static_wrapper_hw_platform_0/system.hdf
source ././floorplan_static_wrapper_hw_platform_0/psu_init.tcl
# psu_init
# psu_post_config
# dow ./${project_name}/Debug/${project_name}.elf
# con
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A5EE19"} -index 1
rst -processor
dow ./${project_name}/Debug/${project_name}.elf
configparams force-mem-access 0
con

exit
