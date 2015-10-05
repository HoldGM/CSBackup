#ifndef __PRIORITY_QUEUE_CS105__
#define __PRIORITY_QUEUE_CS105__

#include "LinkedList.h"

template <typename T>
class PriorityQueue : public LinkedList<T>{
public:
	Node* head;

	void push(T& v){
		Node* new Node(v);
		Node* temp = head;

		if(head == NULL || v < head->value){
			head = temp;
			head->next = temp;
			return;
		}

		Node* prev = head;
		while((temp = temp->next) != NULL){
			if(v < temp -> value){
				prev->next = next;
				temp->next = temp;
				break;
			}
			prev = temp;
		}
		prev->next = temp;
	}
};
#endif