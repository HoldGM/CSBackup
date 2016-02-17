//Project Euler #1

#include <stdio.h>
#include <math.h>

int main (int argc, char **argv){

	int num = 0;
	int sum = 0;

	while (num < 1000){
		if(num % 3 == 0 || num % 5 == 0)
		{
			sum += num;
		}
		num++;
	}

	printf("The sum of the multiples of 3 and 5 below 1000 is: %d\n", sum);
	printf("This is correct\n");

	return 0;
}