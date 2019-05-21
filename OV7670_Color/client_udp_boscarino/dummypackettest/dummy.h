#ifndef DUMMY_H
    #define DUMMY_H

    #include <stdio.h>
    #include <unistd.h>

    #include "../OS/os.h"
    #include "../Client_pc_colore/hybrid_socket.h"

    #if defined(WINDOWS)
        #include <WinSock2.h>
        #include <direct.h>
    #endif // WINDOWS
    #if defined(LINUX) || defined(MAC)
    #endif // LINUX || MAC

    #include <opencv/cv.h>
    #include <opencv/highgui.h>

    #define WIDTH 640
    #define HEIGHT 480
    #define FRAME_I_SIZE 9600
    #define FRAME_SIZE 307200
    #define MAX_IMAGE_NUM 5
    #define BUFFER_SIZE 256

    #define SERVER "127.0.0.1"  //ip address of udp server
    #define BUFLEN 512  //Max length of buffer
    #define PORT 5555   //The port on which to listen for incoming data


    // Warning! FRAME_I_SIZE defines a fragment of the image:
    // because of this, every data entry sent with the packet contains the fragment,
    // not the full size image.

    typedef unsigned char BYTE;

    typedef struct {
        int count;
        int fragment;
        int frame_index;
        BYTE data[FRAME_I_SIZE];
        BYTE data_luma[FRAME_I_SIZE];
        BYTE data_chroma[FRAME_I_SIZE];
    } packet_data;


    int start_simulation();

#endif // DUMMY_H
