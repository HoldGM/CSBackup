#ifndef __LINKED_LIST_CPP_9F4861BC
#define __LINKED_LIST_CPP_9F4861BC

/* your includes */
#include <iostream>
#include <sstream>
#include <string>


/* your class */

struct node{
	node* next;
	void* value;
};
class LinkedList{
private:
	int size = 0;
	node* head;
public:
	void push(void*);
	void* pop();
	void* peek();
	void print();
	int size();
};

#endif