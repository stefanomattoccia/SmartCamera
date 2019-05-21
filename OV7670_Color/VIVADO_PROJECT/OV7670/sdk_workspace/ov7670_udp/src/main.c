/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "platform.h"
#include "constant.h"
#include "xparameters.h"
#include "xgpio.h"
#include "lwipopts.h"
#include "xil_cache.h"

#include "xparameters.h"
#include "platform.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "xil_printf.h"
#include "netif/xadapter.h"
#include "xenv_standalone.h"
#include "pl_reset.h"
#include "frame_interrupt.h"
#include "xaxis_to_ddr_writer.h"
#include "xddr_to_axis_reader.h"

#include "Xscugic.h"
#include "interrupt.h"

#ifdef XPAR_ETHERNET_MAC_BASEADDR
#define EMAC_BASEADDR  XPAR_ETHERNET_MAC_BASEADDR
#elif XPAR_LLTEMAC_0_BASEADDR
#define EMAC_BASEADDR  XPAR_LLTEMAC_0_BASEADDR
#endif

#define INTC_DEVICE_ID 			XPAR_PS7_SCUGIC_0_DEVICE_ID

/* missing declaration in lwIP */
void lwip_init();
int enable_interrupts();
int start_udp_application(unsigned local_port, unsigned remote_port);
int transfer_data();
void frame_written_callback(int frame_index);
void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw);

int inizializza_writer();
int inizializza_reader();

struct udp_pcb* pcb;
err_t err;
struct ip_addr ipaddr, d_addr;

static struct netif server_netif;
struct netif *udp_netif;

