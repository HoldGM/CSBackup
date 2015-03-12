#ifndef LINKEDLIST_H
#define LINKEDLIST_H

typedef struct NodeElement
{
	union {
		float f_data; // 32 bits
		long data; // 64 bits
	} // UNION = 64 bits
	
	struct NodeElement *next; // 64 bits = 160 bits / (union) 128 bits
} Node;


typedef struct LLinkedList
{
	Node *head;
	Node *tail;
} LinkedList;

//declaration
void ll_init(LinkedList *my_list);
void ll_destroy(LinkedList *my_list);



#endif