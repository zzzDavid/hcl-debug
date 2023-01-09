#=============================================================================
# run.tcl 
#=============================================================================
# @brief: A Tcl script for synthesizing the matrix-vector multiply design.
#
# @desc: This script launches a simulation & synthesis run
#
#------------------------------------------------------

# open the HLS project
open_project -reset kernel.prj 

# set the top-level function of the design
set_top kernel

# add design and testbench files
add_files kernel.cpp
add_files -tb host.cpp

open_solution "solution1"

# use Zynq device
set_part xc7z020clg484-1
# set_part {xczu3eg-sbva484-1-i}

# target clock period is 10 ns
create_clock -period 10 -name default

# do a c simulation
csim_design

# synthesize the design
# csynth_design

# do a co-simulation
# cosim_design

# export output RTL as IP
# export_design -format ip_catalog

# exit vivado HLS
exit
