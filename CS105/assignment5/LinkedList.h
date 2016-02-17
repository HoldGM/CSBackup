#ifndef __LINKEDLIST_H_CS105__
#define	__LINKEDLIST_H_CS105__

#include <limits>
#include <iostream>
#include <string>

using namespace std;

// template <typename T>
class LinkedList{
protected:
	struct Node{

		Node* next;
		int value;
		Node(int v) : value(v), next(NULL){}
		Node(int v, Node* next) : value(v), next(next){}
		bool operator < (const Node& node) const{
			if(this->value < node->value){
				return true;
			}
			return false;
		}
		bool operator <= (const Node& node) const{
			if(this->value <= node->value){
				return true;
			}
			return false;
		}
		bool operator > (const Node& node) const{
			if(this->value > node->value){
				return true;
			}
			return false;
		}
		bool operator >= (const Node& node) const{
			if(this->value >= node->value){
				return true;
			}
			return false;
		}
	};

public:
	Node* phead;

	LinkedList(){
		phead = NULL;
		cout << "Called default constructor for linked list" << endl;
	}	
	
	~LinkedList(){
		Node* temp = phead;
		Node* deleteNode;
		while(temp){
			deleteNode = temp;
			temp = temp->next;
			delete deleteNode;
		}
		phead = NULL;
	}

	virtual void push(int v){
		if(!phead){
			Node phead = Node(v);
			return;
		}
		Node* cur;
		for(cur = phead; cur->next; cur = cur->next);
		cur->next = new Node(v);
	}
	
	virtual int pop(){
		T v = phead->value;
		Node* cur = phead;
		phead = phead->next;
		delete cur;
		return v;
	}
	
	virtual int peek(){
		return phead->value;
	}
	
	virtual int size() const{
		int count = 0;
		Node* cur = phead;
		while((cur = cur->next)){
			count++;
		}
		return count;
	}
	
	virtual void print() const{
		Node* temp = phead;
		while(temp != NULL){
			cout << temp->value << " ";
			temp = temp->next;
		}
		cout << endl;
	}
	
	LinkedList& operator = (const LinkedList& list){
		phead = list->phead;
		return *this;
	}
	
	bool operator == (const LinkedList& list){
		Node* cur;
		Node* comp = list;
		for(cur = phead; cur->phead; cur = cur->next){
			if(cur != comp){
				return false;
			}
			comp = comp->next;
		}
		return true;
	}

	bool operator != (const LinkedList& list) const{
		Node* cur = phead;
		Node* comp;
		while(cur != NULL){
			if(cur->value != comp->value){
				return true;
			}
			cur = cur->next;
			comp = comp->next;
		}
		return false;
	}
	
	LinkedList operator + (const T v) const{
		this->push(v);
		return this;
	}

	LinkedList operator + (const LinkedList& list) const{
		Node* cur;
		for(cur = phead; (cur = cur->next); cur = cur->next);
		cur->next = list->phead;
		return *this;
	}

	LinkedList operator - (const T v) const{
		while(phead->value == v){
			LinkedList::pop();
		}
		Node* cur = phead;
		while(cur->next){
			if(cur->next->value == v){
				cur->next = cur->next->next;
			}
		}
		return *this;
	}

	LinkedList operator - (const LinkedList& list) const{
		Node* cur;

		for(cur = list->phead; cur; cur = cur->next){
			this = this - cur->value;
		}
		return *this;
	}

	int operator [] (const int index){
		Node* cur = phead;
		for(int i = 0; i < index; i++){
			cur - cur->next;
		}
		return cur->value;
	}

	friend ostream& operator << (ostream& out, const LinkedList& list){
		Node* cur = list.phead;
		while(cur){
			cout << cur->value << " ";
		}
		cout << endl;
	}

	friend istream& operator >> (istream& in, LinkedList& list){
		int temp;
		while(in){
			in >> temp;
			list.LinkedList::push(temp);
		}
		return in;
	}
};


#endif