#ifndef __MATCHING_H_CS105__
#define __MATCHING_H_CS105__

#include <map>
#include <string>
#include "Person.h"
#include "Rating.h"

using std::cin;
using std::cout;
using std::map;

class Matcher{

public:
	map<string, string> matches;
	map stableMatch(const list<Person>&, const list<Person>&);
};

#endif