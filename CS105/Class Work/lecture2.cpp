#include <iostream>
using namespace std;

const int MAX_ARRAY_SIZE = 256;
//Function to sum two numbers
int sum (int x, int y){
	
	return x+y;
	
}

//Function to sum two numbers
int sum (int x, int y, int z){
	
	return x+y+z;
}

void print (int array[], int size){
	for(size_t i = 0; i < size; ++i){
		cout<< array[i] << endl;
	}
}



int main (int argc, char const *argv[])
{
	cout << "Hello World!" << endl;
	
	int i = 5;
	int j = 7;
	int a[7] = {}; //Assigns 0 to each element of the array.
	int b[4] = {1,2,3,4}; //Assigns each element
	int c[4] = {1}; //First element 1, rest 0
	
	
	cin >> i;
	int d[i]; // Creates array of size i. Will fail on most compilers
	
	char charArray[] = "hello";
	
	cout << sizeof(charArray) << endl;
	
	for( size_t i = 0; i < 7; ++i)
	{
		a[i] = i;
	}
	
	cout << sum(i,j, 7) << endl;
	return 0;
}
