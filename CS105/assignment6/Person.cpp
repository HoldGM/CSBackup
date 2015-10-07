#include <iostream>
#include <string>
#include <vector>
#include <map>
#include "Person.h"

using std::map;
using std::vector;

Person::~Person(){
	for(list<Rating*>::iterator iter = ratings.begin(); iter != ratings.end(); ++iter){
		delete *iter;
	}
}

void Person::addMatch(int flag){
   	this->matched = flag;
}

