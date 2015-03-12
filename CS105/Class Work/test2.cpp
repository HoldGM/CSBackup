#include <iostream>

using namespace std;

int main(int argc, const char *argv[])
{
	int iterations;
	cin >> iterations;

	bool array[10][10];

	for(size_t j = 0; j < 10 ; ++j)
	{
		cin.getline(array[j], 0, '\n');
	}
	return 0;
}