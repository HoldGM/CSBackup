/** 
Name: Otis Brower
Eid: ODB234
*/

#include "PriorityQueue.h" /// make sure we include our PriorityQueue
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main (int argc, char const **argv)
{

	LinkedList<int> *list = new LinkedList<int>(NULL);
	PriorityQueue<int> *queue = new PriorityQueue<int>(NULL);
	char listType;
	char command;
	int value = 4;
	
	while(cin){
		cin >> list;
	}

	cout << list;
	delete list;
	delete queue;

    return 0;
}


