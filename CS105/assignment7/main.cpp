/** 
Name: Otis Brower
Eid: ODB234
*/

#include <ncurses.h>    // the ncurses library
#include <stdlib.h>     /* srand, rand */
#include <time.h>       /* time */
#include <unistd.h> // sleep

#include "timehelper.h"

int main (int argc, char const *argv[])
{
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
    int x = 3;
    int y = 3;
    int elapsedTime = getElapsedTime();

    while (!quit){
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
                case KEY_UP: y--; break;
                case KEY_RIGHT: x++; break;
                case KEY_DOWN: y++; break;
                case KEY_LEFT: x--; break;
                case ' ':
                    mvprintw(y-1, x, "|");
                    break;
                case 'q': 
                    quit = true;
                    break;
        }

        mvaddch(y,x,'^'); // example print a char to the screen at the y, x location

        refresh(); // refresh the screen after adding everything
        move(0,0); /// move cursor to 0,0 (looks prettier if os doesn't allow invisible cursors)
    }   
    
    endwin();   /// cleanup the window

    return 0;
}
