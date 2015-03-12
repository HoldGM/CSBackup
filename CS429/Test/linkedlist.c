#include "linkedlist.h"

void ll_init(LinkedList *my_list)
{
	my_list -> head = NULL;
	my_list -> tail = NULL;
}

void ll_add_number(LinkedList *my_list, long number)
{
	Node* node = (Node*) malloc(sizeof(Node));
	node -> longValue = number;
}