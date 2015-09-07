#include <iostream>
using namespace std;


void aFunc(int a){

}

void bFunc(int **b){

}

void f( int *a){
	int *p = a;
	for ( int i - 0; i < 10; i++){
		cout << *p << endl;
		p++;
	}
}

int main(int argc, char **argv){

	int a[10][10] = {};

	aFunc(a);

	int **b = new *int[10];

	for(int i = 0; i < 10; ++i){
		b[i] = new int[10];
	}

	bFunc(b);

	int i = 5;

	int &ri = i; // alias, automatically dereferences value
	int *pi = &i; // pointer, will not automatically dereference value


	// &, get address, reference
	// *, get value, dereference

	cout << i << endl;
	cout << ri << endl;

	ri = ri + 10;

	cout << i << endl;
	cout << ri << endl;

	cout << i << endl;
	cout << pi << endl;


	INT


	return 1;
}