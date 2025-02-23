############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project AES_AntonioMateo
set_top AES_Encrypt_axi
add_files AES_AntonioMateo/DIseno/AES_accel.cpp
add_files -tb AES_AntonioMateo/Test/AESfunctions.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb AES_AntonioMateo/Test/AESfunctions.h -cflags "-Wno-unknown-pragmas"
add_files -tb AES_AntonioMateo/Test/AESkeys.h -cflags "-Wno-unknown-pragmas"
add_files -tb AES_AntonioMateo/Test/AEStables.h -cflags "-Wno-unknown-pragmas"
add_files -tb AES_AntonioMateo/Test/test_AES_full.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
config_cosim -tool xsim
config_export -format ip_catalog -rtl verilog -vivado_clock 10
source "./AES_AntonioMateo/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
