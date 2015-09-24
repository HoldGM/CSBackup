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
	int value;

	cin >> listType;
	
	if(listType == 'l'){
		while((cin >> command) && command != ' '){
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
		}
	}
	else if(listType == 'q'){
		while((cin >> command) && command != ' '){
			if(command == '+'){
				cin >> value;
				queue->push(value);
				cout << "gets here" << endl;
			}
			else if(command == '-'){
				queue->pop();
			}
			else if(command == 'p'){
				queue->print();
			}
			else if(command == '='){
				queue->peek();
			}
		}
	}

	delete list;
	delete queue;

    return 0;
}


