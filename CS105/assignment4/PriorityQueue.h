#ifndef __PRIORITY_QUEUE_CPP_9F4861BC
#define __PRIORITY_QUEUE_CPP_9F4861BC

#include "LinkedList.h" /// need to include the parent class
/* your includes */
#include <iostream>
#include <string>
#include <sstream>

using namespace std;
/* your class */

template <typename T>
class PriorityQueue:public LinkedList<T>{
	struct Node
	{
		T data;
		Node *next;
		Node(T d, Node *n = 0):data(d), next(n) {}
	};
	Node *head;

public:
	int listLen;
	PriorityQueue(Node *h = 0):head(h){}
	~PriorityQueue();
	void push(T d);
};

template <typename T>
PriorityQueue<T>::~PriorityQueue()
{
	Node *killtemp;
	while(head) {
		killtemp = head;
		head = head->next;
		--listLen;
		delete killtemp;
	}
}

template <typename T>
void PriorityQueue<T>::push(T d) 
{
	Node *new_node = new Node(d,0);
	if(!head) {
		head = new_node;
		listLen = 1;
		return;
	}
	Node *cur = head;
	Node *next = cur->next;
	while(next) {
		if(cur->data <= new_node->data && next->data >= new_node->data){
			new_node->next = next;
			cur->next = new_node;
			return;
		}
		cur = cur->next;
		next = cur->next;
	}
	++listLen;
}


#endif