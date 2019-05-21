#ifndef APPLICATION_H
#define APPLICATION_H

#include "opencv2/highgui/highgui.hpp"
#include "opencv/cv.h"
#include "opencv/highgui.h"
#include "opencv/cxcore.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <iostream>
#if defined(WINDOWS)
#include <GL/gl.h>
#endif
#if defined(LINUX) || defined(MAC)
#include <gl.h>
#endif
#include <GL/freeglut.h>
#include "CVfunctions.h"
#include "GLfunctions.h"

#define SQUARE_SIZE_IN_CM 2.5

//void reshape(int w,int h);
void display();
void init_gl(char *);
void init_cv(bool);
void glut_application_loop_iteration(IplImage*);
void close_glut_application();
int init_glut_application(int argc,char **argv,bool);

#endif // APPLICATION_H
