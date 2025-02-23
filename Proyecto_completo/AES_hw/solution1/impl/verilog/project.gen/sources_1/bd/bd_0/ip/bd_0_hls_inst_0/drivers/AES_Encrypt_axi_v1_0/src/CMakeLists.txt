# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(AES_Encrypt_axi)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xaes_encrypt_axi.c)
collect (PROJECT_LIB_SOURCES xaes_encrypt_axi_sinit.c)
collect (PROJECT_LIB_SOURCES xaes_encrypt_axi_linux.c)
collect (PROJECT_LIB_SOURCES xaes_encrypt_axi_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xaes_encrypt_axi.h)
collect (PROJECT_LIB_HEADERS xaes_encrypt_axi_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(AES_Encrypt_axi STATIC ${_sources})
set_target_properties(AES_Encrypt_axi PROPERTIES LINKER_LANGUAGE C)

