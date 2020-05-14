#!/usr/bin/tclsh
# set project_name "helloworld"
set project_name "poll_multi_pkt"
set example_prj "Empty Application"
# set language "C"
set language "C++"
set hdf_name "floorplan_static_wrapper"
set core_name "psu_cortexa53_0"
set vivado_prj "dma_demo" 
set_workspace ./



create_project -type hw -name ${hdf_name}_hw_platform_0\
	-hwspec ./${vivado_prj}/${vivado_prj}.sdk/${hdf_name}.hdf
create_project -type bsp -name ${project_name}_bsp -hwproject ${hdf_name}_hw_platform_0\
	-proc ${core_name} -os standalone
create_project -type app -name ${project_name} -hwproject floorplan_static_wrapper_hw_platform_0\
	-proc ${core_name} -os standalone -lang ${language} -app {Empty Application} -bsp ${project_name}_bsp

file delete -force ./${project_name}/src/main.cc
importsources -name ${project_name} -path ./C_source 

build -type bsp -name ${project_name}_bsp
build -type app -name ${project_name}
clean -type bsp -name ${project_name}_bsp
clean -type all
build -type all
