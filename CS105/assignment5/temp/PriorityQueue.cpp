#include <iostream>
#include "PriorityQueue.h" /// include the header file for the priority queue

void PriorityQueue::push(int v){
    Node* n = new Node(v); /// create a new node with the value we need
    Node* t = phead; /// a temp node*
    /// if the head is null, or we have a lesser value, 
    /// insert at the beginning
    if (phead == NULL || v < phead->value){
        phead = n;
        phead->next = t;
        return; /// we are done, leave
    }
    /// keep the previous node
    Node* prev = phead;
    while ((t = t->next) != NULL){
        /// if our value is less than the one ahead, insert here
        if (v < t->value){
            prev->next = n; /// set our previous node to the new one
            n->next = t;    /// set our new nodes pointer to the one ahead
            break;
        }
        prev = t;
    }
    /// we are at the end, add here
    prev->next = n;
}

