#include <stdio.h>
#include <stdlib.h>
#include "bar.h"

int main(int argc, char **argv){

	int n = 3;
	float x = 2;

	printf("Hello World!\n");
	printf("The square of %d is %d\n", n, computesquare(x, n));
	return 0;
}