#include <stdio.h>


int main(int argc, char **argv)
{
	int x = -536870911;
	int y;
	printf("%x\n", x);
	y = (x << 2);
	printf("%x\n", y);
	y += x;
	printf("%x\n", y);
	y = y ^ (0x1 << 31);
	printf("%x\n", y);
	y = y >> 3;
	printf("%x\n", y);
	return 0;
}