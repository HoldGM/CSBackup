#include <stdio.h>
#include <stdlib.h>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len)
{
	for(size_t i = 0; i < len; ++i){
		printf("%.0X", start[i]);
	}
	printf("\n");
}
//Question 2.57
void show_short(short n)
{
	show_bytes((byte_pointer) &n, sizeof(n));
}

void show_long(long n)
{
	show_bytes((byte_pointer) &n, sizeof(n));
}

void show_double(double n)
{
	show_bytes((byte_pointer) &n, sizeof(n));
}

	//Question 2.59


	//Question 2.60
	//Question 2.61
	//Question 2.63
	//Question 2.64
	//Question 2.66
	//Question 2.67
	//Question 2.68
	//Question 2.69
	//Question 2.70

int main(int argc, const char *argv[])
{
	short s = 42;
	long l = s;
	double d = s;
	show_short(s);
	show_long(l);
	show_double(d);

	return 0;
}