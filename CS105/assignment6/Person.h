#ifndef PERSON_H_QFPJLY
#define PERSON_H_QFPJLY

#include <string>
#include <list>
#include "Rating.h"

using std::string;
using std::list;

class Person{    
public:
    string name;
    list<Rating*> ratings;
    Person(const string& name) : name(name){}
};


#endif