// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaes_encrypt_axi.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAes_encrypt_axi_CfgInitialize(XAes_encrypt_axi *InstancePtr, XAes_encrypt_axi_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAes_encrypt_axi_Start(XAes_encrypt_axi *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAes_encrypt_axi_IsDone(XAes_encrypt_axi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAes_encrypt_axi_IsIdle(XAes_encrypt_axi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAes_encrypt_axi_IsReady(XAes_encrypt_axi *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAes_encrypt_axi_EnableAutoRestart(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XAes_encrypt_axi_DisableAutoRestart(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XAes_encrypt_axi_InterruptGlobalEnable(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_GIE, 1);
}

void XAes_encrypt_axi_InterruptGlobalDisable(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_GIE, 0);
}

void XAes_encrypt_axi_InterruptEnable(XAes_encrypt_axi *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_IER);
    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XAes_encrypt_axi_InterruptDisable(XAes_encrypt_axi *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_IER);
    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XAes_encrypt_axi_InterruptClear(XAes_encrypt_axi *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAes_encrypt_axi_WriteReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XAes_encrypt_axi_InterruptGetEnabled(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_IER);
}

u32 XAes_encrypt_axi_InterruptGetStatus(XAes_encrypt_axi *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAes_encrypt_axi_ReadReg(InstancePtr->Control_bus_BaseAddress, XAES_ENCRYPT_AXI_CONTROL_BUS_ADDR_ISR);
}

