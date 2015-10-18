#include <iostream>
#include "gameobject.h"
#include <string>


using std::cout;
using std::vector;
using std::string;

void GameObject::setBoardSize(int x, int y){
	boardX = x;
	boardY = y;
}

void GameObject::gameBoard(){
	for(size_t i = 0; i < (boardX + 2); ++i){
		mvprintw(1, i, "#");
		mvprintw(boardY + 3, i, "#");
	}
	for(size_t i = 2; i < (boardY + 3); ++i){
		mvprintw(i, 0, "#");
		mvprintw(i, boardX + 1, "#");
	}
}

char GameObject::getShape(){
	return shape;
}

int GameObject::getY() const{
	return coord_y;
}

int GameObject::getX() const{
	return coord_x;
}

void GameObject::setY(int y){
	coord_y = y;
}

void GameObject::setX(int x){
	coord_x = x;
}

bool GameObject::isCollision(vector<GameObject*> obj){
	return false;
}

void GameObject::setDirection(int d){
	direction = d;
}