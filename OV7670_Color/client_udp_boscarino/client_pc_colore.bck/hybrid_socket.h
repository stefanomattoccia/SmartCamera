#ifndef hybrid_socket
    #define hybrid_socket

    #include <stdlib.h>
    #include <stdio.h>
    #include <stdbool.h>
    #include <string.h>

    #include "../OS/os.h"

    #if defined(WINDOWS)
        #include <WinSock2.h>
        #include <direct.h>
        typedef SOCKET HYBRID_SOCKET;
        typedef int BYTES_NUM;
    #endif // WINDOWS
    #if defined(LINUX) || defined(MAC)
        #include <unistd.h>
        #include <sys/types.h>
        #include <sys/socket.h>
        #include <netinet/in.h>
        #include <arpa/inet.h>
        #include <netdb.h>
        typedef int HYBRID_SOCKET;
        typedef ssize_t BYTES_NUM;
    #endif // LINUX || MAC

    int close_socket_wrapper(HYBRID_SOCKET);
    HYBRID_SOCKET init_socket_wrapper(long, struct sockaddr_in*, bool, char*, int);
    BYTES_NUM recvfrom_socket_wrapper(HYBRID_SOCKET, void*, int, int, struct sockaddr*, int*);
    BYTES_NUM sendto_socket_wrapper(HYBRID_SOCKET, char*, int, int, const struct sockaddr*, int);
#endif // hybrid_socket
