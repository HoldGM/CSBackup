/*
	Otis Brower
	EID: odb234
	Assignment 6
*/

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
		p->ratingSort();
		ll.push_front(p);
		m[p] = NULL;
	}
	for(vector<Person*>::const_iterator iter = r.begin(); iter != r.end(); ++iter){
		Person* p = *iter;
		lr.push_front(p);
	}

	while(!ll.empty() && !lr.empty()){
		Person* p = ll.front();
		ll.pop_front();
		Rating* pFirstChoice = p->ratings.front();
		Person* pPossibleMatch = pFirstChoice->pperson;
		m[p] =  pPossibleMatch;
		for(map<Person*, Person*>::iterator iter = m.begin(); iter != m.end(); ++iter){
			if(iter->second == pPossibleMatch && iter->first != p){
				Person* nameBeta = iter->first;
				//if new suiter is prefered, remove match and move old suiter
				//to back of singles list
				if(checkPreference(pPossibleMatch, p, nameBeta)){
					m[nameBeta] = NULL;
					Rating* r = nameBeta->ratings.front();
					nameBeta->ratings.pop_front();
					iter->first->ratings.push_back(r);
					ll.push_back(iter->first);
				}
				//if original suiter is prefered, move new to back of singles list
				else{
					ll.push_back(p);
					Rating* r = p->ratings.front();
					p->ratings.pop_front();
					p->ratings.push_back(r);
				}
			}
		}
	}

	return m;
}

bool Matcher::checkPreference(const Person* p, const Person* nameAlpha, const Person* nameBeta){
	int foundAlpha = 0;
	int foundBeta = 0;
	list<Rating*> r = p->ratings;

	//search through ratings list person
	//report rank of 2 possible spouses
	for(list<Rating*>::iterator iter = r.begin(); iter != r.end(); ++iter){
		if(!nameAlpha->name.compare((*iter)->pperson->name)){
			foundAlpha = (*iter)->rating;
		}
		else if(!nameBeta->name.compare((*iter)->pperson->name)){
			foundBeta = (*iter)->rating;
		}
	}

	// search list of possible spouse 1 to find persons rating
	r = nameAlpha->ratings;
	for(list<Rating*>::iterator iter = r.begin(); iter != r.end(); ++iter){
		if(!p->name.compare((*iter)->pperson->name)){
			foundAlpha += (*iter)->rating;
		}
	}

	//search list of possible spouse 2 to find persons rating
	r = nameBeta->ratings;
	for(list<Rating*>::iterator iter = r.begin(); iter != r.end(); ++iter){
		if(!p->name.compare((*iter)->pperson->name)){
			foundBeta += (*iter)->rating;
		}
	}

	//after combined ratings found, determine person's prefered spouse
	if(foundAlpha > foundBeta){
		return true;
	}
	return false;
}