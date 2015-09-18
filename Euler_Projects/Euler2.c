//Project Euler #2

#include <stdio.h>
#include <math.h>

int main(int argc, char **argv){

	int num1 = 1;
	int num2 = 2;
	int sum = 2;

	while(num2 < 4000000){
		int temp = num2;
		num2 = num1 + temp;
		num1 = temp;

		if(num2 % 2 == 0){
			sum += num2;
		}

	}

	printf("The sum of the even values of the Fibonacci sequence less than 4,000,000 are: %d\n", sum);

	return 0;
}