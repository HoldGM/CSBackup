#include <iostream>
#include <map>
#include <list>
#include <vector>
#include "Person.h"
#include "readgraph.h"
#include "Matcher.h"

using std::list;
using std::vector;

int main (int argc, char ** argv){
	vector<Person*> left;
	vector<Person*> right;
	readIn(left, right);

	for(int i = 1; i <= 2; ++i){
		vector<Person*>& group = i==1 ? left : right;
		cout << "Group: " << i << endl;
		for(vector<Person*>::iterator iter = group.begin(); iter != group.end(); ++iter){
			Person* p = *iter;
			cout << p->name << " : ";
			for(list<Rating*>::iterator iter = p->ratings.begin(); iter != p->ratings.end(); ++iter){
				cout << "(" << (*iter)->pperson->name << ":" << (*iter)->rating << ")";
			}
			cout << endl;
		}
	}

	// for(vector<Person*>::iterator iter = left.begin(); iter != left.end(); ++iter){
	// 	Person* p= *iter;
	// 	Rating* r= p->ratings.front();
	// 	Person* p2 = r->pperson;
	// 	cout <<  p->name << " " << p2->name << endl;
	// }
	Matcher* match;
	map<Person*, Person*> m = match->stableMatch(left, right);
	// for(map<Person*, Person*>::const_iterator iter = m.begin(); iter != m.end(); ++iter){
	// 	Person* p1 = iter->first;
	// 	Person* p2 = iter->second;
	// 	cout << p1->name << "  " << p2->name << endl;
	// }

	return 0;
}