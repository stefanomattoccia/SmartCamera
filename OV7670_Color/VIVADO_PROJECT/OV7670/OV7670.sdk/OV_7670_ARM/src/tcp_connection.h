/*
 * tcp_connection.h
 *
 *  Created on: 21 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_TCP_CONNECTION_H_
#define SRC_TCP_CONNECTION_H_

//#include "platform_config.h"
#include "network.h"
#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/tcp.h"
#include "convolution_filter.h"

#define TCP_PORT 2101

#define REQUEST_NONE 1
#define REQUEST_SET_KERNEL_SUM 2
#define REQUEST_SET_KERNEL_OFF 3
#define REQUEST_SET_KERNEL_WEIGHTS 4
#define REQUEST_GET_KERNEL_CONFIG 5
#define REQUEST_SET_KERNEL_BIT_SHIFT 6

int start_tcp(void);

#endif /* SRC_TCP_CONNECTION_H_ */
