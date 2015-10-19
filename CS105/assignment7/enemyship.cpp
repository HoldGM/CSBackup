#include "enemyship.h"

using std::vector;

static vector<EnemyShip*> enemy_list;
static int direction = 1; 
static int remainingEnemies = 0;
static int width = 0;


// checks for enemy ships collisions with player projectiles
int EnemyShip::isCollision(vector<PlayerProjectile*> proj){
	EnemyShip* temp;
	int hits = 0;
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		temp = *iter;
		for(vector<PlayerProjectile*>::iterator it = proj.begin(); it != proj.end(); ++it){
			if((*it)->coord_x == temp->coord_x && (*it)->coord_y == temp->coord_y + 1 
					&& temp->alive == true && (*it)->alive == true){
				hits++;
				temp->alive = false;
				temp->shape = ' ';
				(*it)->alive = false;
				remainingEnemies--;
			}
		}
	}
	enemy_list.front()->removeShips();
	return hits;
}

// create enemy objects on screen
void EnemyShip::displayEnemies(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		mvaddch((*iter)->coord_y, (*iter)->coord_x, (*iter)->shape);
	}
}


//Moves alien ships base on movement direction (1 = right, -1 = left)
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


// initialize enemy ships at game start, dynamic based on screen size
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
            remainingEnemies ++;
        }
    }
    width = enemy_list.size();
}

//Checks for enemies to hit left side of screen
bool EnemyShip::checkLeft(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter)
	{
		if((*iter)->coord_x == 1){
			return true;		
		}
	}	
	return false;
}

//Checks for enemy ships to hit right side of screen
bool EnemyShip::checkRight(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter)
	{	
		if((*iter)->coord_x == width){
			return true;
		}
	}
	return false;
}

// moves enemies does if they hit left or right side of the screen
void EnemyShip::moveDown(){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		(*iter)->coord_y++;
	}
}

//Check for enemy ships reaching the bottom of screen where player is
bool EnemyShip::reachPlayer(int boardY){
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		if((*iter)->coord_y == boardY + 2 && (*iter)->alive){
			for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
				delete iter[0];
			}
			enemy_list.erase(enemy_list.begin(), enemy_list.end());
			return true;
		}
	}
	return false;
}

// Checks the remaining number of enemies, game should end if enemies = 0
int EnemyShip::enemiesRemain(){
	return remainingEnemies;
}

// removes enemy ships from list of enemy ships
void EnemyShip::removeShips(){
	int index = 0;
	for(vector<EnemyShip*>::iterator iter = enemy_list.begin(); iter != enemy_list.end(); ++iter){
		if(!(*iter)->alive){
			enemy_list.erase(enemy_list.begin() + index);
			return;
		}
		index++;
	}
}