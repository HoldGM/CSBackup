/** 
Name: Otis Brower
Eid: ODB234
*/

// #include "PriorityQueue.h" /// make sure we include our PriorityQueue
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main (int argc, char const **argv)
{

	string lineIn = "";
	char listType;
	char command;
	string element;

	cin >> listType;
	if(listType == 'l'){
		cout << "linked list" << endl;
	}
	else
		cout << "prioity queue" << endl;

	while(cin){
		cin >> command;
		
		cin >> element;

		cout << command << "  " << element << endl;
	}
	
    return 0;
}