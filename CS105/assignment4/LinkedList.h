#ifndef __LINKED_LIST_CPP_9F4861BC
#define __LINKED_LIST_CPP_9F4861BC

/* your includes */
#include <iostream>
#include <sstream>
#include <string>

using namespace std;
/* your class */

template <typename T>
class LinkedList
{
	struct Node
	{
		T data;
		Node *next;
		Node(T d, Node *n = 0):data(d), next(n) {}
	};
	Node *head;

public:
	int listLen;
	
	LinkedList(Node *h = 0):head(h){}
	~LinkedList();
	void push(T d);
	T pop();
	void print();
	void peek();
	int size();
};

template <typename T>
LinkedList<T>::~LinkedList()
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
void LinkedList<T>::push(T d) 
{
	Node *new_node = new Node(d,0);
	if(!head) {
		head = new_node;
		listLen = 1;
		return;
	}
	Node *cur = head;
	while(cur) {
		if(!cur->next) {
			cur->next = new_node;
			return;
		}
		cur = cur->next;
	}
	listLen ++;
}


template <typename T>
T LinkedList<T>::pop()
{
	if(!head) return 0;
	Node *tmp = head;
	T data (head->data);
	if(head->next) {
		head = head->next;
		delete tmp;
		return data;
	}
	delete tmp;
	head = NULL;
	return data;
}


template <typename T>
void LinkedList<T>::print()
{
	if(!head) 
		return;
	Node *cur  = head;
	while(cur) {
		cout << cur->data << " ";
		cur = cur->next;
	}
	cout << endl;
}

template <typename T>
void LinkedList<T>::peek(){
	if(!head)
		return;
	cout << head->data << endl;
}

template <typename T>
int LinkedList<T>::size(){
	return listLen;
}


#endif

