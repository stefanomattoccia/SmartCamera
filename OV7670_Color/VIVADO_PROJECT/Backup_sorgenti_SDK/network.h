/*
 * network.h
 *
 *  Created on: 15 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#ifndef SRC_NETWORK_H_
#define SRC_NETWORK_H_

#include <unistd.h>
#include "platform_config.h"

#include "xparameters.h"
#include "netif/xadapter.h"

#include "lwip/tcp.h"
#include "xil_cache.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwipopts.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif


#define SEND_LUMA_IMAGE
#define SEND_CHROMA_IMAGE
#define SEND_PROCESSED_IMAGE


err_t err;
struct ip_addr ipaddr, d_addr;

int init_network();
int start_udp();
void frame_written_callback(int frame_index);
void print_ip(char *msg, struct ip_addr *ip);

#endif /* SRC_NETWORK_H_ */
