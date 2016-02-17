/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

#ifndef __MATCHING_H_CS105__
#define __MATCHING_H_CS105__

#include <map>
#include <string>
#include <vector>
#include "Person.h"
#include "Rating.h"

using std::cin;
using std::cout;
using std::map;
using std::vector;
using std::string;

class Person;
class Rating;
class Matcher{

public:
	map<Person*, Person*> stableMatch(const vector<Person*>&, const vector<Person*>&);
	bool checkPreference(const Person*, const Person*, const Person*);
};

#endif