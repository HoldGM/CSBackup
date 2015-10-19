#ifndef __ENEMY_SHIP_CS105__
#define __ENEMY_SHIP_CS105__

#include "gameobject.h"
#include <ncurses.h>
#include <vector>
#include <unistd.h>
#include <time.h>
#include "playerprojectile.h"


using std::vector;

class PlayerProjectile;
class GameObject;
class EnemyShip: public GameObject{
public:

	EnemyShip(int x, int y, char sh){
		coord_x = x;
		coord_y = y;
		shape = sh;
		alive = true;
	}

	static int isCollision(vector<PlayerProjectile*>);
	static void displayEnemies();
	static void moveShips();
	static void createEnemies(int);
	bool checkLeft();
	bool checkRight();
	void moveDown();
	static bool reachPlayer(int);
	static int enemiesRemain();
	void removeShips();
	~EnemyShip(){}
};

#endif
