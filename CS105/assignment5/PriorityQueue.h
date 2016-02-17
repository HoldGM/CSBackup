#ifndef __PRIORITY_QUEUE_CS105__
#define __PRIORITY_QUEUE_CS105__

#include "LinkedList.h"

// template <class T>
class PriorityQueue : public LinkedList{
protected:
	struct Node{

		struct Node* next;
	 	int value;

		Node(int value) : value(value), next(NULL){}
		Node(int value, Node* next) : value(value), next(next){}
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
	Node* phead;
public:

	void push(int v){
		Node* newNode = Node(v);
		Node* temp = phead;

		if(phead == NULL || v < phead->value){
			phead = temp;
			phead->next = temp;
			return;
		}

		Node* prev = phead;
		while((temp = temp->next) != NULL){
			if(v < temp -> value){
				prev->next = prev;
				temp->next = temp;
				break;
			}
			prev = temp;
		}
		prev->next = temp;
	}
};
#endif