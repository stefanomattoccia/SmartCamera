#if defined(WINDOWS)
    #include <windows.h>
#endif // WINDOWS

#include "OV7670.h"

#ifdef __cplusplus
    #include <iostream>
    using namespace std;
#endif // __cplusplus

int main(int argc, char **argv)
{
    Get_Time();

    // Start the network udp client
    // and the OpenCV Visualizer
    start_OV7670(argc, argv);

    return 0;
}

