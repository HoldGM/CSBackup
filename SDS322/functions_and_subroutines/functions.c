#include<stdio.h>

//void function (subroutine)
void hello() {
  printf("Hello, world!\n");
}

void whoisit(char *name) {
  printf("Hello, %s!\n", name);
}


double pow2(double x) {
  x *= x;
  return x;
}



int foo(int i, int *array) {
  return array[i];
}


void plusone(int *x) {
  (*x)++;
}


int main(int argc, char **argv) {

  double x = 12.75;
  int myArray[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int z=12;

  //Call hello
  hello();

  whoisit("Bob");
  whoisit("Alice");

  printf("%lf is the square of %lf\n", pow2(x), x);


  printf("The value at position %d is: %d\n", 4, foo(4, myArray));

  printf("The value of z is: %d\n", z);
  plusone(&z);
  printf("The value of z is now: %d\n", z);

  return 0;
}
