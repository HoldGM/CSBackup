//Otis Brower
//EID - ODB234
//Assignment: Semester Project

#include <stdio.h>
#include <stdlib.h>

typedef struct{
	double t;
	int b;
}heat;

void wildX(heat **tempMap, int posY, int xDim, int yDim, double temp, int hold);
void wildY(heat **tempMap, int posX, int xDim, int yDim, double temp, int hold);
void wildXY(heat **tempMap, int xDim, int yDim, double temp, int hold);

int main (int argc, char **argv){

	int i, j;
	int freq;
	char *out;
	char *in, x, *y;
	int c;
	char buf[100] = "end";

	FILE *input;
	char filename[100];
	heat **tempMap;
	int xDim, yDim, numTS;
	double alpha, temp;
	int posX, posY, hold;

	if( argc > 1 ){
		in = argv[1];
	}
	if( argc > 2 ){
		freq = atoi(argv[2]);
	}
	if( argc > 3 ){
		out = argv[3];
	}

	printf("%d\n", argc);

	printf("Input = %s\n", in);

	printf ("Freq = %d\n", freq);

	printf("Output = %s\n", out);

	sprintf(filename, "../%s", in);

	printf("%s\n", filename);

	input = fopen(filename, "r");

	fscanf(input, "%d %d %lf %d", &xDim, &yDim, &alpha, &numTS);

	printf("%d %d %lf %d\n", xDim, yDim, alpha, numTS);

	tempMap = (heat **)malloc(sizeof(heat*)*xDim);

	for(i = 0; i < xDim; i++){
	 	tempMap[i] = (heat *)malloc(sizeof(heat)*yDim);

	}

	while (!feof(input))
	{
		printf("It gets here!\n");
		printf("%s", fgets(buf, 100, input));
		// fscanf(input, "%d %d %lf %d", &posX, &posY, &temp, &hold);
		// x = posX;
		// printf("%c\n", x);
		// if (posX == '*' && posY != '*'){
		// 	wildX(tempMap, posY, xDim, yDim, temp, hold);
	 // 	}

	 // 	else if(posY == '*' && posX != '*'){
	 // 		wildY(tempMap, posX, xDim, yDim, temp, hold);
	 // 	}
	 // 	else if(posX == '*' && posY == '*'){
	 // 		wildXY(tempMap, xDim, yDim, temp, hold);
	 // 	}
	 // 	else{
	 // 		tempMap[posX][posY].t = temp;
		// 	tempMap[posX][posY].b = hold;
	 // 	}
	}

	fclose(input);

	for( j = 0; j < yDim; j++){
		for( i = 0; i < xDim; i++){
			printf("(%d, %d) : %lf  -  %d", i, j, tempMap[i][j].t, tempMap[i][j].b);
		}
		printf("\n");
	}
	return 0;
}

void wildX(heat **tempMap, int posY, int xDim, int yDim, double temp, int hold){
	int i;

	for( i = 0; i < xDim; i++){
		tempMap[i][posY].t = temp;
		tempMap[i][posY].b = hold;
	}
}

void wildY(heat **tempMap, int posX, int xDim, int yDim, double temp, int hold){
	int i;

	for( i = 0; i < yDim; i++){
		tempMap[posX][i].t = temp;
		tempMap[posX][i].b = hold;
	}
}

void wildXY(heat **tempMap, int xDim, int yDim, double temp, int hold){
	int i, j;

	for( j = 0; j < yDim; j++){
		for( i = 0; i < xDim; i++){
			tempMap[i][j].t = temp;
			tempMap[i][j].b = hold;
		}
	}
}

