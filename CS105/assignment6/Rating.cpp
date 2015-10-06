#include <iostream>
#include <vector>
#include <map>

using std::cin;
using std::cout;
using std::map;
using std::vector;


string Rating::getName(const Rating* rate){
	return *rate->name;
}