#include "playership.h"
#include <ncurses.h>

using std::vector;

void PlayerShip::setPlayerShip(int x, int y){
	coord_x = x;
	coord_y = y;
}

bool PlayerShip::isCollision(vector<GameObject*> obj){
	for(vector<GameObject*>::iterator iter = obj.begin(); iter != obj.end(); ++iter){
		if(coord_x == (*iter)->coord_x && coord_y -1 == (*iter)->coord_y){
			alive = false;
			return true;
		}
	}
	return false;
}

PlayerShip::~PlayerShip(){}