#include "connection.h"

//#define DEBUG

#if defined(LINUX) || defined (MAC)
int sd;

int start_connection()
{
	struct sockaddr_in servaddr;
	struct in_addr addr;
	struct hostent * host;
	int status;

	#ifdef DEBUG
	printf("Connecting with the board...\n");
	#endif

	memset((char *)&servaddr, 0, sizeof(struct sockaddr_in));
	servaddr.sin_family = AF_INET;

	#ifdef DEBUG
	printf("sin_family initialized\n");
	#endif

	host = gethostbyname(BOARD_INET_ADDR);
	if (host == NULL)
	{
        printf("No host %s found\n", BOARD_INET_ADDR);
        return FAILURE;
	}

	#ifdef DEBUG
	printf("struct hostent initialized\n");
	printf("%s\n", host->h_name);
	#endif

	servaddr.sin_addr.s_addr = ((struct in_addr *) (host->h_addr))->s_addr;
	servaddr.sin_port = htons(BOARD_PORT);

	#ifdef DEBUG
	printf("struct sockaddr_in initialized\n");
	#endif

	sd = socket(AF_INET, SOCK_STREAM, 0);
	if (sd < 0)
	{
		printf("An error occurred during socket creation\n");
		return FAILURE;
	}
	#ifdef DEBUG
	printf("Socket created: %d\n", sd);
	#endif

	if ((status = connect(sd, (struct sockaddr *)&servaddr, sizeof(struct sockaddr))) < 0)
	{
		printf("Could not connect with the board %d\n", errno);
		close(sd);
		return FAILURE;
	}
	#ifdef DEBUG
	printf("Connection established\n");
	#endif

	return SUCCESS;
}

int close_connection()
{
	int retval;

	#ifdef DEBUG
	printf("Disconnecting from the board...\n");
	#endif

	retval = close(sd);

	return retval;
}

int send_data(char * data, int len)
{
	if (write(sd, data, len)<0)
	{
		printf("An error occurred while sending data\n");
		return FAILURE;
	}

	#ifdef DEBUG
	printf("Sent %d bytes of data\n", len);
	#endif

	return SUCCESS;
}

int recv_data(char * data, int len)
{
	if (read(sd, data, len)<0)
	{
		printf("An error occurred while receiving data\n");
		return FAILURE;
	}

	#ifdef DEBUG
	printf("Received %d bytes of data\n", len);
	#endif

	return SUCCESS;
}
#endif // linux || mac

#if defined(WINDOWS)

SOCKET ConnectSocket;

int start_connection()
{
    WSADATA wsaData;
    struct addrinfo *result = NULL,
                    hints;
    int iResult;

    ConnectSocket = INVALID_SOCKET;

    // Initialize Winsock
    iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
    if (iResult != 0) {
        printf("WSAStartup failed with error: %d\n", iResult);
        return FAILURE;
    }

    #ifdef DEBUG
	printf("Windows socket initialized successfully\n");
	#endif

    ZeroMemory( &hints, sizeof(hints) );
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    #ifdef DEBUG
	printf("Socket hints zeroed successfully\n");
	#endif

    // Resolve the server address and port
    iResult = getaddrinfo(BOARD_INET_ADDR, BOARD_PORT, &hints, &result);
    if ( iResult != 0 ) {
        printf("getaddrinfo failed with error: %d\n", iResult);
        WSACleanup();
        return FAILURE;
    }

    #ifdef DEBUG
	printf("getaddrinfo executed successfully\n");
	#endif

    // Create a SOCKET for connecting to server
    ConnectSocket = socket(result->ai_family, result->ai_socktype,
        result->ai_protocol);
    if (ConnectSocket == INVALID_SOCKET) {
        printf("socket failed with error: %d\n", WSAGetLastError());
        WSACleanup();
        return FAILURE;
    }

    #ifdef DEBUG
	printf("Windows Socket created\n");
	#endif

    // Connect to server.
    iResult = connect( ConnectSocket, result->ai_addr, (int)result->ai_addrlen);
    if (iResult == SOCKET_ERROR) {
        closesocket(ConnectSocket);
        ConnectSocket = INVALID_SOCKET;
        return FAILURE;
    }

    #ifdef DEBUG
	printf("Windows Socket connected\n");
	#endif

    freeaddrinfo(result);

    if (ConnectSocket == INVALID_SOCKET) {
        printf("Unable to connect to server\n");
        WSACleanup();
        return FAILURE;
    }

    return SUCCESS;
}

int close_connection()
{
	int retval;

	#ifdef DEBUG
	printf("Disconnecting from the board...\n");
	#endif

    // shutdown the connection since no more data will be sent
    retval = shutdown(ConnectSocket, SD_SEND);
    if (retval == SOCKET_ERROR) {
        printf("shutdown failed with error: %d\n", WSAGetLastError());
        closesocket(ConnectSocket);
        WSACleanup();
        return FAILURE;
    }

    // cleanup
    closesocket(ConnectSocket);
    WSACleanup();

	return SUCCESS;
}

int send_data(char * data, int len)
{
    int res;

    // Send an initial buffer
    res = send( ConnectSocket, data, len, 0 );
    if (res == SOCKET_ERROR) {
        printf("send failed with error: %d\n", WSAGetLastError());
        return FAILURE;
    }

	#ifdef DEBUG
	printf("Sent %d bytes of data\n", res);
	#endif

	return SUCCESS;
}

int recv_data(char * data, int len)
{
    int res;
    res = recv(ConnectSocket, data, len, 0);
    if (res < 0){
        printf("recv failed with error: %d\n", WSAGetLastError());
        return FAILURE;
    }
    if (res == 0){
        printf("connection closed\n");
        return FAILURE;
    }

	#ifdef DEBUG
	printf("Received %d bytes of data\n", res);
	#endif

	return SUCCESS;
}
#endif // windows

