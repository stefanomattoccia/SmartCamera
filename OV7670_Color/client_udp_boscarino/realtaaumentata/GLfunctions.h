#if defined(WINDOWS)
#include <GL/gl.h>
#endif
#if defined(LINUX) || defined(MAC)
#include <gl.h>
#endif
#include<GL/freeglut.h>
#include "util.h"


#ifndef GL_functions
#define GL_functions

void loadObj(char *fname, GLuint* object);
void drawBackground(int outputImg_width, int outputImg_height, char *imageData, GLuint *background);
void viewMatrixLoader(GLdouble *vmtx_asArray, GLuint object);

#endif // GL_functions
