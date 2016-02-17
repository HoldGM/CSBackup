/*  
 * Otis Brower
 * EID: ODB234
 */
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
public:
	struct Node
	{
		T data;
		Node *next;
		Node(T d, Node *n = 0):data(d), next(n) {}
		bool operator < (const Node& node) const{
			if(this->data < node->data){
				return true;
			}
			return false;
		}
		bool operator <= (const Node& node) const{
			if(this->data <= node->data){
				return true;
			}
			return false;
		}
		bool operator > (const Node& node) const{
			if(this->data > node->data){
				return true;
			}
			return false;
		}
		bool operator >= (const Node& node) const{
			if(this->data >= node->data){
				return true;
			}
			return false;
		}
	};
	Node *head;

	int listLen;
	
	LinkedList(Node *h = 0):head(h){}
	virtual ~LinkedList();
	virtual void push(T d);
	virtual T pop();
	virtual void print();
	virtual void peek();
	virtual int size();
	/* Don't think overloading worked. Seg-faults on operators */
	LinkedList& operator = (const LinkedList& list);
	bool operator == (const LinkedList<T>&);
	bool operator != (const LinkedList<T>&) const;
	LinkedList operator + (const T ) const;
	LinkedList operator + (const LinkedList<T>*) const;
	LinkedList operator - (const T v) const;
	LinkedList operator - (const LinkedList<T>*) const;
	T operator [] (const int index);

	/* ostream and istream overloading seem to work. */
	friend ostream& operator << (ostream& out, const LinkedList* list){
		Node* cur = list->head;
		while(cur->next){
			cout << cur->data << " ";
			cur = cur->next;
		}
		cout << endl;
	}
	friend istream& operator >> (istream& in, LinkedList* list){
		T temp;
		while(in){
			in >> temp;
			list->push(temp);
		}
		return in;
	}
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
	Node *new_node = new Node(d,NULL);
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

template <typename T>
LinkedList<T>& LinkedList<T>::operator = (const LinkedList& list){
	head = list->head;
	return *this;
}

template <typename T>
bool LinkedList<T>::operator == (const LinkedList& list){
	Node* cur;
	Node* comp = list;
	for(cur = head; cur->head; cur = cur->next){
		if(cur != comp){
			return false;
		}
		comp = comp->next;
	}
	return true;
}

template <typename T>
bool LinkedList<T>::operator != (const LinkedList& list) const{
	Node* cur = head;
	Node* comp;
	while(cur != NULL){
		if(cur->data != comp->data){
			return true;
		}
		cur = cur->next;
		comp = comp->next;
	}
	return false;
}

template <typename T>
LinkedList<T> LinkedList<T>::operator + (const T v) const{
	LinkedList::push(v);
	return this;
}

template <typename T>
LinkedList<T> LinkedList<T>::operator + (const LinkedList* list) const{
	Node* cur;
	for(cur = head; (cur = cur->next); cur = cur->next);
	cur->next = list->head;
	return *this;
}

template <typename T>
LinkedList<T> LinkedList<T>::operator - (const T v) const{
	while(head->data == v){
		LinkedList::pop();
	}
	Node* cur = head;
	while(cur->next){
		if(cur->next->data == v){
			cur->next = cur->next->next;
		}
	}
	return *this;
}

template <typename T>
LinkedList<T> LinkedList<T>::operator - (const LinkedList* list) const{
	Node* cur;
		for(cur = list->head; cur; cur = cur->next){
		this = this - cur->data;
	}
	return *this;
}

template <typename T>
T LinkedList<T>::operator [] (const int index){
	Node* cur = head;
	for(int i = 0; i < index; i++){
		cur - cur->next;
	}
		return cur->data;
}

#endif

