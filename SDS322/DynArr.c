#include <stdio.h>
#include <stdlib.h>

typedef struct{
	double x, y, z;
}vector;

vector updatePosition(vector ***velocity, vector particle){

	vector answer;

	answer.x = ...;
	answer.y = ...;
	answer.z = ...;
}

void passanarray(int ***array){

	array[0][0][0] = 12;
}


int main(int argc, char **argv)
{
	// Statically allocated arrays
	// int myarray[10][10];

	// Pointer to an array (to be allocated at runtime, also called heap array)
	int **myarray2;
	int *myFirstDynamic;

	// 1-D array on the heap
	myFirstDynamic = (int *)malloc(sizeof(int) * 10);

	// 2-D allocation, step 1: allocare row lookup
	myarray2 = (int **)malloc(sizeof(int*)*10);

	for( int i = 0; i < 10;  i++){
		myarray2[i] = (int*)malloc(sizeof(int)*10);
	}


	//Pointer to a 3-D array
	int ***gettingcomplicated;

	gettingcomplicated = (int***)malloc(sizeof(int**)*10);


	for(int i = 0; i < 10; i++){
		gettingcomplicated[i] = (int**)malloc(sizeof(int*) * 10);
		for(int j = 0; j < 10; j++){
			gettingcomplicated[i][j] = (int*)malloc(sizeof(int) * 10);
		}
	}

	gettingcomplicated[0][0][0] = 100;

	printf("%d\n", gettingcomplicated[0][0][0]);


	printf("This is repetative.\n");



	passanarray(gettingcomplicated);

	//What is the value of gettingcomplicated[0][0][0] after calling function
	printf("%d", gettingcomplicated[0][0][0]); //would be 12 (pass by reference)

	particles[i] = updatePosition(velocity, particle[i]);

	
	// Clean up after program end
	free(myFirstDynamic);

	//Free mulitdimensional array
	for(int i = 0; i < 10; i++){
		free(myarray2[i]);
	}

	free(myarray2);

	//Clean up in reverse order
	for(int i = 0; i < 10; i++){
		for(int j = 0; j < 10; j++){
			// Free columns
			free(gettingcomplicated[i][j])
		}
		// Free Column look up
		free(gettingcomplicated[i]);
	}

	// Finish free of array
	free(gettingcomplicated);
	
	//Cannot access memory area after free has been called.



	return 0;
}