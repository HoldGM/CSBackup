#include <iostream>
#include <map>
#include <vector>
#include <string>
#include "Matcher.h"
#include "Person.h"
#include "Rating.h"

using std::cin;
using std::cout;
using std:: endl;
using std::vector;
using std::map;
/*

function stableMatch{
	Iniitalize all l in L and r in R to free
	while exists free left l who still has a right r to propose to{
		r = l's highest ranked such right
		if r is free
			(l, r) become engaged
		else some pair (l', r') already exists
			if r prefers l to l'
				(l, r) become engaged
				l' becomes free
			else
				(l', r) remain engaged
	}
}

*/

map<Person*, Person*> Matcher::stableMatch (const vector<Person*>& l, const vector<Person*>& r){
	list<Person*> ll;
	list<Person*> lr;
	map<Person*, Person*> m;
	for(vector<Person*>::const_iterator iter = l.begin(); iter != l.end(); ++iter){
		Person* p = *iter;
		ll.push_front(p);
		m[p] = NULL;
	}
	for(vector<Person*>::const_iterator iter = r.begin(); iter != r.end(); ++iter){
		Person* p = *iter;
		lr.push_front(p);
		m[p] = NULL;
	}

	// for(map<Person*, Person*>::iterator it = m.begin(); it != m.end(); ++it){
	// 	Person* p1 = it->first;
	// 	Person* p2 = it->second;
	// 	cout << p1->name << "  " << p2->name << endl;
	// }

	while(!ll.empty() && !lr.empty()){
		Person* p = ll.front();
		Rating* pFirstChoice = p->ratings.front();
		Person* pPossibleMatch = pFirstChoice->pperson;
		m[p] =  pPossibleMatch;
		ll.pop_front();
	}

	return m;
}