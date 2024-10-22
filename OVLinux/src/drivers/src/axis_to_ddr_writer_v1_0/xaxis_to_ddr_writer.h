// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XAXIS_TO_DDR_WRITER_H
#define XAXIS_TO_DDR_WRITER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

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

#include "xaxis_to_ddr_writer_hw.h"


/**************************** Type Definitions ******************************/

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XAxis_to_ddr_writer_Config;

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XAxis_to_ddr_writer;

/***************** Macros (Inline Functions) Definitions *********************/

#define XAxis_to_ddr_writer_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAxis_to_ddr_writer_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1


/************************** Function Prototypes *****************************/

int XAxis_to_ddr_writer_Initialize(XAxis_to_ddr_writer *InstancePtr, const char* InstanceName);
int XAxis_to_ddr_writer_Release(XAxis_to_ddr_writer *InstancePtr);

void XAxis_to_ddr_writer_Start(XAxis_to_ddr_writer *InstancePtr);
u32 XAxis_to_ddr_writer_IsDone(XAxis_to_ddr_writer *InstancePtr);
u32 XAxis_to_ddr_writer_IsIdle(XAxis_to_ddr_writer *InstancePtr);
u32 XAxis_to_ddr_writer_IsReady(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_EnableAutoRestart(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_DisableAutoRestart(XAxis_to_ddr_writer *InstancePtr);

void XAxis_to_ddr_writer_Set_base_address(XAxis_to_ddr_writer *InstancePtr, u32 Data);
u32 XAxis_to_ddr_writer_Get_base_address(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_Set_frame_buffer_dim(XAxis_to_ddr_writer *InstancePtr, u32 Data);
u32 XAxis_to_ddr_writer_Get_frame_buffer_dim(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_Set_frame_buffer_offset(XAxis_to_ddr_writer *InstancePtr, u32 Data);
u32 XAxis_to_ddr_writer_Get_frame_buffer_offset(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_Set_frame_buffer_number(XAxis_to_ddr_writer *InstancePtr, u32 Data);
u32 XAxis_to_ddr_writer_Get_frame_buffer_number(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_Set_update_intr(XAxis_to_ddr_writer *InstancePtr, u32 Data);
u32 XAxis_to_ddr_writer_Get_update_intr(XAxis_to_ddr_writer *InstancePtr);

void XAxis_to_ddr_writer_InterruptGlobalEnable(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_InterruptGlobalDisable(XAxis_to_ddr_writer *InstancePtr);
void XAxis_to_ddr_writer_InterruptEnable(XAxis_to_ddr_writer *InstancePtr, u32 Mask);
void XAxis_to_ddr_writer_InterruptDisable(XAxis_to_ddr_writer *InstancePtr, u32 Mask);
void XAxis_to_ddr_writer_InterruptClear(XAxis_to_ddr_writer *InstancePtr, u32 Mask);
u32 XAxis_to_ddr_writer_InterruptGetEnabled(XAxis_to_ddr_writer *InstancePtr);
u32 XAxis_to_ddr_writer_InterruptGetStatus(XAxis_to_ddr_writer *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
