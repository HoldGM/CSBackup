// Project Euler #3

#include <stdio.h>
#include <math.h>

 int is_prime(int n){
 	int i = 2;
 	if(n % 2 == 0)
 		return 0;
 	i = 3;
 	while(i < n/2){
 		if (n % i == 0){
 			return 0;
 		}
 		i += 2;
 	}

 	return 1;
 }

int main (int argc, char ** argv){

	long num = 600851475143;
	int largest_prime = 1;
	int i = 2;
	
	while( i < num/2){
		if(is_prime(i) == 1 && num % i == 0){
			largest_prime = i;
		}
		printf("%d\n", largest_prime);
		i++;
	}

	printf("Largest prime factor: %d\n", largest_prime);

	return 0;
}