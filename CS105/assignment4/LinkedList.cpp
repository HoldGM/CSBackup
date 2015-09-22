#include "LinkedList.h" /// include the header file for the linked list
#include <iostream>
#include <string>
#include <sstream>

using namespace std;

/* your class implementation*/
class LinkedList{
private:
	int listSize;
	static node* head;
public:
	node thisNode;

	LinkedList(int* value){
		listSize = 0;
		thisNode.value = value;
	}
	void push(int* value){
		thisNode.value = value;
		thisNode.next = NULL;
		if(this->head == NULL){
			*this->head = thisNode;
		}

	}
	node* pop(){
		this->head = this->thisNode.next;

		return this->head;
	}
	node* peek(){
		return this->head;
	}
	void print(){
		while(this->thisNode.next != NULL){
			cout << *(this->thisNode.value) << " ";
		}
		cout << endl;
	}
	int size(){
		return this->listSize;
	}
};