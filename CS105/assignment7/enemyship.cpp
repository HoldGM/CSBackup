#include "enemyship.h"

using std::vector;

static vector<EnemyShip*> enemy_list;
static int direction = 1; 

int EnemyShip::isCollision(){
	EnemyShip* temp;
	int hits = 0;
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		temp = *iter;
		if(mvinch(temp->coord_x, temp->coord_y+1) == '|' && temp->alive == true){
			hits++;
			temp->alive = false;
			temp->shape = ' ';
		}
	}
	return hits;
}

void EnemyShip::displayEnemies(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		mvaddch((*iter)->coord_y, (*iter)->coord_x, (*iter)->shape);
	}
}

void EnemyShip::moveShips(){
	EnemyShip* temp = enemy_list.front();
	if(temp->checkLeft() && !temp->checkRight()){
		direction = 1;
		for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
			temp = *iter;
			temp->coord_x = temp->coord_x +  direction;
		}
		temp->moveDown();

	}
	else if(temp->checkRight() && !temp->checkLeft()){
		direction = -1;
		for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
			temp = *iter;
			temp->coord_x = temp->coord_x +  direction;
		}
		temp->moveDown();
	}
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		temp = *iter;
		temp->coord_x = temp->coord_x +  direction;
	}		

}

void EnemyShip::createEnemies(int bx){
	int startrow = bx / 4;
    for(size_t r = 0; r < 4; ++r){
        for(size_t i = 0; i < bx / 2; i += 2){
            char ch;
            if(i % 4 == 0){
                ch = 'W';
            }
            else{
                ch = 'u';
            }
            EnemyShip* ship = new EnemyShip(startrow + i + 1, r + 3, ch);
            enemy_list.push_back(ship);
        }
    }
}

bool EnemyShip::checkLeft(){
	if (enemy_list.front()->coord_x <= 2)
	{
		return true;	
	}	
	return false;
}

bool EnemyShip::checkRight(){
	mvprintw(25, 5, "%i", enemy_list[enemy_list.size()/4]->coord_x);
	if (enemy_list.back()->coord_x >= enemy_list.size())
	{
		return true;
	}
	return false;
}

void EnemyShip::moveDown(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		(*iter)->coord_y++;
	}
}