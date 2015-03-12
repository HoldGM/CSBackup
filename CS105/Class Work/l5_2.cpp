#include <iostream>
#include <vector>
#include <map>

using namespace std;
n
//Read stuff for pointers and references.

//NULL is basically equivalent to 0
struct a{
	int i;
	bool b;
	int *pi; 
	a(){
		i = 0;
		b = 0;
	}

	a() : i(0), b(0), pi(NULL){

	}

	a(int i) : i(i){
		// this -> i = i;
	}
	void f();
};

class b{
public:
	int i; 
	bool b; 

	void f();
protected:
	void more_protected_function();
public:
	string name;
private:
	void very_private_function();
};

class amimic{
public:
	int i;
	bool b;
	void f();
};

int main(int argc; char const *argv[])
{
	a a1;
	a1.i = 3;
	a *pa = new a();

	(*pa).i = 3; //dereference and change value;
	pa->i = 3; //shorthand for derefernce and change value;

	b b1;
	b1.i = 3; //not allowed because class is private


}
/**
Container classes. 
vector
list
stack
queue


vector<int> v1; //empty vector
vector<int> v2(5); // vector with 5 spaces allocated
vector<int> v3(v2); // copy vector 2
vecotr<int> v4(v2.begin(), v2.end()); // new vector from v2.begin() to v2.end()

classes and structs:

