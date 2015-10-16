#ifndef __ENEMY_SHIP_CS105__
#define __ENEMY_SHIP_CS105__

#include "gameobject.h"
#include <ncurses.h>
#include <vector>

using std::vector;

class GameObject;
class EnemyShip: public GameObject{
public:
	EnemyShip(int x, int y, char sh){
		coord_x = x;
		coord_y = y;
		shape = sh;
		alive = true;
	}

	virtual bool isCollision(vector<GameObject*>);
	static void createEnemies(vector<EnemyShip*>);
	static void displayEnemies(vector<EnemyShip*>);
	~EnemyShip(){}
};

#endif
