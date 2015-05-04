#include <stdio.h>

int main(int argc, char **argv) {

  if(argc > 3) {
    printf("Input file: %s\n", argv[1]);
    printf("Output file: %s\n", argv[2]);
    printf("This simulation will run for %d time steps.\n", atoi(argv[3]));
  } else {
    printf("You must specify 3 arguments!\n");
  }

  return 0;
}
