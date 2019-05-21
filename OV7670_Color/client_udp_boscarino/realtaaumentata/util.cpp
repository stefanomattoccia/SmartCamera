
///ATTENZIONE: Ricordati di formattare bene il file .obj per avere il numero di occorrenze esatto

#include "util.h"

#define DIM_BUFF 256

///TESTATA
char* readLine(int fd)
{
	char*linea = (char*)malloc(DIM_BUFF+1);
	char c;
	int letti, i=0;

	while( (letti=read(fd,&c,1) != 0) && (c!='\n'))
	{
		linea[i]=c; i++;
	}

	linea[i]='\0';

	if(letti==0) return NULL;
	else return linea;
}

///TESTATA
char* readFirstWord(int fd)
{
	char*word = (char*)malloc(DIM_BUFF+1);
	char c;
	int letti, dimWord=0, found=0, i=0;         //found indica che ho trovato il primo spazio

	while( (letti=read(fd,&c,1) != 0) && (c!='\n'))
	{
		if(c==' '){
            found=1;
		}
		if(found==0 && c!=' '){
            word[i]=c;
            dimWord++;
		}
		i++;
	}

	word[dimWord]='\0';
	//printf("word: %s\n", word);

	if(letti==0) return NULL;
	else return word;
}

///TESTATA
int wordOccurrencesInFile(char*input,char*parola){

	char*word;
	int fd, ris=0;

	fd=open(input,O_RDONLY);
	if (fd<0)
		ris=-1;
	else{
		while ( (word= readFirstWord(fd))!=NULL)
		{
			if(strcmp(word,parola)==0)
			{
				ris++;
			}
			free(word);
		}
		close(fd);
	}
	return ris;
}

///TESTATA
int calc_dimMaxSingleFace(char* fname){
    char *word, t[DIM_BUFF];
    int i=0,j=0, fd, found=1, dimMax=0, dim=0;

	fd=open(fname,O_RDONLY);
	if (fd<0)
		dimMax=-1;
	else{
		while ((word= readLine(fd))!=NULL)
		{
			//printf("word: %s\n", word);
			if(word[0]=='f')
			{
				i=2;
				dim=0;
				found=1;                    //quando trovo uno spazio
				while(word[i]!='\0'){
                    if(word[i]=='/' && word[i+1]=='/' && found==1){     //trovati i doppi slash ho trovato v
                        j=0;
                        dim++;
                        found=0;
                        i=i+2;
                    }
                    if(word[i]==' '){
                        found=1;
                        i++;
                    }
                    else{
                        t[j]=word[i];
                        j++;
                        i++;
                    }

				}
				//printf("temp dim: %d\n", dim);
				if(dimMax<dim) dimMax=dim;

			}
			free(word);
		}
		close(fd);
	}
	return dimMax;
}


///TESTATA
int readV(char *fname, Vertex* vertices){
    char *word, t[DIM_BUFF];
    int i=0,j=0, fd, ris=0, countSpace=0, countLine=0;
    float temp=0;

	fd=open(fname,O_RDONLY);
	if (fd<0)
		ris=-1;
	else{
		while ((word= readLine(fd))!=NULL)
		{
			countSpace=0;                            //lo incremento ogni volta che trovo uno spazio
			//printf("word: %s\n", word);
			if(word[0]=='v' && word[1]==' ')
			{
				i=2;
				j=0;
				while(word[i]!='\0'){
                    if(word[i]==' '){
                        t[j]='\0';
                        j=0;
                        temp=atof(t);
                        //printf("temp: %f, countSpace: %d, countLine %d\n", temp, countSpace, countLine);
                        if(countSpace==0) vertices[countLine].x=temp;
                        else if(countSpace==1) vertices[countLine].y=temp;
                        else if(countSpace==2) vertices[countLine].z=temp;
                        countSpace++;
                    }
                    else{
                        t[j]=word[i];
                        j++;
                    }
                    i++;

				}
				//uscito dal ciclo vuol dire che solo arrivato a finestringa ma non ho ancora salvato il vertice
				t[j]='\0';
                temp=atof(t);
                //printf("temp: %f, countSpace: %d, countLine %d\n", temp, countSpace, countLine);
                if(countSpace==0) vertices[countLine].x=temp;
                else if(countSpace==1) vertices[countLine].y=temp;
                else if(countSpace==2) vertices[countLine].z=temp;
                countSpace++;

                countLine++;
			}
			free(word);
		}
		close(fd);
	}
	return ris;

}


///TESTATA
int readVN(char *fname, Vertex *normals){
    char *word, t[DIM_BUFF];
    int i=0,j=0, fd, ris=0, countSpace=0, countLine=0;
    float temp=0;

	fd=open(fname,O_RDONLY);
	if (fd<0)
		ris=-1;
	else{
		while ((word= readLine(fd))!=NULL)
		{
			countSpace=0;                            //lo incremento ogni volta che trovo uno spazio
			//printf("word: %s\n", word);
			if(word[0]=='v' && word[1]=='n')
			{
				i=3;
				j=0;
				while(word[i]!='\0'){
                    if(word[i]==' '){
                        t[j]='\0';
                        j=0;
                        temp=atof(t);
                        //printf("temp: %f, countSpace: %d, countLine %d\n", temp, countSpace, countLine);
                        if(countSpace==0) normals[countLine].x=temp;
                        else if(countSpace==1) normals[countLine].y=temp;
                        else if(countSpace==2) normals[countLine].z=temp;
                        countSpace++;
                    }
                    else{
                        t[j]=word[i];
                        j++;
                    }
                    i++;

				}
				//uscito dal ciclo vuol dire che solo arrivato a finestringa ma non ho ancora salvato il vertice
				t[j]='\0';
                temp=atof(t);
                //printf("temp: %f, countSpace: %d, countLine %d\n", temp, countSpace, countLine);
                if(countSpace==0) normals[countLine].x=temp;
                else if(countSpace==1) normals[countLine].y=temp;
                else if(countSpace==2) normals[countLine].z=temp;
                countSpace++;

                countLine++;
			}
			free(word);
		}
		close(fd);
	}
	return ris;

}


///TESTATA
int readF(char *fname, Face *faces){
    char *word, t[DIM_BUFF];
    int i=0,j=0, fd, countSlash=0, tempInt=0, ris=0, countLine=0, foundSpace=0;

	fd=open(fname,O_RDONLY);
	if (fd<0)
		ris=-1;
	else{
		while ((word= readLine(fd))!=NULL)
		{
			//printf("word: %s\n", word);
			if(word[0]=='f')
			{
				i=2;
				countSlash=0;
				foundSpace=1;                    //quando trovo uno spazio
				while(word[i]!='\0'){
                    if(word[i]=='/' && word[i+1]=='/' && foundSpace==1){     //trovati i doppi slash e uno spazio prima (considerando fino ai doppi slash) ho trovato anche v
                        t[j]='\0';
                        tempInt=atoi(t);
                        ((faces[countLine]).f)[countSlash]=tempInt;
                        //printf("countLine: %d, countSlash: %d, tempInt %d\n", countLine, countSlash, tempInt);
                        j=0;
                        countSlash++;
                        foundSpace=0;   //sono arrivato agli slash.. quindi lo resetto
                        i=i+2;      //salto entrambi gli slash
                    }
                    if(word[i]==' '){
                        foundSpace=1;
                        i++;
                    }
                    if(word[i]!=' ' && foundSpace==1){
                        t[j]=word[i];
                        j++;
                        i++;
                    }
                    else i++;

				}

			countLine++;
			}
			free(word);
		}
		close(fd);
	}
	return ris;
}

