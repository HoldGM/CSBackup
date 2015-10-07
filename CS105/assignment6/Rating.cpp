#include <iostream>
#include <vector>
#include <map>
#include <string>
#include "Rating.h"

using std::cin;
using std::cout;
using std::map;
using std::vector;
using std::string;


Rating::~Rating(){
	delete pperson;
}
string Rating::getName(const Rating* rate){
	Person* p = rate->pperson;

	return p->name;
}