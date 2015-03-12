#include <iostream>
#include <vector>
#include <string>

using namespace std;


class Person{
public:
	Person() : pi(0), name(){

	}
	Person(int aid) : pi(0), id(id){

	}
	string name;
	int id;
	int* pi;
};

void changePerson(Person p){//creates copy and modifies copy
	p.name = "jens";
}

void changePerson(Person& p){//modifies original
	p.name = "jens";
}

void changePerson2(Person* p){//modifies 
	p->name = "jens";
}

int main(int argc, char* argv[])
{
	//int *p = new int(5); //pointer to int with value of 5
	int *pa = new int[10]; //pointer to int array of size 10

	Person p; //create occurence of person class
	Person p2(7); //create instance of person class using second constructor
	p.id = 3;
	p.name = "maia";
	Person* pp = &p;
	pp->id = 3;

	changePerson(p);
	changePerson2(&p);

	vecor<Person*> v(3); // creates pionter to class, 
	v[0] = new Person();
	Person* pJens = v[0];
	v[0].name = "Jens";//not possible
	pJens->name = "Jens";


	//delete p; //delete pointer
	delete pa[]; // delete array
	delete v;
	return 0;
}

/*
	Classes:
		a instance is an occurence
			each has their own values 

		initialization of object
*/