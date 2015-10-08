/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

#ifndef PERSON_H_QFPJLY
#define PERSON_H_QFPJLY

#include <string>
#include <list>
#include <map>
#include "Rating.h"

using std::string;
using std::list;
using std::map;

class Rating;
class Person{    
public:
    string name;
    list<Rating*> ratings;
    int matched;
    string fiance;


    Person(const string& name) : name(name){
    }
    ~Person();
    void ratingSort();
};


#endif