#include "hybrid_socket.h"

int close_socket_wrapper(HYBRID_SOCKET sd)
{
    printf("[INFO] Closing socket...\n");
    int code;

    #if defined(WINDOWS)
        code = closesocket((SOCKET) sd);
        WSACleanup();
    #endif // WINDOWS

    #if defined(LINUX) || defined(MAC)
        code = close((int) sd);
    #endif // LINUX || MAC

    return code;
}

HYBRID_SOCKET init_socket_wrapper(long buffer_sockopt, struct sockaddr_in *addr, bool server_mode, char* ip, int port)
{
    #if defined(WINDOWS)

        WSADATA wsa;
        //Initialise winsock
        printf("[INFO] Initialising sockets\n");
        if (WSAStartup(MAKEWORD(2, 2), &wsa) != 0)
        {
            printf("[ERROR] Failed: error code %d", WSAGetLastError());
            exit(EXIT_FAILURE);
        }

        /* CREAZIONE SOCKET ---------------------------- */
        SOCKET sd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
        if (sd == INVALID_SOCKET) { perror("[ERROR] Opening socket"); exit(3); }

        printf("[INFO] Created socket sd = %d\n", (int) sd);

        /* PREPARAZIONE INDIRIZZO E PORTA ----------------------------- */
        memset((char *)addr, 0, sizeof(struct sockaddr_in));
        (*addr).sin_family = AF_INET;
        (*addr).sin_port = htons(port);

        if (server_mode) {
            (*addr).sin_addr.S_un.S_addr = inet_addr(ip);
        } else {
            (*addr).sin_addr.s_addr = INADDR_ANY;
        }


        // Client-specific instructions
        if (!server_mode) {
            /* BIND SOCKET --------------- */
            if (bind(sd, (struct sockaddr *) addr, sizeof(*addr)) == SOCKET_ERROR)
            {
                perror("[ERROR] Bind socket failed\n");
                exit(1);
            }
            printf("[INFO] Binding socket completed, port %i\n", ntohs((*addr).sin_port));

            if (setsockopt(sd, SOL_SOCKET, SO_RCVBUF, (char*)&buffer_sockopt, 8) == -1) {
                fprintf(stderr, "[ERROR] Setting socket opts: %d\n", WSAGetLastError());
            }
            else printf("[INFO] Setting sockets opts completed\n");
        }

    #endif // WINDOWS
    #if defined(LINUX) || defined(MAC)
        printf("[INFO] Initialising sockets\n");

        /* CREAZIONE SOCKET ---------------------------- */
        int sd = socket(AF_INET, SOCK_DGRAM, 0);
        if (sd < 0) { perror("[ERROR] Opening socket"); exit(3); }

        printf("[INFO] Created socket sd = %d\n", (int) sd);

        /* PREPARAZIONE INDIRIZZO E PORTA ----------------------------- */
        memset((char *)addr, 0, sizeof(struct sockaddr_in));
        (*addr).sin_family = AF_INET;
        (*addr).sin_port = htons(5555);

        if (server_mode) {
            inet_aton(ip, &addr->sin_addr);
        } else {
            (*addr).sin_addr.s_addr = INADDR_ANY;
        }

        // Client-specific instructions
        if (!server_mode) {
            /* BIND SOCKET --------------- */
            if (bind(sd, (struct sockaddr *) addr, sizeof(*addr)) < 0)
            {
                perror("[ERROR] Bind socket failed\n");
                exit(1);
            }
            printf("[INFO] Binding socket completed, port %i\n", ntohs((*addr).sin_port));

            if (setsockopt(sd, SOL_SOCKET, SO_RCVBUF, &buffer_sockopt, sizeof(buffer_sockopt)) == -1) {
                fprintf(stderr, "[ERROR] Setting socket opts\n");
            } else
                printf("[INFO] Setting sockets opts completed\n");
        } else {
            if (setsockopt(sd, SOL_SOCKET, SO_SNDBUF, &buffer_sockopt, sizeof(buffer_sockopt)) == -1) {
                fprintf(stderr, "[ERROR] Setting socket opts\n");
                perror("Sockopt:");
            } else
                printf("[INFO] Setting sockets opts completed\n");
        }
    #endif // LINUX || MAC

    return (HYBRID_SOCKET) sd;
}

BYTES_NUM recvfrom_socket_wrapper(HYBRID_SOCKET s, void *buf, int len, int flags, struct sockaddr *from, int *fromlen)
{
    #if defined(WINDOWS)
        return (BYTES_NUM) recvfrom((SOCKET) s, (char*)buf, len, flags, (struct sockaddr *)&from, fromlen);
    #endif // WINDOWS

    #if defined(LINUX) || defined(MAC)
        return (BYTES_NUM) recvfrom((int) s, (char*)buf, len, flags, (struct sockaddr *)&from, (socklen_t*) fromlen);
    #endif // LINUX || MAC
}

BYTES_NUM sendto_socket_wrapper(HYBRID_SOCKET s, char* buf, int len, int flags, const struct sockaddr *to, int tolen)
{
    #if defined(WINDOWS)
        return (BYTES_NUM) sendto((SOCKET) s, (char*)buf, len, flags, to, tolen);
    #endif // WINDOWS

    #if defined(LINUX) || defined(MAC)
        return (BYTES_NUM) sendto((int) s, (char*)buf, len, flags, to, (socklen_t) tolen);
    #endif // LINUX || MAC
}
