#include <stdio.h>

int myarray[3][5] = {
	{0,1,2,3,4},
	{5,6,7,8,9},
	{10,11,12,13,14}
};

int main(int argc, char** argv){

	int a = 5;
	int *pa = &a;
	int **pb = &pa;
	int ***pc = &pb;


	int *p = myarray;

	p += 3;

	printf("%d\n", *p);

	p = myarray;
	int i;

	for (i = 0; i < 15; i++){
		printf("%d\n", *p);
		p++;
	}


	int b = myarray[2][3];

	printf("Value of [2][3] is %d\n", b);

	return 0;
}