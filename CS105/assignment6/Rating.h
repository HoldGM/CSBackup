#ifndef RATING_H_ZCVMKZBA
#define RATING_H_ZCVMKZBA

#include <string>

using std:: string;

class Person;
class Rating{
public:
    Person* pperson;
    int rating;
    Rating(Person* p, int rating) : pperson(p), rating(rating){}
    string getName();
};

#endif