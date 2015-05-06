//Otis Brower
//EID - ODB234
//Assignment: Semester Project

#include <stdio.h>
#include <stdlib.h>
#include "func.h"
#include "IO.h"


//Typedef of the struct for the temperature map elements
// typedef struct{
// 	double t;
// 	int b;
// }heat;


//Function declarations
// void wildX(heat **tempMap, int posY, int xDim, int yDim, double temp, int hold);
// void wildY(heat **tempMap, int posX, int xDim, int yDim, double temp, int hold);
// void wildXY(heat **tempMap, int xDim, int yDim, double temp, int hold);
// void parseStr(const char *str, int *posX, int *posY, double *temp, int *hold);
// void heatEq(heat **tempMap, double alpha, int xDim, int yDim);
// void print(heat **tempMap, int xDim, int yDim, int numTS, int freq, char *out, double alpha);
// void initPrint(heat **tempMap, int xDim, int yDim, char *out);



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

	// printf("%d %d %lf %d\n", xDim, yDim, alpha, numTS);

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

// //Fills the indicated locations of the temperature map when x has a wildcard
// void wildX(heat **tempMap, int posY, int xDim, int yDim, double temp, int hold){
// 	int i;

// 	for( i = 0; i < xDim; i++){
// 		tempMap[i][posY].t = temp;
// 		tempMap[i][posY].b = hold;
// 	}
// }

// //Fills the indicated locations of the the temperature map when y has a wildcard
// void wildY(heat **tempMap, int posX, int xDim, int yDim, double temp, int hold){
// 	int i;

// 	for( i = 0; i < yDim; i++){
// 		tempMap[posX][i].t = temp;
// 		tempMap[posX][i].b = hold;
// 	}
// }


// //Fill the temperature map with values when both x and y are wild cards
// void wildXY(heat **tempMap, int xDim, int yDim, double temp, int hold){
// 	int i, j;

// 	for( j = 0; j < yDim; j++){
// 		for( i = 0; i < xDim; i++){
// 			tempMap[i][j].t = temp;
// 			tempMap[i][j].b = hold;
// 		}
// 	}
// }


// //String parser, this will take in a string of each line from the input file and
// //split the file into the required values, returning -1 for any x or y wildcard
// void parseStr(const char *str, int *posX, int *posY, double *temp, int *hold){
// 	char x[10];
// 	char y[10];
// 	char t[10];
// 	char h[10];
// 	char c;
// 	int i = 0;
// 	int s = 0;
// 	int xI = 0;
// 	int yI = 0; 
// 	int tI = 0;
// 	int hI = 0;
// 	while ( (c = str[i]) != '\0'){
// 		if( (c = str[i]) == 32){
// 			++s;
// 			++i;
// 			continue;
// 		}
// 		switch(s){
// 			case 0 :	x[xI] = str[i];
// 						++i;
// 						++xI;
// 						break;
// 			case 1 : 	y[yI] = str[i];
// 						++i;
// 						++yI;
// 						break;
// 			case 2 : 	t[tI] = str[i];
// 						++i;
// 						++tI;
// 						break;
// 			default:	h[hI] = str[i];
// 						++i;
// 						++hI;
// 						break; 	
// 		}
// 	}

// 	if(x[0] == '*'){
// 		*posX = -1;
// 	}
// 	else{
// 		*posX = atoi(x);
// 	}
// 	if(y[0] == '*'){
// 		*posY =-1;
// 	}
// 	else{
// 		*posY = atoi(y);
// 	}

// 	*temp = atof(t);
// 	*hold = atoi(h);
// }


// //This will calculate the new state of the temperature map based on the previous state
// void heatEq(heat **tempMap, double alpha, int xDim, int yDim){
// 	heat **newMap;
// 	int i, j;

// 	newMap = (heat **)malloc(sizeof(heat*)*xDim);

// 	for(i = 0; i < xDim; i++){
// 	 	newMap[i] = (heat *)malloc(sizeof(heat)*yDim);

// 	}


// 	for (j = 0; j < yDim; j++){
// 		for(i = 0; i < yDim; i++){
// 			newMap[i][j] = tempMap[i][j];
// 		}
// 	}

