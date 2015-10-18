#include "playerprojectile.h"
#include <vector>

using namespace std;

static vector<PlayerProjectile*> pp_list;

void PlayerProjectile::moveProjectile(){
	for(vector<PlayerProjectile*>::iterator iter = pp_list.begin(); iter != pp_list.end(); ++iter){
		PlayerProjectile* temp = *iter;
		temp->coord_y--;
	}
}

void PlayerProjectile::disPlayerProjectile(){
	if(pp_list.size() > 0 && pp_list[0]->coord_y < 2){
		pp_list.erase(pp_list.begin());
	}
	for(vector<PlayerProjectile*>::iterator iter = pp_list.begin(); iter != pp_list.end(); ++iter){
			PlayerProjectile* temp = *iter;
			mvaddch(temp->coord_y, temp->coord_x, temp->shape);
	}

	mvprintw(35, 5, "%i\n", pp_list.size());
}

void PlayerProjectile::addProjectile(int x, int y){
	PlayerProjectile* proj = new PlayerProjectile(x, y);

	if(pp_list.size() < 1){
		pp_list.push_back(proj);
	}
	else{
		delete proj;
	}
}	