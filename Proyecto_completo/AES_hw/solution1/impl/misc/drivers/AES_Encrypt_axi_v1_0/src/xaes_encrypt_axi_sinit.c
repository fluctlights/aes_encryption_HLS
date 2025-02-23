// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xaes_encrypt_axi.h"

extern XAes_encrypt_axi_Config XAes_encrypt_axi_ConfigTable[];

#ifdef SDT
XAes_encrypt_axi_Config *XAes_encrypt_axi_LookupConfig(UINTPTR BaseAddress) {
	XAes_encrypt_axi_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAes_encrypt_axi_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAes_encrypt_axi_ConfigTable[Index].Control_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XAes_encrypt_axi_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_encrypt_axi_Initialize(XAes_encrypt_axi *InstancePtr, UINTPTR BaseAddress) {
	XAes_encrypt_axi_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_encrypt_axi_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_encrypt_axi_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAes_encrypt_axi_Config *XAes_encrypt_axi_LookupConfig(u16 DeviceId) {
	XAes_encrypt_axi_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAES_ENCRYPT_AXI_NUM_INSTANCES; Index++) {
		if (XAes_encrypt_axi_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAes_encrypt_axi_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAes_encrypt_axi_Initialize(XAes_encrypt_axi *InstancePtr, u16 DeviceId) {
	XAes_encrypt_axi_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAes_encrypt_axi_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAes_encrypt_axi_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