// 	//Top left corner
// 	if(tempMap[0][0].b == 0){
// 		tempMap[0][0].t = newMap[0][0].t + alpha * (newMap[1][0].t + newMap[1][1].t + newMap[0][1].t - 4 * newMap[0][0].t);
// 	}
// 	//Lower right corner
// 	if(tempMap[xDim-1][yDim-1].b == 0){
// 		tempMap[xDim-1][yDim -1].t  = newMap[xDim-1][yDim-1].t + alpha * (newMap[xDim-2][yDim-1].t + newMap[xDim-2][yDim-2].t + 
// 			newMap[xDim-1][yDim-2].t - 4 * newMap[xDim-1][yDim-1].t);
// 	}
// 	//Lower left Corner
// 	if(tempMap[0][yDim-1].b == 0){
// 		tempMap[0][yDim-1].t = newMap[0][yDim-1].t + alpha * (newMap[0][yDim-2].t + newMap[1][yDim-2].t + newMap[1][yDim-1].t - 
// 			4 * newMap[0][yDim-1].t);
// 	}
// 	//Upper right corner
// 	if(tempMap[xDim-1][0].b == 0){
// 		tempMap[xDim-1][0].t = newMap[xDim-1][0].t + alpha * (newMap[xDim-2][0].t + newMap[xDim-2][1].t + newMap[xDim-1][1].t - 4 * 
// 			newMap[xDim-1][0].t);
// 	}
// 	//Top edge & Bottom edge
// 	for(i = 1; i < xDim - 1; i++){
// 		if(tempMap[i][0].b == 0){
// 			tempMap[i][0].t = newMap[i][0].t + alpha * (newMap[i-1][0].t + newMap[i-1][1].t + newMap[i][1].t + newMap[i+1][1].t + 
// 				newMap[i+1][0].t - 6 * newMap[i][0].t);
// 		}
// 		if(tempMap[i][yDim-1].b == 0){
// 			tempMap[i][yDim-1].t = newMap[i][yDim-1].t + alpha * (newMap[i-1][yDim-1].t + newMap[i-1][yDim-2].t + newMap[i][yDim-2].t + 
// 				newMap[i +1][yDim-2].t + newMap[i+1][yDim-1].t - 6 * newMap[i][yDim-1].t);
// 		}
// 	}

// 	//Left edge & right edge
// 	for(j = 1; j < yDim-1; j++){
// 		if(tempMap[0][j].b == 0){
// 			tempMap[0][j].t = newMap[0][j].t + alpha * (newMap[0][j-1].t + newMap[1][j-1].t + newMap[1][j].t + newMap[1][j+1].t + 
// 				newMap[0][j+1].t - 6 * newMap[0][j].t);
// 		}
// 		if(tempMap[xDim-1][j].b == 0){
// 			tempMap[xDim-1][j].t = newMap[xDim-1][j].t + alpha * (newMap[xDim-1][j-1].t + newMap[xDim-2][j-1].t + newMap[xDim-2][j].t + 
// 				newMap[xDim-2][j+1].t + newMap[xDim-1][j+1].t - 6 * newMap[xDim-1][j].t);
// 		}
// 	}

// 	for(j = 1; j < yDim-1; j++){
// 		for(i = 1; i < xDim-1; i++){
// 			if(tempMap[i][j].b == 0){
// 				tempMap[i][j].t = newMap[i][j].t + alpha*(newMap[i-1][j-1].t + newMap[i][i-1].t + newMap[i+1][j-1].t + newMap[i-1][j].t 
// 					+ newMap[i+1][j].t + newMap[i-1][j+1].t + newMap[i][j+1].t + newMap[i+1][j+1].t - 8 * newMap[j][j].t);
// 			}
// 		}
// 	}

// 	for( i = 0; i < xDim; i++){
// 		free(newMap[i]);
// 	}
// 	free(newMap);
// }


// //Function will print file for the inital state of the temperature map
// void initPrint(heat **tempMap, int xDim, int yDim, char *out){

// 	FILE *output;
// 	char filename[100];
// 	int i, j;



// 	sprintf(filename, "%s_0000.dat", out);
// 	output = fopen(filename,"w");
// 	for( j = 0; j < yDim; j++){
// 		for( i = 0; i < xDim; i++){
// 			printf("(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
// 			fprintf(output, "(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);

// 		}
// 		printf("\n");
// 		fprintf(output, "\n");
// 	}
// 	fclose(output);
// }


// //This will progress the heat equation through the intended number of time steps and print 
// //the state of thee temperature map at the given frequency
// void print(heat **tempMap, int xDim, int yDim, int numTS, int freq, char *out, double alpha){

// 	int i, j, k;
// 	FILE *output;
// 	char filename[100];

// 	for(k = 1; k <= numTS; k++){
// 		sprintf(filename, "%s_%04d.dat", out, k);
// 		heatEq(tempMap, alpha, xDim, yDim);

// 		if(k % freq == 0){
// 			output = fopen(filename, "w");
// 			for( j = 0; j < yDim; j++){
// 				for( i = 0; i < xDim; i++){
// 					printf("(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
// 					fprintf(output, "(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
// 				}
// 				printf("\n");
// 				fprintf(output, "\n");
// 			}
// 			fclose(output);
// 		}
// 	}

// }