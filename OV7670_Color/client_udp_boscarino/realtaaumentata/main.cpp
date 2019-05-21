#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <iostream>
#include "application.h"

using namespace cv;
using namespace std;

int main(int argc,char **argv)
{
    init_glut_application(argc,argv,false);
    while (1) {
        glut_application_loop_iteration(NULL);
    }
    close_glut_application();
}


