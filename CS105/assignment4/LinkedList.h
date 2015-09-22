#ifndef __LINKED_LIST_CPP_9F4861BC
#define __LINKED_LIST_CPP_9F4861BC

/* your includes */
#include <iostream>
#include <sstream>
#include <string>


/* your class */

struct node{
	node* next;
	int* value;
};

	void push(int*);
	void* pop();
	void* peek();
	void print();
	int size();

#endif