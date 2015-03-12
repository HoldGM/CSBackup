#include <iostream>

using namespace std;

void f(int a[]){
	cout << a << endl;
	cout << "Size of attay is not correct " << sizeof(*a) << endl;
	int *p = a;
	int &ar = a[0];
	cout << p << endl;
	cout << ++p << endl;
	cout << ar << endl;
}

int main (int argc, char const *argv[]){
	
	int a[10] = {};
	//f(a);
	int i = 5;
	//cout << sizeof(i) << endl;
	int &ir = i;
	
	cout << i << endl;
	ir = 3;
	cout << i << endl;
	int *ip = &i;
	
	cout << *ip << endl;
	
	*ip = 7;
	cout << *ip << endl;
	cout << i << endl;
	//double j;
	//cout << sizeof(j) << endl;
	
	//cout << "Size of array: " << sizeof(a) << endl;
	//cout << a << endl;
	return 0;
}