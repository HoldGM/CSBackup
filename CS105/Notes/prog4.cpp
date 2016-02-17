#include <iostream>
using namespace std;

class A{
public:
	static int count;
	const int id;
	A():id(count++){
		count << "A().id = " << id << endl;
	}
	A(const A& other) : id(count++){
		cout << "A(copy of" << other.id << ").id = " << id << endl;
	}
	A& operator = (const A& other){
		cout << "A.id" << id << " = other " << other.id << endl;
	}
};

int A::count = 0;

A f(A a){
	return a;
}
int main(int argc, char ** argv){

	A a;
	A b;

	return 1;
}