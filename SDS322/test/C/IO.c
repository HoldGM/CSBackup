#include <stdio.h>
#include <stdlib.h>
#include "IO.h"
#include "func.h"

//Function will print file for the inital state of the temperature map
void initPrint(heat **tempMap, int xDim, int yDim, char *out){

	FILE *output;
	char filename[100];
	int i, j;



	sprintf(filename, "%s_0000.dat", out);
	output = fopen(filename,"w");
	for( j = 0; j < yDim; j++){
		for( i = 0; i < xDim; i++){
			printf("(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
			fprintf(output, "(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);

		}
		printf("\n");
		fprintf(output, "\n");
	}
	fclose(output);
}


//This will progress the heat equation through the intended number of time steps and print 
//the state of thee temperature map at the given frequency
void print(heat **tempMap, int xDim, int yDim, int numTS, int freq, char *out, double alpha){

	int i, j, k;
	FILE *output;
	char filename[100];

	for(k = 1; k <= numTS; k++){
		sprintf(filename, "%s_%04d.dat", out, k);
		heatEq(tempMap, alpha, xDim, yDim);

		if(k % freq == 0){
			output = fopen(filename, "w");
			for( j = 0; j < yDim; j++){
				for( i = 0; i < xDim; i++){
					printf("(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
					fprintf(output, "(%-3d, %-3d) : %-8.4lf  -  %d  ", i, j, tempMap[i][j].t, tempMap[i][j].b);
				}
				printf("\n");
				fprintf(output, "\n");
			}
			fclose(output);
		}
	}

}