#include <iostream>

using namespace std;

int main(int argc, char** argv){

	cout << "Hello, World!" << endl;

	cout << "Input a char: ";

	char c, c2;
	int i; 
	bool b;
	float f; 
	double d;

	cin >> c;

// assume the imput is 1 c b 3.14 0

	cin >> i >> c >> c2 >> f >> b;

	cout << "f = " << f <<  "   b = " << b << endl;


	return 1;
}