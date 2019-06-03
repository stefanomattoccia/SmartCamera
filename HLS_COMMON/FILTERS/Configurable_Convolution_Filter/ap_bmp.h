/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2011 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

/*
 * This file contains the datastructure information for a simple
 * BMP file reader/writer. The format used in the reader/writer is based on
 * BMP Version 2.
 */
#ifndef __XLNX__BITMAP__
#define __XLNX__BITMAP__

// Basic color definitions
#define BLACK 0
#define WHITE 255

// Maximum image size 
#define MAX_ROWS 1080
#define MAX_COLS 1920

//File Information Header
typedef struct{
  unsigned short FileType;
  unsigned int FileSize;
  unsigned short Reserved1;
  unsigned short Reserved2;
  unsigned short Offset;
}BMPHeader;

typedef struct{
  unsigned int Size;
  unsigned int Width;
  unsigned int Height;
  unsigned short Planes;
  unsigned short BitsPerPixel;
  unsigned int Compression;
  unsigned int SizeOfBitmap;
  unsigned int HorzResolution;
  unsigned int VertResolution;
  unsigned int ColorsUsed;
  unsigned int ColorsImportant;
}BMPImageHeader;

typedef struct{
  BMPHeader *file_header;
  BMPImageHeader *image_header;
  unsigned int *colors;
  unsigned char *data;
  unsigned char R[MAX_ROWS][MAX_COLS];
  unsigned char G[MAX_ROWS][MAX_COLS];
  unsigned char B[MAX_ROWS][MAX_COLS];
  unsigned char Y[MAX_ROWS][MAX_COLS];
  char U[MAX_ROWS][MAX_COLS];
  char V[MAX_ROWS][MAX_COLS];
}BMPImage;

//Read Function
int BMP_Read(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B);

//Write Function
int BMP_Write(char *file, int row, int col, unsigned char *R, unsigned char *G, unsigned char *B);

//Write Grey output Function
int WriteGrey(char *file, int row, int col, unsigned char *R);

#endif
