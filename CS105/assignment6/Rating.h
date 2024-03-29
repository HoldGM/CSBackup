/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

#ifndef RATING_H_ZCVMKZBA
#define RATING_H_ZCVMKZBA

#include <string>
#include "Person.h"

using std:: string;

class Person;
class Rating{
public:
    Person* pperson;
    int rating;

    ~Rating();
    Rating(Person* p, int rating) : pperson(p), rating(rating){}
    string getName(const Rating*);
};

#endif