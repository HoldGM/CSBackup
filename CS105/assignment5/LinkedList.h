#ifndef __LINKEDLIST_H_CS105__
#define	__LINKEDLIST_H_CS105__

#include <limits>
#include <iostream>
#include <string>

using namespace std;

template<typename T>
class LinkedList{
protected:
		struct Node{

		struct Node* next;
		T value;

		Node(T& value);
		Node(T& value, Node* next);
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
	Node* head;

public:

	Node& Node::Node(T value) : value(value), next(NULL){}
	
	LinkedList& Node::Node(T value, Node*) : value(value), next(next){}
	
	LinkedList(): head(NULL){}	
	
	~LinkedList(){
		Node* temp = head;
		Node* deleteNode;
		while(temp){
			deleteNode = temp;
			temp = temp->next;
			delete deleteNode;
		}
		head = NULL;
	}

	void push(T v){
		if(!head){
			struct Node head = new Node(v);
			return;
		}
		Node* cur;
		for(cur = head; cur->next; cur = cur->next);
		cur->next = new Node(v);
	}
	
	T& pop(){
		T v = head->value;
		Node* cur = head;
		head = head->next;
		delete cur;
		return v;
	}
	
	T peek(){
		return head->value;
	}
	
	int size() const{
		int count = 0;
		Node* cur = head;
		while((cur = cur->next)){
			count++;
		}
		return count;
	}
	
	T print() const{
		Node* temp = head;
		while(temp != NULL){
			cout << temp->value << " ";
			temp = temp->next;
		}
		cout << endl;
	}
	
	LinkedList& operator = (const LinkedList& list){
		this->head = list->head;
		return *this;
	}
	
	bool operator == (const LinkedList& list){
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

	bool operator != (const LinkedList& list) const{
		Node* cur = head;
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
		LinkedList::push(v);
		return this;
	}

	LinkedList operator + (const LinkedList& list) const{
		Node* cur;
		for(cur = head; (cur = cur->next); cur = cur->next);
		cur->next = list->head;
		return *this;
	}

	LinkedList operator - (const T v) const{
		while(head->value == v){
			LinkedList::pop();
		}
		Node* cur = head;
		while(cur->next){
			if(cur->next->value == v){
				cur->next = cur->next->next;
			}
		}
		return *this;
	}

	LinkedList operator - (const LinkedList& list) const{
		Node* cur;

		for(cur = list->head; cur; cur = cur->next){
			*this = *this - cur->value;
		}
		return *this;
	}

	T& operator [] (const int index){
		Node* cur = head;
		for(int i = 0; i < index; i++){
			cur - cur->next;
		}
		return cur->value;
	}

	friend ostream& operator << (ostream& out, const LinkedList& list){
		Node* cur = list->head;
		while(cur){
			std::cout << cur->value << " ";
		}
		std::cout << endl;
	}

	friend istream& operator >> (istream& in, const LinkedList& list){
		LinkedList* newList = new LinkedList;
		while(cin){
			newList = push(cin);
		}
		list = newList;
		delete newList;
	}
};


#endif