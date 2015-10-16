#include "enemyship.h"

using std::vector;

void EnemyShip::createEnemies(vector<EnemyShip*> list){
	int startRow = boardX / 4;

	for(size_t i = 0; i < boardX / 2; ++i){
		EnemyShip* ship = new EnemyShip(4, startRow + i, 'W');
		list.push_back(ship);
	}
}

bool EnemyShip::isCollision(vector<GameObject*> obj){
	for(vector<GameObject*>::iterator iter = obj.begin(); iter != obj.end(); ++iter){
		if(alive && (*iter)->shape == '|' && (*iter)->coord_x == coord_x && 
			(*iter)->coord_y == coord_y + 1){
			delete *iter;
		}
	}
	return false;
}

void EnemyShip::displayEnemies(vector<EnemyShip*> list){
	for(vector<EnemyShip*>::iterator iter = list.begin(); iter != list.end(); ++iter){
		mvaddch((*iter)->coord_y, (*iter)->coord_x, (*iter)->shape);
	}
}
