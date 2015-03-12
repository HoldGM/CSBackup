#include <iostream>
using namespace std;

void h(int a[], int nr, int nc){
	int *p = a;
	for(size_t j= 0; j < nr; ++j){
		for (size_t i = 0; i < nc; ++i){
			cout << *(p++);
		}
		cout << endl;
	}
}

void g( int a[][3]){
	cout << a << endl;
}
void f(int a[]){
	int *p = a;
	for (size_t i = 0; i < 10; ++i){
		
		p++;
		cout<< *p << endl;
	}
}

int main(int argc, char const *argv[]){
	
	int a[] = {1,2,3,4,5,6};
	int b[][3] = { {1,2,3}, {4,5,6} };
	f(a);
	g(b);
	h(a, 2, 3);
	return 0;
}