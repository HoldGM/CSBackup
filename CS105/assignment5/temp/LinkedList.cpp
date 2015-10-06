#include <limits>
#include <sstream>
#include <string>
#include "LinkedList.h"

using std::endl;
using std::cout;
using std::cin;

/** this is how we access the inner class */
LinkedList::Node::Node(int value) : value(value), next(NULL){}

LinkedList::Node::Node(int value, Node* next) : value(value), next(next){}

LinkedList::LinkedList() : phead(NULL){}

LinkedList::~LinkedList(){
    Node* t = phead;
    Node* toDelete;
    /// iterate front to back deleting
    while (t){
        toDelete = t; /// save our node to delete
        t = t->next; /// get the next node
        delete toDelete; /// delete the previous node
    }
    phead = NULL;
}

void LinkedList::push(int v){
    if (!phead){
        phead = new Node(v);
        return;
    }
    Node* cur;
    for(cur = phead; cur->next ; cur = cur->next); /// get to the end
    cur->next = new Node(v);
}

int LinkedList::pop(){
    int v = phead->value;
    Node* cur = phead;
    phead = phead->next;
    delete cur;
    return v;
}

int LinkedList::peek(){
    return phead->value;
}


int LinkedList::size() const{
    int count = 0;
    Node* cur = phead;
    while ( (cur = cur->next)){ /// get to the end
        count++;
    }
    return count;
}

void LinkedList::print() const{
    Node* t = phead;
    while(t != NULL){ /// or I could have done while(t) like in ~LinkedList
        cout << t->value << " ";
        t = t->next;
    }
    cout << endl;
}

