################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./source/AES_accel.o 

CPP_DEPS += \
./source/AES_accel.d 


# Each subdirectory must supply rules for building sources it contributes
source/AES_accel.o: /home/fluctlights/HlsProjects/AES_AntonioMateo/DIseno/AES_accel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include -I/home/fluctlights/HlsProjects -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


