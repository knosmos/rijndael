/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <xparameters.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

#define INPUT_VALID_OFFSET 0x08 * 0x04
#define OUTPUT_VALID_OFFSET 0x09 * 0x04
#define OUTPUT_DATA_OFFSET 0x04 * 0x04

char msg[17] = "ThisMessageIs16B"; // {0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff};
char res[17];

int main()
{
    init_platform();

    printf("\nAES-256-ECB :: plaintext = %s\n", msg);
    
    // package for fabric
    uint32_t msg32[4];
    msg32[0] = (msg[0] << 24) | (msg[1] << 16) | (msg[2] << 8) | msg[3];
    msg32[1] = (msg[4] << 24) | (msg[5] << 16) | (msg[6] << 8) | msg[7];
    msg32[2] = (msg[8] << 24) | (msg[9] << 16) | (msg[10] << 8) | msg[11];
    msg32[3] = (msg[12] << 24) | (msg[13] << 16) | (msg[14] << 8) | msg[15];
    
    // printf("Initial output_ready: %x\n", Xil_In32(XPAR_AES_CORE_0_BASEADDR + OUTPUT_VALID_OFFSET));
    printf("Input words: ");
    for (int i=0; i<4; i++) {
        Xil_Out32(XPAR_AES_CORE_0_BASEADDR + i*0x04, msg32[i]);
        printf("%x ", msg32[i]);
    }
    printf("\n");
    Xil_Out32(XPAR_AES_CORE_0_BASEADDR + INPUT_VALID_OFFSET, 0x01);

    // wait
    while (!Xil_In32(XPAR_AES_CORE_0_BASEADDR + OUTPUT_VALID_OFFSET)) {
        // In practice, the accelerator is so fast it responds before this ever runs
        printf("AES-256-ECB :: waiting for response ...\n");
    }
    // printf("Final output_ready: %x\n", Xil_In32(XPAR_AES_CORE_0_BASEADDR + OUTPUT_VALID_OFFSET));
    
    // retrieve
    uint32_t* res32 = (uint32_t*)res;
    for (int i=0; i<4; i++) {
        res32[i] = Xil_In32(XPAR_AES_CORE_0_BASEADDR + OUTPUT_DATA_OFFSET + i*0x04);
    }
    printf("AES-256-ECB :: ciphertext = ");
    for (int i=0; i<4; i++) {
        printf("%08x", res32[i]);
    }
    print("\n\r");

    cleanup_platform();
    return 0;
}
