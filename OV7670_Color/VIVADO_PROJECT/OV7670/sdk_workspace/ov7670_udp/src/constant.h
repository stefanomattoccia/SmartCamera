/*
 * constant.h
 *
 *  Created on: 07/mar/2016
 *      Author: simone
 */

#ifndef CONSTANT_H_
#define CONSTANT_H_

#define MTU_SIZE 1500
#define FRAME_SIZE 307200
#define FRAME_UDP_FRAGMENT_SIZE 30720	//7680

#define LOCAL_PORT 5454
#define REMOTE_PORT 5555

#define FRAME_BUFFER_DIM 307200
#define FRAME_BUFFER_BASE_ADDR 0x10000000
#define FRAME_BUFFER_NUM 8



typedef unsigned char BYTE;

typedef struct{
	int count;
	int fragment;
	int frame_index;
	BYTE data[FRAME_UDP_FRAGMENT_SIZE];
}packet_data;


#endif /* CONSTANT_H_ */
