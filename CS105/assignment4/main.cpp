/** 
Name: Otis Brower
Eid: ODB234
*/

// #include "PriorityQueue.h" /// make sure we include our PriorityQueue
#include <iostream>
#include <string>
#include <sstream>
#include "LinkedList.h"

using namespace std;

int main (int argc, char const **argv)
{

	LinkedList<int> *list = new LinkedList<int>(NULL);

	cout << "add 20, 30, 40, 50\n\n";
	list->push(20);
	list->push(30);
	list->push(40);
	list->push(50);
	list->pop();
	list->pop();
	list->pop();
	list->pop();
	list->peek();
	list->print();
	

    return 0;
}


