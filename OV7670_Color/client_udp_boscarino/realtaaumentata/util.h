#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#ifndef UTIL_H
#define UTIL_H


typedef struct{
    float x;
    float y;
    float z;
}Vertex;

typedef struct{
    int* f;
}Face;


char* readFirstWord(int fd);
int wordOccurrencesInFile(char*input,char*parola);
int calc_dimMaxSingleFace(char*fname);
int readV(char *fname, Vertex *vertices);
int readVN(char *fname, Vertex *normals);
int readF(char *fname, Face *faces);

#endif // UTIL_H
