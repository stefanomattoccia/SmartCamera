/*
 * tcp_connection.h
 *
 *  Created on: 21 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_TCP_CONNECTION_H_
#define SRC_TCP_CONNECTION_H_

#include "platform_config.h"
#include "network.h"
#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/tcp.h"

#define TCP_PORT 2101

int start_tcp(void);

#endif /* SRC_TCP_CONNECTION_H_ */
