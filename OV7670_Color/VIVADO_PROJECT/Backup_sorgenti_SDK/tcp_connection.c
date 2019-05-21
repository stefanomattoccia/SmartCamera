/*
 * tcp_connection.c
 *
 *  Created on: 21 feb 2017
 *      Author: Mattia Bernasconi
 *        Mail: mattia@studiobernasconi.com
 */

#include "tcp_connection.h"

struct tcp_pcb* pcb_tcp;

// Function for closing the connection.
static void close_conn(struct tcp_pcb *pcb_tcp)
{
	tcp_arg(pcb_tcp, NULL);
	tcp_sent(pcb_tcp, NULL);
	tcp_recv(pcb_tcp, NULL);
	tcp_close(pcb_tcp);
	print_ip("[TCP] Connection closed with client ", &pcb_tcp->remote_ip);
}

// This function gets called on reception of data on TCP.
static err_t tcp_data_receive(void *arg, struct tcp_pcb *pcb_tcp, struct pbuf *pbuffer, err_t err)
{
	unsigned int len;
	unsigned char *pc;

	// Check if no error has occured and packet buffer is not empty
	if (err == ERR_OK && pbuffer != NULL)
	{
		//When the application has taken the data, it has to call the tcp_recved()
		//function to indicate that TCP can advertise increase the receive window.(N.B. As specified by LWIP).

		tcp_recved(pcb_tcp, pbuffer->tot_len);

		// Get the pointer to the Payload area of received TCP packet
		pc = (unsigned char *) pbuffer->payload;

		// Get the length of the data payload and assign it to our data count variable
		len = pbuffer->tot_len;

		// The data can be taken in this part as "pc" will contain the starting address of the payload. Just use the "pc" pointer and get the data in your buffer.
		xil_printf("[TCP] %d Bytes of data receive: '%s'\n", len, pc);

		// Free the packet buffer
		pbuf_free(pbuffer);

	}
	else
	{
		// Free the packet buffer
		pbuf_free(pbuffer);
	}

	// Close connection if empty packet and no error
	if (err == ERR_OK && pbuffer == NULL)
	{
		close_conn(pcb_tcp);
	}

	return ERR_OK;
}

// This function gets called for accepting incoming TCP connections.
static err_t connection_accept(void *arg, struct tcp_pcb *pcb_tcp, err_t err)
{
	print_ip("\n[TCP] Connection accepted from ", &pcb_tcp->remote_ip);

	LWIP_UNUSED_ARG(arg);
	LWIP_UNUSED_ARG(err);

	tcp_setprio(pcb_tcp, TCP_PRIO_MIN);

	// Specifies the function to call, on reception of data on TCP
	tcp_recv(pcb_tcp, tcp_data_receive);

	tcp_err(pcb_tcp, NULL);
	tcp_poll(pcb_tcp, NULL, 4);

	return ERR_OK;
}

// Intialise the TCP connection to be used
int start_tcp(void)
{
	xil_printf("[TCP] Starting TCP server on port %d\n", TCP_PORT);

	// Create a new TCP Protocol Cotrol Buffer abbreviated as PCB.
	pcb_tcp = tcp_new();

	// Bind the PCB to a Port and any IP address.
	tcp_bind(pcb_tcp, IP_ADDR_ANY, TCP_PORT);

	// Put the PCB and TCP connection on Board in listening state
	pcb_tcp = tcp_listen(pcb_tcp);

	xil_printf("[TCP] Listening on port %d\n\n", TCP_PORT);

	// This function specifies the callback function that will be called when a client asks for connection with board
	tcp_accept(pcb_tcp, connection_accept);

	return XST_SUCCESS;
}
