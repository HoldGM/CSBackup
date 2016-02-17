/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

#include <iostream>
#include <string>
#include <vector>
#include <map>
#include "Person.h"
#include "Rating.h"

using std::map;
using std::vector;

Person::~Person(){
	for(list<Rating*>::iterator iter = ratings.begin(); iter != ratings.end(); ++iter){
		delete *iter;
	}
}

void Person::ratingSort(){
	while(this->ratings.front()->rating < this->ratings.size()){
		Rating* r = ratings.front();
		this->ratings.pop_front();
		this->ratings.push_back(r);
	}
}

