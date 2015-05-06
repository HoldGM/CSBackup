//Otis Brower
//EID - ODB234
//Assignment: Semester Project

#include <stdio.h>
#include <stdlib.h>
#include "func.h"
#include "IO.h"


//Main fucntion
int main (int argc, char **argv){

	int i, j, k;
	int freq;
	char *out; //Output 
	char *in, x, *y;
	int c;
	char buf[100] = "end";

	FILE *input, *output; //Input and output files
	char filename[100]; //reusable filename string
	heat **tempMap; //array for mapping tempuratures
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

	sprintf(filename, "../%s", in);


	input = fopen(filename, "r");

	fscanf(input, "%d %d %lf %d\n", &xDim, &yDim, &alpha, &numTS);

	tempMap = (heat **)malloc(sizeof(heat*)*xDim);

	for(i = 0; i < xDim; i++){
	 	tempMap[i] = (heat *)malloc(sizeof(heat)*yDim);

	}

	while (!feof(input))
	{
		fgets(buf, 100, input);
		parseStr(buf, &posX, &posY, &temp, &hold);
		if (posX < 0 && posY >= 0){
			wildX(tempMap, posY, xDim, yDim, temp, hold);
	 	}

	 	else if(posY < 0 && posX >= 0){
	 		wildY(tempMap, posX, xDim, yDim, temp, hold);
	 	}
	 	else if(posX < 0 && posY < 0){
	 		wildXY(tempMap, xDim, yDim, temp, hold);
	 	}
	 	else{
	 		tempMap[posX][posY].t = temp;
			tempMap[posX][posY].b = hold;
	 	}
	}

	fclose(input);

	initPrintMap(tempMap, xDim, yDim, out);

	printMap(tempMap, xDim, yDim, numTS, freq, out, alpha);


	for(i = 0; i < xDim; i++){
		free(tempMap[i]);
	}

	free(tempMap);

	return 0;
}
