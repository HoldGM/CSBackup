#include <iostream>
using namespace std;

const int size = 10;


void g(char a[]){
	cout << sizeof(a) << endl;
}

int main (int argc, char const **argv){
	
	int a[size];
	for( int i = 0; i < size; i++){
		a[i] = 0;
	}

	int a2[size] = {}; //initialize everything to 0

	int a3[size] = {1, 2, 3, 4}; //first indices intialied, everything else 0


	cout << sizeof(a2) << endl;


	char word[] = "hello";

	cout << sizeof(word) << endl;
	g(word);


	cout << sizeof(size_t) << endl;
	return 0;
}