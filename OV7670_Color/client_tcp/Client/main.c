#include <stdio.h>
#include <stdlib.h>
#include "control.h"

int main(int argc, char * argv[])
{
	printf("Client TCP\n\n");

	if (start_connection() != SUCCESS)
        exit(1);

	read_loop();

	close_connection();

	return 0;
}
