#ifndef CONNECTION
#define CONNECTION

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "control.h"
#include "os.h"

#if defined(LINUX) || defined(MAC)

#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <errno.h>

#define BOARD_PORT 2101

#endif //LINUX / MAC

#if defined(WINDOWS)

#define WIN32_LEAN_AND_MEAN

#include <winsock2.h>
#include <windows.h>
#include <ws2tcpip.h>

#define BOARD_PORT "2101"

#endif //WINDOWS

#define BOARD_INET_ADDR "192.168.1.50"

#define SUCCESS 0
#define FAILURE -1

int start_connection();

int close_connection();

int send_data(char *data, int len);

int recv_data(char *data, int len);

#endif
