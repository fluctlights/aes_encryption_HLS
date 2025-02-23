################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Test/AESfunctions.cpp \
../Test/test_AES_full.cpp 

OBJS += \
./Test/AESfunctions.o \
./Test/test_AES_full.o 

CPP_DEPS += \
./Test/AESfunctions.d \
./Test/test_AES_full.d 


# Each subdirectory must supply rules for building sources it contributes
Test/%.o: ../Test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/etc -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/systemc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/lnx64/tools/auto_cc/include -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include -I/home/fluctlights/HlsProjects -I/home/fluctlights/Escritorio/PERTE/Diseño_de_Circuitos/Xilinx/Vitis_HLS/2023.2/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


