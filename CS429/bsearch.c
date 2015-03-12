#include <stdio.h>

int myarr[] = {3,5,8,12,55,101,200};

int bsearch(int *myarr, int x, int low, int high)
{
	if(low > high)
	{
		return -1;
	}

	int i = (low + high) / 2;
	int mid = myarr[i];

	if(mid > x)
	{
		return bsearch(myarr, x, low, i-1);
	}
	else if( mid < x)
	{
		return bsearch(myarr, x, i+1, high);	
	}
	else
		return i;

}

int main(int argc, char const *argv[])
{
	int index = bsearch(myarr, 12, 0, 6);

	printf("THe index for 12 is %d\n", i);

	printf("The index of 101 is %d\n", bsearch(myarr, 101, 0, 6));

	return 0;
}