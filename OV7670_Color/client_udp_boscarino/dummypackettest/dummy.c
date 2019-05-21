#include "dummy.h"

int start_simulation()
{
    struct sockaddr_in client_address;
    int address_size = sizeof(client_address);
    
    // Although it is possible to set the maximum udp package size (64kb) in Windows as send buffer
    // this is not permitted in UNIX like systems, so we set the buffer at a lower size
    
#if defined(WINDOWS)
    long buffer_sockopt = 65536 * 1024;
#endif
#if defined(LINUX) || defined(MAC)
    long buffer_sockopt = 65536;
#endif

    HYBRID_SOCKET s = init_socket_wrapper(buffer_sockopt, &client_address, true, SERVER, PORT);

    BYTE *frame_pipeline    = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));
    BYTE *frame_luma        = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));
	BYTE *frame_chroma      = (BYTE*)malloc(WIDTH*HEIGHT*sizeof(BYTE));

    packet_data* dummy = (packet_data*) malloc(sizeof(packet_data));
    dummy->count = 0;
    dummy->fragment = 0;
    dummy->frame_index = 0;

    memcpy(dummy->data, frame_pipeline, sizeof(dummy->data));
    memcpy(dummy->data_luma, frame_luma, sizeof(dummy->data_luma));
    memcpy(dummy->data_chroma, frame_chroma, sizeof(dummy->data_chroma));

    int image_index = 0;
    IplImage* loadedZynq;
    IplImage* loadedChroma;
    IplImage* loadedLuma;

    char currentNumber[BUFFER_SIZE];
    char currentStandard[BUFFER_SIZE];
    char currentChroma[BUFFER_SIZE];
    char currentLuma[BUFFER_SIZE];

    // Main loop
    while(1)
    {
        // Flushing the strings
        strncpy(currentNumber, "", sizeof(currentNumber));
        strncpy(currentStandard, "", sizeof(currentStandard));
        strncpy(currentChroma, "", sizeof(currentChroma));
        strncpy(currentLuma, "", sizeof(currentLuma));

        // Setting up filenames
        sprintf(currentNumber, "%d.png", image_index);

        strcat(currentStandard, "ZYNQ_");
        strcat(currentLuma, "LUMA_");
        strcat(currentChroma, "CHROMA_");

        strcat(currentStandard, currentNumber);
        strcat(currentLuma, currentNumber);
        strcat(currentChroma, currentNumber);

        printf("[INFO] Attempting to load frame number %d from files\n", image_index);

        // ZYNQ LOADING ATTEMPT
        if ((loadedZynq = cvLoadImage(currentStandard, CV_LOAD_IMAGE_ANYDEPTH)) == NULL) {
            printf("[INFO] Couldn't load file %s, sorry.\n", currentStandard);
            close_socket_wrapper(s);
            free(frame_pipeline);
            free(frame_luma);
            free(frame_chroma);
            return -1;
        } else
            printf("[INFO] Canvas size for %s %dx%d\n", currentStandard, loadedZynq->width, loadedZynq->height);

        // LUMA LOADING ATTEMPT
        if ((loadedLuma = cvLoadImage(currentLuma, CV_LOAD_IMAGE_ANYDEPTH)) == NULL) {
            printf("[INFO] Couldn't load file %s, sorry.\n", currentLuma);
            close_socket_wrapper(s);
            free(frame_pipeline);
            free(frame_luma);
            free(frame_chroma);
            return -1;
        } else
            printf("[INFO] Canvas size for %s %dx%d\n", currentLuma, loadedZynq->width, loadedZynq->height);

        // CHROMA LOADING ATTEMPT
        if ((loadedChroma = cvLoadImage(currentChroma, CV_LOAD_IMAGE_ANYDEPTH)) == NULL) {
            printf("[INFO] Couldn't load file %s, sorry.\n", currentChroma);
            free(frame_pipeline);
            free(frame_luma);
            free(frame_chroma);
            close_socket_wrapper(s);
            return -1;
        } else
            printf("[INFO] Canvas size for %s %dx%d\n", currentChroma, loadedZynq->width, loadedZynq->height);

        // Invio dei frammenti:
        // pacchettizzeremo FRAME_I_SIZE alla volta, scorrendo lungo il singolo frame
        // e li invieremo man mano.
        // Prepare the message
        int i = 0;
        for (i=0; i<(FRAME_SIZE/FRAME_I_SIZE); i++) {
            memcpy(dummy->data,        loadedZynq->imageData   + i*FRAME_I_SIZE, sizeof(dummy->data));
            memcpy(dummy->data_luma,   loadedLuma->imageData   + i*FRAME_I_SIZE, sizeof(dummy->data_luma));
            memcpy(dummy->data_chroma, loadedChroma->imageData + i*FRAME_I_SIZE, sizeof(dummy->data_luma));

            // Packet sending procedure
            int error_check = 0;

            error_check = sendto_socket_wrapper(s, (char*)dummy, sizeof(packet_data), 0, (struct sockaddr *)&client_address, address_size);
        #if defined(SOCKET_ERROR)
            if (error_check == SOCKET_ERROR)
        #endif // defined
        #if !defined(SOCKET_ERROR)
            if (error_check < 0)
        #endif // SOCKET_ERROR
            {
                printf("[ERROR] sendto_socket_wrapper\n");
                perror("Errore: ");
                printf("[ERROR] Last frame index -> %d, i -> %d\n", dummy->frame_index, dummy->fragment);
                close_socket_wrapper(s);
                free(frame_pipeline);
                free(frame_luma);
                free(frame_chroma);
                exit(EXIT_FAILURE);
            }

            printf("[INFO] Fragment number %d successfully sent\n", dummy->fragment);

            dummy->count++;
            dummy->fragment == FRAME_SIZE/FRAME_I_SIZE ? dummy->fragment = 0 : dummy->fragment++;

        }
        dummy->frame_index++;
        dummy->fragment = 0;
        printf("[INFO] Frame number %d successfully sent\n", image_index);
        usleep(16670); // Inaccurate way of simulating 60 frames sent per seconds
        image_index == MAX_IMAGE_NUM ? image_index = 0 : image_index++;
    }

    free(frame_pipeline);
    free(frame_luma);
    free(frame_chroma);
    close_socket_wrapper(s);
}
