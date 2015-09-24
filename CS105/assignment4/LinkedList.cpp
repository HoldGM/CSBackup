#include "LinkedList.h" /// include the header file for the linked list
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

/* your class implementation*/
// destructor
template <typename T>
List<T>::~List()
{
	Node *tmp;
	while(head) {
		tmp = head;
		head = head->next;
		delete tmp;
	}
}

// insert d before loc
template <typename T>
void List<T>::insert(Node *loc, T d) 
{ 
	Node *new_node = new Node(d,0);
	if(!head) {
		head = new_node;
		return;
	}
	if(loc == head) {
		push_front(d);
		return;
	}
	Node *cur = head;
	while(cur->next) {
		if(cur->next == loc) {
			new_node->next = cur->next;
			cur->next = new_node;
			return ;
		}
		cur = cur->next;
	}
}

template <typename T>
void List<T>::push(T d) 
{
	Node *new_node = new Node(d,0);
	if(!head) {
		head = new_node;
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
}


template <typename T>
T List<T>::pop()
{
	if(!head) return NULL;
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
void List<T>::print()
{
	if(!head) return;
	Node *cur  = head;
	while(cur) {
		cout << cur->data << " " << endl;
		cur = cur->next;
	}
	cout << endl;
}