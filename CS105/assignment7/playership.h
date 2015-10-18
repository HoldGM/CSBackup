#ifndef __PLAYER_SHIP_CS105__
#define __PLAYER_SHIP_CS105__

#include <ncurses.h>
#include <vector>
#include "gameobject.h"

using std::vector;

class GameObject;
class PlayerShip : public GameObject{
public:

	PlayerShip(int x, int y){
		coord_x = x;
		coord_y = y;
		shape = '^';
		alive = true;
	}
	virtual void setPlayerShip(int, int);
	virtual int isCollision(vector<GameObject*>);
	virtual ~PlayerShip();
};

#endif