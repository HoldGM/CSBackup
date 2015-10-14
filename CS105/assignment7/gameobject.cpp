#include <iostream>
#include "gameobject.h"


int GameObject::getX() const{
	return x;
}

void GameObject::gameBoard(){
	mvprintw(1, 0, "######################\n");
    mvprintw(2, 0, "#");
    mvprintw(3, 0, "#");
    mvprintw(4, 0, "#");
    mvprintw(5, 0, "#");
    mvprintw(6, 0, "#");
    mvprintw(7, 0, "#");
    mvprintw(8, 0, "#");
    mvprintw(9, 0, "#");
    mvprintw(10, 0, "#");
    mvprintw(11, 0, "#");
    mvprintw(12, 0, "#");
    mvprintw(13, 0, "#");
    mvprintw(14, 0, "#");
    mvprintw(15, 0, "#");
    mvprintw(16, 0, "#");
    mvprintw(17, 0, "#");
    mvprintw(18, 0, "#");
    mvprintw(19, 0, "#");
    mvprintw(20, 0, "#");
    mvprintw(2, 21, "#");
    mvprintw(3, 21, "#");
    mvprintw(4, 21, "#");
    mvprintw(5, 21, "#");
    mvprintw(6, 21, "#");
    mvprintw(7, 21, "#");
    mvprintw(8, 21, "#");
    mvprintw(9, 21, "#");
    mvprintw(10, 21, "#");
    mvprintw(11, 21, "#");
    mvprintw(12, 21, "#");
    mvprintw(13, 21, "#");
    mvprintw(14, 21, "#");
    mvprintw(15, 21, "#");
    mvprintw(16, 21, "#");
    mvprintw(17, 21, "#");
    mvprintw(18, 21, "#");
    mvprintw(19, 21, "#");
    mvprintw(20, 21, "#");
    mvprintw(21, 0, "######################\n");
}