#ifndef __LINKED_LIST_CPP_9F4861BC
#define __LINKED_LIST_CPP_9F4861BC

/* your includes */
#include <iostream>
#include <sstream>
#include <string>

using namespace std;
/* your class */

template <typename T>
class List
{
	struct Node
	{
		T data;
		Node *next;
		Node(T d, Node *n = 0):data(d), next(n) {}
	};
	Node *head;

public:
	List(Node *h = 0):head(h){}
	~List();
	void insert(Node *loc, T d);
	void push(T d);
	T pop();
	void print();
};

#endif

