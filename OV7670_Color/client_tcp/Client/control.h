#ifndef CONTROL
#define CONTROL

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "connection.h"

#define REQUEST_NONE 1
#define REQUEST_SET_KERNEL_SUM 2
#define REQUEST_SET_KERNEL_OFF 3
#define REQUEST_SET_KERNEL_WEIGHTS 4
#define REQUEST_GET_KERNEL_CONFIG 5
#define REQUEST_SET_KERNEL_BIT_SHIFT 6

#define READ_BUFF_LEN 4096
#define MAX_ARGS 1024

void read_loop();

void set_weights(char *values[]);

void set_sum(char value);

void set_offset(char value);

void set_bit_shift(char value);

void print_config();

void reset_config();

void display_help();

int parse_input(int argc, char *args[]);

int send_double(double *value);

int recv_double(double *value);

#endif
