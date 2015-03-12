
#ifndef student____12340912834
#define student____12340912834
#include <string>

using namespace std;


class Person{
	string name;
public:
	Person(){
		cout << "Person ()" << endl;
	}
	~Person(){
		cout << "Person ()" << endl;
	}

	void talk();
};

class Student : public Person{

	int id;

public:
	Student(){
		cout << "Student() " << endl;
	}
	~Student(){
		cout << "~Student() " << endl;
	}
	void talk();
	void g();
	void f();


};

void Student::g()
{
	
}

void Student::f()
{
	
}

#endif