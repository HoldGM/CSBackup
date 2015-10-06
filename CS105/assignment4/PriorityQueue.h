/*
 *  Otis Brower
 *  EID: ODB234
 */

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
class PriorityQueue:public LinkedList<T>::LinkedList{
	struct Node
	{
		T data;
		Node *next;
		Node(T d, Node *n = 0):data(d), next(n) {}
	};
	// Node *head;

public:
	int listLen;
	Node *head;
	PriorityQueue(Node *h = NULL):head(h){}
	virtual void push(T d);
};

template <typename T>
void PriorityQueue<T>::push(T d) 
{
	Node *new_node = new Node(d,NULL);
	if(!head) {
		head = new_node;
		listLen = 1;
		return;
	}
	Node* cur = head;
	Node* next = head->next;
	while(cur->next) {
		if(new_node->data >= cur->data || new_node->data <= next->data){
			new_node->next = next;
			cur->next = new_node;
			++listLen;
			return;
		}
		cur = cur->next;
		next = cur->next;
	}
	cur->next= new_node;

	++listLen;
	return;
}

#endif