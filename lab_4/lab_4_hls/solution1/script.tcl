############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab_4_hls
set_top matrix_mult
add_files ../../Users/tshot/Documents/Embedded System/The_Zynq_Book_Tutorial_Sources_Aug_15/sources/hls/tut3A/matrix_mult.cpp
add_files ../../Users/tshot/Documents/Embedded System/The_Zynq_Book_Tutorial_Sources_Aug_15/sources/hls/tut3A/matrix_mult.h
add_files -tb ../../Users/tshot/Documents/Embedded System/The_Zynq_Book_Tutorial_Sources_Aug_15/sources/hls/tut3A/matrix_mult_test.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./lab_4_hls/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
