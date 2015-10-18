#ifndef __PLAYER_PROJECTILE_CS105__
#define __PLAYER_PROJECTILE_CS105__

#include <vector>
#include <ncurses.h>
#include "gameobject.h"

using std::vector;

class GameObject;
class PlayerProjectile: public GameObject{

public:

	PlayerProjectile(int x, int y){
		coord_x = x;
		coord_y = y;
		shape = '|';
	}

	static void moveProjectile();
	static void disPlayerProjectile();
	static void addProjectile(int, int);
};


#endif