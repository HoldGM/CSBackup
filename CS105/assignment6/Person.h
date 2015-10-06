#ifndef __PERSON_H_CS105__
#define __PERSON_CS105_H__

#include <iostream>
#include <string>
#include <list>
#include "Rating.h"

using std::cout;
using std::cin;
using std::endl;
using std::list;

class Person{

public:
	string name;
	list<Rating> prefList;
	int house;

};

#endif