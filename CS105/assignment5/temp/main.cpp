/** 
Name: <your name>
Eid: <your id>
*/

#include <iostream>
#include "PriorityQueue.h" /// make sure we include our PriorityQueue
using std::cout;
using std::cin;
using std::endl;

int main (int argc, char const **argv)
{
    char command;
    int value;
    LinkedList* ll;
    cin >> command ; /// list type here
    ll = command == 'l' ? new LinkedList() : new PriorityQueue();
    while (cin >> command){
        if (command == '+'){
            cin >> value;
            ll->push(value);
        } else if (command == '-'){
            ll->pop();
        } else if (command == '='){
            ll->peek();
        } else if (command == 'p'){
            ll->print();
        }
    }
    return 0;
}