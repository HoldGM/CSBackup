#include <stdio.h>

void recureWorld(int n);

int main(int argc, char ** argv){

	int x = atoi(argv[1]); 

	if(argc < 2){
		printf("Invalid number of arguments.\n");
	}
	else if(argc > 1){
		recureWorld(x);
	}

	if(argc > 2){
		printf("Additional arguments unused.");
	}
	
	if (x == x){
		printf("Goodbye\n");
	}

	return 0;
}

void recureWorld(int n){
	if(n > 1){
		recureWorld(n - 1);
		printf("Hello, World!\n");
	}
	else if(n == 1){
		printf("Hello, World!\n");
	}
}