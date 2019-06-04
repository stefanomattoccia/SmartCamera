/*
 * tcp_connection.c
 *
 *  Created on: 9 Sep 2017
 *      Author: Luca Bonfiglioli
 */

#include "tcp_connection.h"

struct tcp_pcb* pcb_tcp;

unsigned char * req_buffer = NULL;
unsigned int req_len;
unsigned int req_index;
unsigned char req_type;

// Functions
static void close_conn(struct tcp_pcb *pcb_tcp);
static err_t callback_tcp_request(void *arg, struct tcp_pcb *pcb_tcp, struct pbuf *pbuffer, err_t err);
static err_t connection_accept(void *arg, struct tcp_pcb *pcb_tcp, err_t err);

void perform_request(struct tcp_pcb * cb_tcp);
void reset_req_buffer();
void send_ack(struct tcp_pcb *pcb_tcp, int err_code);

// Utils
double char_to_double(char a, char b);
void double_to_char(double value, char *a, char *b);

// Close the connection with client.
static void close_conn(struct tcp_pcb *pcb_tcp)
{
	tcp_arg(pcb_tcp, NULL);
	tcp_sent(pcb_tcp, NULL);
	tcp_recv(pcb_tcp, NULL);
	tcp_close(pcb_tcp);
	print_ip("[TCP] Connection closed with client ", &pcb_tcp->remote_ip);
}

