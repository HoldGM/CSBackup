#include <stdio.h>

struct astruct{
	int a;
	short b;
	short c;
};
int main(int argc, char **argv){

	struct astruct b;

	b.a = 3;
	b.b = 2;
	b.c = 1;

	int *pa = &b;
	unsigned char *p = &b;

	int i;
	for( i=0; i < sizeof(struct astruct); i++)
	{
		printf("Byte is %X\n", *p);
		printf("Number is %d\n", *pa);
		p++;
		pa++;
	}
	return 0;
}