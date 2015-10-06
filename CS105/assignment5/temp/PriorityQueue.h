#ifndef __PRIORITY_QUEUE_CPP_9F4861BC
#define __PRIORITY_QUEUE_CPP_9F4861BC
#include "LinkedList.h"

class PriorityQueue : public LinkedList{
public:
    /** put a value into the priority queue */
    virtual void push(int v);
};

#endif