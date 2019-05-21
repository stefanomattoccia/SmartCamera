#include "application.h"

int horizontal_corners = 6;
int vertical_corners = 9;

//globals
bool is_plugin = false;
GLuint object;                         //identifica la display list
GLuint background;
Mat tempA;  //tempA e tempD non sono delle vere variabili temporanee: devono esistere nello stesso scope di A e D per lo stesso tempo di A e D
Mat tempD;
Mat inverse_matrix;
CvMat A;
CvMat D;
IplImage* inputImg;
IplImage* inputGreyScaleImg;
CvCapture* webcam;
int greyScaleImgAllocated=0;
GLdouble vmtx_asArray[16];

/*void reshape(int w,int h)
{
    glViewport(0,0,w,h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective (60, (GLfloat)w / (GLfloat)h, 0.1, 1000.0);
    glEnable(GL_DEPTH_TEST);
    glMatrixMode(GL_MODELVIEW);
}*/

void display()
{
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();

    // Se si sta utilizzando la modalità plugin
    // si vuole usare come inputImg quella già posseduta (inviata dal Client)
    if (!is_plugin) {
        //Altrimenti verrà usata la webcam
        inputImg=cvQueryFrame(webcam);
    }

    if (inputImg != NULL) {
        cvCvtColor(inputImg, inputImg, CV_BGR2RGB); //necessario perché opencv riceve le immagini in BGR e le vecchie versioni di opengl non possono creare texture in BGR, per questo converto il frame in RGB
        //importantissimo il controllo sull'allocazione dell'immagine in grey scale altrimenti ad ogni ciclo verrebbe riallocato lo spazio
        if(greyScaleImgAllocated==0)inputGreyScaleImg=cvCreateImage(cvGetSize(inputImg),IPL_DEPTH_8U,1);
        greyScaleImgAllocated=1;
        cvCvtColor(inputImg, inputGreyScaleImg, CV_RGB2GRAY);
        //inverto l'immagine in modo da adattarla ad opengl
        cvFlip(inputImg, inputImg, 1);

        drawBackground(inputImg->width, inputImg->height, inputImg->imageData, &background);

        int found=pose_single_camera_checkerboard_and_buildViewMatrix(vmtx_asArray, &A, &D, inputGreyScaleImg, inputImg, inverse_matrix, horizontal_corners, vertical_corners, SQUARE_SIZE_IN_CM);

        //load view matrix and draw object
        if(found==1)viewMatrixLoader(vmtx_asArray, object);
        ///andrebbe impostato il timer per il framerate

    }

    glutSwapBuffers(); //swap the buffers
}

void init_gl(char *fname){
                         //R  //G  //B  //A
    GLfloat position[4]={-40, 100, 50, 0.0};
    GLfloat ambient[4]={1.0, 0.5, 0.3, 0.0};
    GLfloat diffuse[4]={0.5, 0.5, 0.5, 1.0};
    //GLfloat direction[3]={0.0, 1.0, 0.0};

    glLightfv(GL_LIGHT0, GL_POSITION,  position);
    glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);                  //contains four floating-point values that specify the ambient RGBA intensity of the light. The default ambient light intensity is (0.0, 0.0, 0.0, 1.0).
    glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);                  //contains four floating-point values that specify the diffuse RGBA intensity of the light. The default diffuse intensity of light zero is (1.0, 1.0, 1.0, 1.0).
    //glLightfv(GL_LIGHT0, GL_SPOT_DIRECTION, direction);


    glEnable(GL_LIGHT0);
    glEnable(GL_LIGHTING);

    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClearDepth(1.0);

    glDepthFunc(GL_LEQUAL);
    glShadeModel(GL_SMOOTH);                                    //già di default ma lascio la funzione per rimarcare che non è GL_FLAT
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective (60, (GLfloat)1280 / (GLfloat)720, 0.1, 1000.0);
    glMatrixMode(GL_MODELVIEW);

    glEnable(GL_TEXTURE_2D);
    glGenTextures(1, &background);

    loadObj(fname, &object);
}

void init_cv(bool plugin_mode){
#if defined(WINDOWS)
    FileStorage fs("out_camera_data.xml", FileStorage::READ);
    fs["Camera_Matrix"]>>tempA;
    cout << "Camera_Matrix:" << tempA << endl;
    fs["Distortion_Coefficients"]>>tempD;
    cout << "Distortion_Coefficients:" << tempD << endl;
#endif
#if defined(LINUX) || defined(MAC)
    /*CvFileStorage* fs = cvOpenFileStorage("out_camera_data.xml", 0, CV_STORAGE_READ);*/
    FileStorage fs();
    fs.open("out_camera_data.xml", FileStorage::READ);
    fs["Camera_Matrix"]>>tempA;
    cout << "Camera_Matrix:" << tempA << endl;
    fs["Distortion_Coefficients"]>>tempD;
    cout << "Distortion_Coefficients:" << tempD << endl;
#endif

    A=tempA;
    D=tempD;
    if (!plugin_mode) {
        webcam = cvCaptureFromCAM(0);    //0 is the id of video device. 0 if you have only one camera

        if(webcam == NULL){     //check video device has been initialized
            printf("Error: cannot open the video device");
        }
    }


    //alloco e popolo la matrice che mi serve per invertire gli assi della viewMatrix, in modo che le coordinate openCV siano compatibili con quelle openGL
    inverseMatrixAllocation(&inverse_matrix);
}

void glut_application_loop_iteration(IplImage* currentImage) {
        // fetch current color image
        if (is_plugin)
            inputImg = currentImage;
        display();
        glutMainLoopEvent();
}

void close_glut_application() {
    cvReleaseImage(&inputGreyScaleImg);
    cvReleaseImage(&inputImg);
    if (!is_plugin)
        cvReleaseCapture(&webcam);
}

int init_glut_application(int argc,char **argv, bool plugin_mode) {
    printf("[INFO] Initializing freeglut application\n");
    is_plugin = plugin_mode;
    char fname[50];
    strcpy(fname, "object.obj");
    glutInit(&argc,argv);
    glutInitDisplayMode(GLUT_DOUBLE|GLUT_RGB|GLUT_DEPTH);

    glutInitWindowSize(1280,720);

    glutInitWindowPosition(20,20);
    glutCreateWindow("Glut view");
    //glutReshapeFunc(reshape);
    glutDisplayFunc(display);
    glutIdleFunc(display);

    init_gl(fname);
    init_cv(plugin_mode);

    return 0;
}
