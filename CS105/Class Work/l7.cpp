/*
Creating custom classes
use .h files to declare functions and varialble to be used.

*/

#include <iostream>
#include "student.h"
#include <vector>


using namespace std;

void Person::talk(){
	cout << "This is a person!" << endl;
}

int main(int argc, char** argv)
{

	Student s;
	vector<Person*> v;
	v.push_back(new Student());
	v.push_back(new Student());
	v.push_back(new Student());

	

	return 0;
}



/*

quiz thurday over Classes.


review: classes, when passing through classes, you are creating
copies and modifying copy.


*/