/** 
Name: Otis Brower
Eid: ODB234
*/

#include <iostream>
#include <ncurses.h>    // the ncurses library
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <unistd.h> // sleep
#include <string>
#include <vector>
#include <list>

#include "timehelper.h"
#include "gameobject.h"
#include "playership.h"
#include "enemyship.h"
#include "playerprojectile.h"

using namespace std;

static bool loseGame = false;
static bool winGame = false;

int main (int argc, char const *argv[])
{
    string row1;
    string row2;
    int bx; // Board x dimension
    int by; // Board y dimension
    cout << "Enter screen size: ";
    cin >> bx >> by;
    GameObject* game_board = new GameObject();
    game_board->setBoardSize(bx, by);
    PlayerShip* player = new PlayerShip((bx+2)/2, by + 2);
    // EnemyShip* enemy_ship = new EnemyShip(bx, by, 'W');
    
    EnemyShip::createEnemies(bx);

    srand (time(NULL)); /// seed to some random number based on time
    if ( initscr() == NULL ) { /// init the screen, defaults to stdscr
        fprintf(stderr, "Error initialising ncurses.\n");
        exit(EXIT_FAILURE);
    }

    noecho(); /// don't echo keypresses
    keypad(stdscr, TRUE); /// set the keypad to stdscr
    nodelay(stdscr, false);
    curs_set(0); /// set cursor to invisible (if allowed by the os)
    const int delay = 50; /// milliseconds
    timeout(delay); /// set how long between keypresses (more or less)

    /// some variables to give you some hints
    int ch = 0;
    bool quit = false;
    int points = 0;
    int elapsedTime = getElapsedTime();

    while (!quit /*&& !loseGame */&& !winGame){
        ch = getch();
        erase(); /// erase the screen (after getch())
        if ( ch != ERR) { /// user has a keypress
            /// this is to delay until the next tick
            elapsedTime = getElapsedTime();
            if (elapsedTime < delay){
                nsleep(delay-elapsedTime);}
        }

        /// this is how to print a string to the screen, 0, 0 is the  y, x location
        mvprintw(0, 0, "Points: %i.   'q' to quit.\n", points);
        /// some example code to show how to work with the keyboard
        switch(ch){
                case KEY_UP: break;
                case KEY_RIGHT: player->coord_x+=1; break;
                case KEY_DOWN: break;
                case KEY_LEFT: player->coord_x -=1; break;
                case ' ':
                    PlayerProjectile::addProjectile(player->coord_x, player->coord_y-1);
                    break;
                case 'q': 
                    quit = true;
                    break;
        }
        if(player->coord_x > bx)
            player->coord_x = bx;
        if(player->coord_x < 1){
            player->coord_x = 1;
            loseGame = true;
        }
        game_board->gameBoard();

        mvaddch(player->coord_y,player->coord_x, player->shape); // example print a char to the screen at the y, x location
        EnemyShip::displayEnemies();
        if(!EnemyShip::isCollision()){
            points++;
        }
        EnemyShip::moveShips();
        PlayerProjectile::moveProjectile();
        PlayerProjectile::disPlayerProjectile();

        refresh(); // refresh the screen after adding everything
        move(0,0); /// move cursor to 0,0 (looks prettier if os doesn't allow invisible cursors)
    }   
    
    if(loseGame){
        endwin();
        mvprintw(10, 10, "You Lose\n");
        nsleep(delay-elapsedTime);
    }
    endwin();   /// cleanup the window

    delete player;
    delete game_board;
    return 0;
}
