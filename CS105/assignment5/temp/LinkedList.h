#ifndef __LINKEDLIST_CPP_39TAA9VARST
#define __LINKEDLIST_CPP_39TAA9VARST

#include <iostream>
using std::ostream;
using std::istream;

class LinkedList{
protected:
    /** I am using an "inner class" for this, it would also work
    above the class definition of PQ */
    struct Node{
        /** a constructor for initializing values*/
        Node(int value);
        Node(int value, Node* next);

        struct Node* next; /// pointer to next
        int value; /// our value
    };
    Node* phead; /// our pointer to the head of the linked list

public:
    LinkedList();
    virtual ~LinkedList();
    virtual void push(int);
    virtual int pop();
    virtual int peek();
    virtual int size() const;
    virtual void print() const;
};

#endif