void print_ip(char *msg, struct ip_addr *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

/*
 * Contatore di tutti i pacchetti UDP inviati
 * dall'avvio
 */
static int counter = 0;


int main()
{
	/*Inizializzazione netif */

    struct ip_addr netmask, gw;

    /* the mac address of the board*/
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    udp_netif = &server_netif;



    init_platform();

    xil_printf("TEST\n");

    pl_reset();

    if (inizializza_writer() != XST_SUCCESS)
    	xil_printf("Errore inizializzazione writer\n");

    if (inizializza_reader() != XST_SUCCESS)
    	xil_printf("Errore inizializzazione reader\n");


    //Disabilito le data cache
    Xil_DCacheDisable();

    /* initliaze IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168,   1, 100);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168,   1,  1);

    /* Remote ip address */
    IP4_ADDR(&d_addr,  192, 168,   1, 10);

    //netif_add(udp_netif, &ipaddr, &netmasck, &gw, NULL, NULL, ethernet_input());
    lwip_init();

    /* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(udp_netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR))
	{
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}

	udp_netif->mtu = MTU_SIZE;


	netif_set_default(udp_netif);


	/* specify that the network if is up */
	netif_set_up(udp_netif);

	netif_set_link_up(udp_netif);

	xil_printf("Setting netif\n");
	print_ip_settings(&udp_netif->ip_addr, &udp_netif->netmask, &udp_netif->gw);

	start_udp_application(LOCAL_PORT, REMOTE_PORT);
	enable_interrupts();

	int j = 0;
	while(1)
	{
		int frame_inviati = counter / (FRAME_SIZE / FRAME_UDP_FRAGMENT_SIZE);
		xil_printf("Frame inviati: %d\n", frame_inviati);
		sleep(1);
	}

	//cleanup_platform();
	return 0;

}

void reset_handler(void *ptr)
{
	xil_printf("RESET HANDLER\n");
	pl_reset();
	inizializza_writer();
	inizializza_reader();
}

int inizializza_writer()
{
	int status;

	XAxis_to_ddr_writer writer;
	status = XAxis_to_ddr_writer_Initialize(&writer, XPAR_XAXIS_TO_DDR_WRITER_0_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Errore inizializzazione writer\n");
		return status;
	}

	XAxis_to_ddr_writer_Set_base_address(&writer, FRAME_BUFFER_BASE_ADDR);
	XAxis_to_ddr_writer_Set_frame_buffer_dim(&writer, FRAME_BUFFER_DIM);
	XAxis_to_ddr_writer_Set_frame_buffer_number(&writer, FRAME_BUFFER_NUM);
	XAxis_to_ddr_writer_Set_frame_buffer_offset(&writer, FRAME_BUFFER_DIM);
	XAxis_to_ddr_writer_EnableAutoRestart(&writer);
	XAxis_to_ddr_writer_Set_update_intr(&writer, 1);
	XAxis_to_ddr_writer_Start(&writer);

	return XST_SUCCESS;

}

int inizializza_reader()
{
	int status;

	XDdr_to_axis_reader reader;
	status = XDdr_to_axis_reader_Initialize(&reader, XPAR_XDDR_TO_AXIS_READER_0_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Errore inizializzazione reader\n");
		return status;
	}

	XDdr_to_axis_reader_Set_base_address(&reader, FRAME_BUFFER_BASE_ADDR);
	XDdr_to_axis_reader_Set_frame_buffer_dim(&reader, FRAME_BUFFER_DIM);
	XDdr_to_axis_reader_Set_frame_buffer_number(&reader, FRAME_BUFFER_NUM);
	XDdr_to_axis_reader_Set_frame_buffer_offset(&reader, FRAME_BUFFER_DIM);
	XDdr_to_axis_reader_Set_update_intr(&reader, 1);
	XDdr_to_axis_reader_EnableAutoRestart(&reader);
	XDdr_to_axis_reader_Start(&reader);

	return XST_SUCCESS;
}


void recv_callback(void * arg, struct udp_pcb * upcb, struct pbuf * p,  struct ip_addr * addr, u16_t port)
{
	/* Funzione da definirsi: richiamata quando arriva un pacchetto UDP */

	pbuf_free(p);

}

int enable_interrupts()
{
	XScuGic* InterruptController = getGicInstance();

	/*
	 * Registrazione callback per il reset via switch
	 */
	if (XScuGic_Connect(InterruptController, XPAR_FABRIC_SYSTEM_RESET_SW_INTR, reset_handler, NULL) != XST_SUCCESS)
	{
		xil_printf("XScuGIc_Connect RESET failed!\n");
		return XST_FAILURE;
	}

	XScuGic_Enable(InterruptController, XPAR_FABRIC_SYSTEM_RESET_SW_INTR);
	xil_printf("Registrazione funzione di callback reset\n");

	int init = frame_interrupt_init(InterruptController);
	if (init == XST_FAILURE)
		return init;

	xil_printf("Registrazione funzione di callback frame interrupt\n");

	frame_interrupt_register_callback(frame_written_callback);
	frame_interrupt_enable();

	return XST_SUCCESS;
}

int start_udp_application(unsigned local_port, unsigned remote_port)
{
	pcb = udp_new();
	if (!pcb)
	{
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return XST_FAILURE;
	}

	/* bind to specific port */
	if(udp_bind(pcb, IP_ADDR_ANY, local_port) != ERR_OK)
	{
		xil_printf("Unable to bind to port %d: err = %d\n\r", local_port, err);
		return XST_FAILURE;
	}

	if(udp_connect(pcb, IP_ADDR_BROADCAST, remote_port) != ERR_OK)
	{
		xil_printf("Unable to connect to port %d: err = %d\n\r", remote_port, err);
		return XST_FAILURE;
	}

	/* Registro la funzione di callBack */
	udp_recv(pcb, recv_callback, NULL);

	xil_printf("UDP server started Local@ port %d ", pcb->local_port);
	print_ip(" @ and Ip: ", &pcb->local_ip);
	xil_printf("UDP server started Remote @ port %d", pcb->remote_port);
	print_ip(" @ and Ip: ", &pcb->remote_ip);

	return XST_SUCCESS;
}


void frame_written_callback(int frame_index)
{
	xemacif_input(udp_netif);

	int i;
	for(i = 0; i < FRAME_SIZE / FRAME_UDP_FRAGMENT_SIZE; i++)
	{
		struct pbuf* p = pbuf_alloc(PBUF_TRANSPORT, sizeof(packet_data), PBUF_RAM);
		if(!p)
		{
			xil_printf("errore allocazione pbuf: %d\n", i);
			exit(1);
		}

		packet_data* buff = (packet_data*) p->payload;
		buff->count = counter++;
		buff->fragment = i;
		buff->frame_index = frame_index;

		BYTE* ddr_address = ((BYTE*) FRAME_BUFFER_BASE_ADDR) + frame_index*FRAME_SIZE + i*FRAME_UDP_FRAGMENT_SIZE;
		memcpy(buff->data, ddr_address, FRAME_UDP_FRAGMENT_SIZE);
		usleep(50);

		if(udp_send(pcb, p) != ERR_OK)
			xil_printf("Errore nell' invio del pacchetto %d\n", i);
		usleep(50);
		pbuf_free(p);

	}

	//xil_printf("Inviato frame %d\n", frame_index);
}