// This function gets called on reception of data on TCP.
static err_t callback_tcp_request(void *arg, struct tcp_pcb *pcb_tcp, struct pbuf *pbuffer, err_t err)
{
	unsigned int len;
	unsigned char *pc;

	// Check if no error has occured and packet buffer is not empty
	if (err == ERR_OK && pbuffer != NULL)
	{

		// When the application has taken the data, it has to call the tcp_recved()
		// function to indicate that TCP can advertise increase the receive window.(N.B. As specified by LWIP).
		tcp_recved(pcb_tcp, pbuffer->tot_len);

		// Get the pointer to the Payload area of received TCP packet
		pc = (unsigned char *) pbuffer->payload;

		// Get the length of the data payload
		len = pbuffer->tot_len;

		// Debug print
		xil_printf("[TCP] Received %d bytes\n", len);

		// For each byte received:
		int i;
		for (i = 0; i < len; i++)
		{
			// Update the request buffer
			req_buffer[req_index++] = pc[i];

			// If the request is ready to be performed, perform it
			while (req_index >= req_len)
			{
				perform_request(pcb_tcp);
			}
		}

	}
	// Free the packet buffer
	pbuf_free(pbuffer);


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

	// request system setup
	reset_req_buffer();
	xil_printf("[TCP] Now waiting for a request header\n", req_len, req_type);

	// Specifies the function to call, on reception of data on TCP
	tcp_recv(pcb_tcp, callback_tcp_request);

	tcp_err(pcb_tcp, NULL);
	tcp_poll(pcb_tcp, NULL, 4);

	return ERR_OK;
}
// Initialize the TCP connection to be used
int start_tcp(void)
{
	xil_printf("[TCP] Starting TCP server on port %d\n", TCP_PORT);

	// Create a new TCP Protocol Cotrol Block abbreviated as PCB.
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

// Send the current kernel configuration to the client
void tcp_send_kernel_config(struct tcp_pcb *pcb_tcp)
{
	kernel_config * config;
	int i, len;
	char * data;

	config = convolution_filter_get_kernel_config();
	len = 2 + 2 * config->height * config->width + 3;
	data = (char*)malloc(len);

	data[0] = config->height;
	data[1] = config->width;

	xil_printf("%d %d\n", data[0], data[1]);

	for (i = 0; i < config->height * config->width; i++)
	{
		double_to_char(config->weights[i], &data[2 * i + 2], &data[2 * i + 3]);
	}

	data[2 * i + 2] = config->sum;
	data[2 * i + 3] = config->offset;
	data[2 * i + 4] = config->bit_shift;

	tcp_write(pcb_tcp, data, len, TCP_WRITE_FLAG_COPY);

	free(data);
}

// Performs the incoming request, this reads the content of req_buffer and performs actions on the system.
void perform_request(struct tcp_pcb * pcb_tcp)
{
	int retval = CONV_FILTER_FAILURE;

	//If the system has just finished receiving a partially received request
	if (req_type == REQUEST_NONE)
	{
		req_type = req_buffer[0];
		if (req_type != REQUEST_NONE)
		{
			req_len = req_buffer[1] * 256 + req_buffer[2];
			free(req_buffer);
			req_buffer = (unsigned char*)malloc(req_len);
		}
		req_index = 0;
		xil_printf("[TCP] Header received, now waiting for a %d bytes request body\n", req_len);
		return;
	}

	//Client requests to modify the kernel sum value
	else if (req_type == REQUEST_SET_KERNEL_SUM)
	{
		if (req_index >= 1){
			kernel_config *kernel = convolution_filter_get_kernel_config();
			kernel->sum = req_buffer[0];
			retval = convolution_filter_configure(kernel);
		}
		reset_req_buffer();

		send_ack(pcb_tcp, retval);
	}

	//Client requests to modify the kernel offset value
	else if (req_type == REQUEST_SET_KERNEL_OFF)
	{
		if (req_index >= 1){
			kernel_config *kernel = convolution_filter_get_kernel_config();
			kernel->offset = req_buffer[0];
			retval = convolution_filter_configure(kernel);
		}
		reset_req_buffer();

		send_ack(pcb_tcp, retval);
	}

	//Client requests to modify the kernel weights
	else if (req_type == REQUEST_SET_KERNEL_WEIGHTS)
	{
		kernel_config *kernel = convolution_filter_get_kernel_config();

		if (req_index >= 3){
			kernel->height = req_buffer[0];
			kernel->width = req_buffer[1];
		}

		if (req_index - 2 >= kernel->height * kernel->width)
		{
			int i;
			free(kernel->weights);
			kernel->weights = (double*)malloc(sizeof(double) * kernel->height * kernel->width);
			for (i = 0; i < kernel->height * kernel->width; i++)
			{
				kernel->weights[i] = char_to_double(req_buffer[2 * i + 2], req_buffer[2 * i + 3]);
			}
		}

		retval = convolution_filter_configure(kernel);
		reset_req_buffer();
		send_ack(pcb_tcp, retval);
	}

	//Client requests to get the current kernel configuration
	else if (req_type == REQUEST_GET_KERNEL_CONFIG)
	{
		tcp_send_kernel_config(pcb_tcp);
		reset_req_buffer();
	}

	//Client requests to get the current kernel bit shift approximation
	else if (req_type == REQUEST_SET_KERNEL_BIT_SHIFT)
	{
		if (req_index >= 1){
			kernel_config *kernel = convolution_filter_get_kernel_config();
			kernel->bit_shift = req_buffer[0];
			retval = convolution_filter_configure(kernel);
		}
		reset_req_buffer();

		send_ack(pcb_tcp, retval);
	}

	//In case of error: resets the buffer and waits for a new request
	else
	{
		reset_req_buffer();
	}

	xil_printf("[TCP] Now waiting for reception of a request header\n");
}

// Resets the request buffer and puts the server in the default state
void reset_req_buffer()
{
	if (req_buffer != NULL)
		free(req_buffer);

	req_len = 3;
	req_buffer = (unsigned char*)malloc(req_len);
	req_index = 0;
	req_type = REQUEST_NONE;
}

// Sends a 1-byte error code to the client
void send_ack(struct tcp_pcb *pcb_tcp, int err_code)
{
	char *data;
	int size = 1;
	// Open for future changes, err_code size may be variable

	data = (char*)malloc(size);
	data[0] = (char)err_code;
	xil_printf("[TCP] Sending ack code: %d\n", data[0]);
	tcp_write(pcb_tcp, data, size, TCP_WRITE_FLAG_COPY);
	free(data);
}

// Utils
// Network to host fixed point translation
double char_to_double(char a, char b)
{
	double value;

	value = (signed char)a;
	value += ((double)((unsigned char)b)) / (double)256;

	return value;
}

// Host to network fixed point translation
void double_to_char(double value, char *a, char *b)
{
	*a = (signed char)value;
	*b = (unsigned char)((int)(value * 256) % 256);

	if (value < 0 && *b != 0)
	{
		(*a)--;
	}
}
