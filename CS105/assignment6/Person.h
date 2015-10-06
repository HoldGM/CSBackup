#ifndef PERSON_H_QFPJLY
#define PERSON_H_QFPJLY

#include <string>
#include <list>
#include <map>
#include "Rating.h"

using std::string;
using std::list;
using std::map;

class Person{    
public:
    string name;
    list<Rating*> ratings;
    int matched;
    Person(const string& name) : name(name){}
    void addMatch(int);
    string getTopChoice();
};


#endif