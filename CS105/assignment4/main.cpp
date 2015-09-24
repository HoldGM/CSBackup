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
	char listType;
	char command;
	int value;

	cin >> listType;
	
	if(listType == 'l'){
		while(cin){
			cin >> command;
			if(command == '+'){
				cin >> value;
				list->push(value);
			}
			else if(command == '-'){
				list->pop();
			}
			else if(command == 'p'){
				list->print();
			}
			else if(command == '='){
				list->peek();
			}
			cout << 1 << "   ";
		}
	}

    return 0;
}


