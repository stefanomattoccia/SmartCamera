#include "GLfunctions.h"

void loadObj(char *fname, GLuint* object)
{
    int dimV=0, dimVN=0, read, k=0, i=0;
    int dimF=0; //numero righe con f (dim array di faces)
    int dimMaxSingleFace=0; //numero massimo di elementi che contiene una riga f nel file (dimF*dimMaxSingleFace=dimensione matrice faces)
    Vertex *vertices, *normals;
    GLfloat toInsert[3];
    Face *faces, face;
    char toSearch[5];

    strcpy(toSearch, "v");
    dimV=wordOccurrencesInFile(fname, toSearch);
    if (dimV==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }
    vertices=(Vertex*)malloc(dimV*sizeof(Vertex));

    strcpy(toSearch, "vn");
    dimVN=wordOccurrencesInFile(fname, toSearch);
    if (dimVN==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }
    normals=(Vertex*)malloc(dimVN*sizeof(Vertex));

    strcpy(toSearch, "f");
    dimF=wordOccurrencesInFile(fname, toSearch);
    if (dimF==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }
    dimMaxSingleFace=calc_dimMaxSingleFace(fname);
    if (dimMaxSingleFace==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }
    faces=(Face*)malloc(dimF*sizeof(Face));
    for(k=0; k<dimF; k++){
        (faces[k]).f=(int*)malloc(dimMaxSingleFace*sizeof(int));        //alloco gli array delle strutture contenute nell'array faces
    }

    read=readV(fname, vertices);
    if (read==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }

    read=readVN(fname, normals);
    if (read==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }

    read=readF(fname, faces);       //ogni riga f è formattata così: f v1//vn1 v2//vn2 .... ma a me interessa solo che la funzione ritorni le v
    if (read==-1)
    {
        printf("can't open file %s\n", fname);
        exit(1);
    }


    *object=glGenLists(1);
    glNewList(*object, GL_COMPILE);                    //crea la nuova lista usando l'identificatore prescelto
    glFrontFace(GL_CCW);
    for(k=0; k<dimF; k++){
        face=faces[k];

        //glPushMatrix();
        glBegin(GL_TRIANGLES);                        //sostituisce glBeging(GL_POLYGONS) che sostituisce glBegin(GL_POINTS); per questo bisogna esportare il file da blender già triangulated
        for(i=0; i<dimMaxSingleFace; i++){
            if((face.f)[i]>0){
                toInsert[0]=(GLfloat)normals[(face.f)[i] - 1].x;
                toInsert[1]=(GLfloat)normals[(face.f)[i] - 1].y;
                toInsert[2]=(GLfloat)normals[(face.f)[i] - 1].z;
                glNormal3fv(toInsert);
            }
            toInsert[0]=(GLfloat)vertices[(face.f)[i] - 1].x;
            toInsert[1]=(GLfloat)vertices[(face.f)[i] - 1].y;
            toInsert[2]=(GLfloat)vertices[(face.f)[i] - 1].z;
            glVertex3fv(toInsert);
        }
        glEnd();
    }

    free(normals);
    free(vertices);
    for(i=0; i<dimF; i++){
        free((faces[i]).f);
    }
    free(faces);

    //glPopMatrix();
    glEndList();                                        //finisce la creazione della lista

}

void drawBackground(int outputImg_width, int outputImg_height, char *imageData, GLuint *background){

    glDisable(GL_LIGHTING);
    //creo la texture di background
    glBindTexture(GL_TEXTURE_2D, *background);
    //glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexImage2D(GL_TEXTURE_2D, 0, 3, outputImg_width, outputImg_height, 0, GL_RGB, GL_UNSIGNED_BYTE, imageData);

    //disegno il background
    glBindTexture(GL_TEXTURE_2D, *background);
    glPushMatrix();
    glTranslatef(0.0,0.0,-5.0);        //traslazione per impostare lontananza sfondo

    glBegin(GL_QUADS);
    glTexCoord2f(0.0, 1.0); glVertex3f(-4.0, -3.0, 0.0);
    glTexCoord2f(1.0, 1.0); glVertex3f( 4.0, -3.0, 0.0);
    glTexCoord2f(1.0, 0.0); glVertex3f( 4.0,  3.0, 0.0);
    glTexCoord2f(0.0, 0.0); glVertex3f(-4.0,  3.0, 0.0);
    glEnd( );

    glPopMatrix();

    glEnable(GL_LIGHT0);
    glEnable(GL_LIGHTING);
}

void viewMatrixLoader(GLdouble *vmtx_asArray, GLuint object){
    glDisable(GL_TEXTURE_2D);   //IMPORTANTE disattivare la texture dello sfondo e abilitare il riconoscimento della
    glEnable(GL_DEPTH_TEST);    //profondità affinché venga visualizzato l'oggetto davanti alla texture

    glPushMatrix();
    glLoadMatrixd(vmtx_asArray);

    glTranslatef(-10.0,10.0, -3.0);

    glScalef(5,5,5);
    //glRotatef(objectrot,0,1,0);
    glRotatef(180,0,1,0);
    glRotatef(90,0,0,1);
    glCallList(object);

    glPopMatrix();

    glEnable(GL_TEXTURE_2D);    //IMPORTANTE riabilitare la texture e disabilitare la depth_test dopo aver diegnato l'oggetto
    glDisable(GL_DEPTH_TEST);
}

