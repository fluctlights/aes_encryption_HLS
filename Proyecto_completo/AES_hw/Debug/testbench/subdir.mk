################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./testbench/AESfunctions.o \
./testbench/test_AES_full.o 

CPP_DEPS += \
./testbench/AESfunctions.d \
./testbench/test_AES_full.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/AESfunctions.o: /home/fluctlights/HlsProjects/AES_AntonioMateo/Test/AESfunctions.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include -I/home/fluctlights/HlsProjects -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/AESfunctions.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

testbench/test_AES_full.o: /home/fluctlights/HlsProjects/AES_AntonioMateo/Test/test_AES_full.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include -I/home/fluctlights/HlsProjects -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/test_AES_full.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


