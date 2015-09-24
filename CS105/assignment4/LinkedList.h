#ifndef __LINKED_LIST_CPP_9F4861BC
#define __LINKED_LIST_CPP_9F4861BC

/* your includes */
#include <iostream>
#include <sstream>
#include <string>

using namespace std;
/* your class */

struct Node{
	Node* next;
	int* value;
};

class LinkedList{

public:
	int listSize;
	Node* head;
	Node* tail;

	void initList(struct Node* newNode, int*n){
		listSize = 1;
		(*newNode).value = n;
		(*newNode).next = NULL;
		tail = newNode;
		head = newNode;
	}
	void push(struct Node* newNode, int* value){
		newNode->value = value;
		newNode->next = NULL;
		tail->next = newNode;
		listSize += 1;
	}
	Node* pop(){
		head = head->next;

		return this->head;
	}
	int* peek(){
		return head->value;
	}
	void print(){
		Node* tempNode = head;

		while(tempNode){
			cout << tempNode->value << " ";
			tempNode = tempNode->next;
		}
		cout << endl;
	}
	int size(){
		return this->listSize;
	}
};
#endif

