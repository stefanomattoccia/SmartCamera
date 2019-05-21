#include "control.h"

// #define DEBUG

char read_buff[READ_BUFF_LEN];

void set_weights(char *values[])
{
	char * data;
    int len, k, req_len;
    double temp;

    len = atoi(values[0]) * atoi(values[1]);

	req_len = 2 * len + 2;

	if (req_len < 3)
	{
		printf("set weights <height> <width> <values>\n");
		return;
	}

	data = (char*)malloc(req_len);

    data[0] = REQUEST_SET_KERNEL_WEIGHTS;
	data[1] = (char)req_len / 256;
	data[2] = (char)req_len % 256;

	if (send_data(data, 3) != SUCCESS)
	{
		free(data);
		return;
	}

	data[0] = atoi(values[0]);
	data[1] = atoi(values[1]);

	send_data(data, 2);

	for (k = 0; k < len; k++)
    {
        temp = strtod(values[k + 2], NULL);
        send_double(&temp);
    }

    data[0] = 0;
	recv_data(data, 1);

	if (data[0] != SUCCESS)
        printf("Server refused our request\n");

	free(data);
}

void set_sum(char value)
{
	char *data;

	data = (char*)malloc(4);
	data[0] = REQUEST_SET_KERNEL_SUM;
	data[1] = 0;
	data[2] = 1;
	data[3] = value;

	send_data(data, 4);

	recv_data(data, 1);

	if ((signed char)data[0] != SUCCESS)
        printf("Server refused our request\n");

	free(data);
}

void set_offset(char value)
{
	char *data;

	data = (char*)malloc(4);
	data[0] = REQUEST_SET_KERNEL_OFF;
	data[1] = 0;
	data[2] = 1;
	data[3] = value;

	send_data(data, 4);

	recv_data(data, 1);

	if ((signed char)data[0] != SUCCESS)
        printf("Server refused our request\n");

	free(data);
}

void set_bit_shift(char value)
{
    char *data;

	data = (char*)malloc(4);
	data[0] = REQUEST_SET_KERNEL_BIT_SHIFT;
	data[1] = 0;
	data[2] = 1;
	data[3] = value;

	send_data(data, 4);

	data[0] = 0;
	recv_data(data, 1);

	if ((signed char)data[0] != SUCCESS)
        printf("Server refused our request\n");
    else
    {
        double min, max;
        min = (double)-128 / (1 << value);
        max = (double)127 / (1 << value);
        printf("Range is now [%.3f,%.3f]", min, max);
    }
	free(data);
}

void print_config()
{
	char *data, width, height;
    int i;
    double temp;

	data = (char*)malloc(3);
	data[0] = REQUEST_GET_KERNEL_CONFIG;
	data[1] = 0;
	data[2] = 0;

	send_data(data, 3);

	free(data);

	recv_data(&height, 1);
	recv_data(&width, 1);

	if  (height * width + 2 < 3)
	{
        printf("An error occurred\n");
        return;
	}

	printf("kernel %dx%d\n",(unsigned char)height, (unsigned char)width);

	for (i = 0; i < height*width; i++)
	{
        if (i % width == 0)
            printf("\n");

        recv_double(&temp);
        printf("%.3f ", temp);
	}

	data = (char*)malloc(3);
	recv_data(data, 3);
	printf("\n\nsum = %d\noffset = %d\nbit_shift = %d\n", data[0], data[1], data[2]);

	free(data);
}

void reset_config()
{
	char *data[] = {"1", "1", "1"};

	set_bit_shift(0);
	set_weights(data);
	set_sum(1);
	set_offset(0);
}

void display_help()
{
	printf("Allowed commands: \nset\nprint\nreset\nhelp\n\n");
	printf("set sum|off|weights|bit_shift <values>\n");
}

int parse_input(int argc, char * args[])
{
	if (argc < 1)
		return 0;

	if (!strcmp(args[0], "set"))
	{
		if (argc < 3)
			return 0;

        else if (!strcmp(args[1], "weights"))
        	set_weights(args + 2);

		else if (!strcmp(args[1], "sum"))
            set_sum(atoi(args[2]));

        else if (!strcmp(args[1], "off"))
            set_offset(atoi(args[2]));

        else if (!strcmp(args[1], "bit_shift"))
            set_bit_shift(atoi(args[2]));
    }

	else if (!strcmp(args[0], "print"))
	    print_config();

	else if (!strcmp(args[0], "reset"))
	    reset_config();

	else if (!strcmp(args[0], "exit"))
		return 1;

	else
	    display_help();

    printf("\n");
	return 0;
}

void read_loop()
{
	int finished = 0, argc;
	char **args;
	char *token;

	args = (char**)malloc(sizeof(char*)*MAX_ARGS);

	while (!finished)
	{
		gets(read_buff);

		argc = 0;

		token = strtok(read_buff, " ");
		while (token != NULL)
		{
            #ifdef DEBUG
            printf("Token: %s\n", token);
            #endif

			args[argc] = (char*)malloc(strlen(token) + 1);
			strcpy(args[argc++], token);
			token = strtok(NULL, " ");
		}

		finished = parse_input(argc, args);

		for (argc--; argc >= 0; argc--)
		{
			free(args[argc]);
        }
	}

	free(args);
}

int send_double(double *value)
{
    char buff[2];

    buff[0] = (signed char)*value;
    buff[1] = (unsigned char)((int)(*value * 256) % 256);
    if (*value < 0 && buff[1] != 0)
    {
        buff[0]--;
    }

    #ifdef DEBUG
    printf("%d %d\n",(signed char)buff[0], (unsigned char)buff[1]);
    #endif

    return send_data(buff, 2);
}

int recv_double(double *value)
{
    char buff[2];
    int retval;

    retval = (signed char)recv_data(buff, 2);
    if (retval != SUCCESS)
        return retval;

    *value = (signed char)buff[0];
    *value += ((double)((unsigned char)buff[1])) / (double)256;

    return retval;
}
