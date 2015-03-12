#include <iostream>
#include <vector>

using namespace std;

int calcSize(int* parray);

void find(int & car1);

void discover(int * pint);

int main(int argc, char const *argv[])
{
	float someammount = 5.5f;
	int capacity;
	float *pamount = &someamount;
	int ar[] = {1,2,3,4,5};

	int &rcapacity = capacity;
	int &price = *pamount;

	int *psize = &capacity;
	float **p = &pamount;

	calcSize(ar);
	find(capacity);
	discover(&capacity);

	return 0;
}

