// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAES_ENCRYPT_AXI_H
#define XAES_ENCRYPT_AXI_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaes_encrypt_axi_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_bus_BaseAddress;
} XAes_encrypt_axi_Config;
#endif

typedef struct {
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XAes_encrypt_axi;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAes_encrypt_axi_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAes_encrypt_axi_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAes_encrypt_axi_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAes_encrypt_axi_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XAes_encrypt_axi_Initialize(XAes_encrypt_axi *InstancePtr, UINTPTR BaseAddress);
XAes_encrypt_axi_Config* XAes_encrypt_axi_LookupConfig(UINTPTR BaseAddress);
#else
int XAes_encrypt_axi_Initialize(XAes_encrypt_axi *InstancePtr, u16 DeviceId);
XAes_encrypt_axi_Config* XAes_encrypt_axi_LookupConfig(u16 DeviceId);
#endif
int XAes_encrypt_axi_CfgInitialize(XAes_encrypt_axi *InstancePtr, XAes_encrypt_axi_Config *ConfigPtr);
#else
int XAes_encrypt_axi_Initialize(XAes_encrypt_axi *InstancePtr, const char* InstanceName);
int XAes_encrypt_axi_Release(XAes_encrypt_axi *InstancePtr);
#endif

void XAes_encrypt_axi_Start(XAes_encrypt_axi *InstancePtr);
u32 XAes_encrypt_axi_IsDone(XAes_encrypt_axi *InstancePtr);
u32 XAes_encrypt_axi_IsIdle(XAes_encrypt_axi *InstancePtr);
u32 XAes_encrypt_axi_IsReady(XAes_encrypt_axi *InstancePtr);
void XAes_encrypt_axi_EnableAutoRestart(XAes_encrypt_axi *InstancePtr);
void XAes_encrypt_axi_DisableAutoRestart(XAes_encrypt_axi *InstancePtr);


void XAes_encrypt_axi_InterruptGlobalEnable(XAes_encrypt_axi *InstancePtr);
void XAes_encrypt_axi_InterruptGlobalDisable(XAes_encrypt_axi *InstancePtr);
void XAes_encrypt_axi_InterruptEnable(XAes_encrypt_axi *InstancePtr, u32 Mask);
void XAes_encrypt_axi_InterruptDisable(XAes_encrypt_axi *InstancePtr, u32 Mask);
void XAes_encrypt_axi_InterruptClear(XAes_encrypt_axi *InstancePtr, u32 Mask);
u32 XAes_encrypt_axi_InterruptGetEnabled(XAes_encrypt_axi *InstancePtr);
u32 XAes_encrypt_axi_InterruptGetStatus(XAes_encrypt_axi *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
