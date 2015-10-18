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

	static int isCollision();
	static void displayEnemies();
	static void moveShips();
	static void createEnemies(int);
	bool checkLeft();
	bool checkRight();
	void moveDown();
	~EnemyShip(){}
};

#endif
