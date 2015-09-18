#include <iostream>
using namespace std;

class Base{
private:
	int id;
public:
	int x;
	// Base(){
	// 	cout << "Base()" << endl;
	// }
	// Base(const Base& other){
	// 	cout << "Base(Base)" << endl;
	// }

	void f(){
		cout << "Base::f()" << endl;
	}
	virtual ~Base(){	
	}
};

class Derived: public Base{
public: 
	string name;

	// Derived(){
	// 	cout << "Derived()" << endl;
	// }
	// Derived(const Derived& other){
	// 	cout << "Derived(Derived)" << endl;
	// }

	void f(){
		cout << "Derived::f()" << endl;
	}

};

void f(Base& b){
	cout << b.x << endl;

}

int main (int argc, char **argv){
	Base* array[10];
	array[0] = new Derived();

	array[0]->f();
	Derived d;
	d.f();

}
