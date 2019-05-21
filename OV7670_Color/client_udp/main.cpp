#include <iostream>
#include <windows.h>
#include "OV7670.h"


using namespace std;

int main(int argc, char **argv)
{

    Get_Time();

    // Start the network udp client
    // and the OpenCV Visualizer
    start_OV7670();

    return 0;
}

