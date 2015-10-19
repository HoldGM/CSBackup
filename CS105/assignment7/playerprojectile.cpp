#include "playerprojectile.h"
#include <vector>

using namespace std;

static vector<PlayerProjectile*> pp_list;

// Moves player projectiles up one space per game cycle
void PlayerProjectile::moveProjectile(){
	for(vector<PlayerProjectile*>::iterator iter = pp_list.begin(); iter != pp_list.end(); ++iter){
		PlayerProjectile* temp = *iter;
		temp->coord_y--;
	}
}

// shows player projectiles on screen
void PlayerProjectile::disPlayerProjectile(){
	// checks for projectile going off game screen, deletes projectile if is leave
	// game area
	if(pp_list.size() > 0 && pp_list[0]->coord_y < 2){
		delete pp_list[0];
		pp_list.erase(pp_list.begin());
	}
	for(vector<PlayerProjectile*>::iterator iter = pp_list.begin(); iter != pp_list.end(); ++iter){
			PlayerProjectile* temp = *iter;
			mvaddch(temp->coord_y, temp->coord_x, temp->shape);
	}
}

// create new player projectile
void PlayerProjectile::addProjectile(int x, int y){
	PlayerProjectile* proj = new PlayerProjectile(x, y);

	if(pp_list.size() < 2){
		pp_list.push_back(proj);
	}
	else{
		delete proj;
	}
}

int PlayerProjectile::isCollision(){
	if(pp_list.size() > 0){
		int hits = EnemyShip::isCollision(pp_list);
		if(hits > 0){
			pp_list.pop_back();
		}
		return hits;
	}
	return 0;
}