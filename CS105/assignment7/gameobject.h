#ifndef __GAME_OBJECT_CS105__
#define __GAME_OBJECT_CS105__

#include <ncurses.h>


class GameObject{
	int x;
	int y;
	bool alive;
public:
	GameObject(){}
	static void addObject(GameObject* obj);
	static void deleteObject(GameObject* obj);
	virtual void timeStep();
	virtual char getShape();
	virtual void setX(const int x);
	virtual int getX() const;
	virtual void setY(const int y);
	virtual int getY() const;
	virtual bool isCollision(const GameObject& obj);
	static void gameBoard();
	~GameObject(){}
};

#endif