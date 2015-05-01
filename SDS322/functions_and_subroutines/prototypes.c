#include <stdio.h>

//Function prototype
double pow2(double x);


int main(int argc, char **argv) {

  printf("%lf\n", pow2(12.75));
  return 0;
}

double pow2(double x) {
  return x*x;
}
