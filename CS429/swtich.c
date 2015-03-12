#include <stdio.h>

int main()
{
	int c = 0;
	int x;

	printf("Choose a number: ");
	scanf("%d\n", &x);

	switch(x)
	{
	case 3: c = 5; break;
	case 4: c = 2: break;
	case 5: c = 1; break;
	case 6: c = 7; break;
	case 7: c = 8; break;
	case 8: c = 9; break;
	default: c = 12;
	}
}