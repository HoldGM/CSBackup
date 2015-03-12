/** 
Name: Otis Brower
Eid: ODB234

Q1: Why are the arrays passed to both print life functions const? This allows the array to be read but not changed in the function when it is printed
Q2: Why are the arrays passed to both play life functions not const? By not making it a const, the array can be changed to iterate to the next generation.
Q3: If we did change the arrays passed to play life functions to make them const, 
    what else would have to happen to make play life work? Duplicates of the game array would have to be made for each iteration.
*/

#include <iostream>
#include <string>
#include <unistd.h>

using namespace std;

/// global constant for fixed rows and cols of the 2D array
const int NUM_ROWS = 10;
const int NUM_COLS = 10;

/** function declarations
    you will need to write the definitions of these functions below.
    DO NOT MODIFY the declarations.
    You may create your own functions, but you must use these.
*/

/** 2d array functions, notice that for 2d arrays the second size 
    needs to be fixed, or more precisely it needs to be a const.
    if you typed a literal, like 5, it would be a literal constant,
    which also works.
*/


//Creates copy of current play board. Used to evaluate next generation.
void boardCopy(bool startBoard[][NUM_COLS+2], bool boardCopy[][NUM_COLS+2]){

    for(size_t j = 0; j < NUM_COLS + 2; ++j){
        for(size_t i = 0; i < NUM_ROWS + 2; ++i){
            boardCopy[i][j] = startBoard[i][j];
        }
    }
    //printLife2DArray(boardCopy);
}

void printLife2DArray(const bool currentBoard[][NUM_COLS+2]){

    for(size_t j = 1; j < NUM_ROWS+1; ++j){
        for(size_t i = 1; i < NUM_COLS+1; ++i){
            if(currentBoard[i][j] == 0)
                cout << ".";
            else
                cout << "*";
        }
        cout << endl;
    }

    cout << endl << endl << endl;
}
void playLife2DArray(bool currentBoard[][NUM_COLS+2]){
    bool copy[NUM_ROWS+2][NUM_COLS+2];
    boardCopy(currentBoard, copy);
    for(int j = 1; j < NUM_ROWS+1; ++j)
    {
        for(int i = 1; i < NUM_COLS+1; ++i)            
        {   
            //Evaluates surrounding cells of current board for next generation.
            int liveCells = 0;
            liveCells = currentBoard[i-1][j] + currentBoard[i-1][j-1] +
                currentBoard[i][j-1] + currentBoard[i+1][j-1] + currentBoard[i+1][j] +
                currentBoard[i+1][j+1] + currentBoard[i][j+1] + currentBoard[i-1][j+1];

            //Determines if cell will live, die, or grow based on current board.
            if(liveCells == 2) //cell unchanged.
                copy[i][j] = currentBoard[i][j];                
            if(liveCells < 2 || liveCells > 3) //cell dies.
                copy[i][j] = 0;
            if(liveCells == 3) //new cell.
                copy[i][j] = 1;
        }
    }

    boardCopy(copy, currentBoard);
}





int main() {
    /// read in the number of iterations to run
    int iterations;
    int i = 1;
    cin >> iterations;
    int j = 1; //starting row of game board array.

    /** make a 2d bool array with the number of rows and cols

    Some input examples and explanation of game of life
    Look at http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Examples_of_patterns
    */

    bool initialBoard[NUM_COLS+2][NUM_ROWS+2] = {false};
    string line; //Line string to read in initial game board.

    /** print out what game we are playing */
    cout << "Game Of Life rows=" << NUM_ROWS << " cols=" << NUM_COLS << 
          " iterations=" << iterations << endl << endl;

    /** 
        start your code
    */

    //Generate initial game board from input files.
    getline(cin, line);
    for(;getline(cin, line);){

        for(size_t i = 0; i < line.length(); ++i)
        {
            initialBoard[i+1][j] = ((int)line.at(i) == 46) ? 0 : 1;
        }
        ++j;
    }

    //Iterates through number of generations. Generation 0 is initial 
    //game borad.
    for(size_t i = 0; i <= iterations; ++i){

        cout << "Generation: " << i << endl;
        printLife2DArray(initialBoard);
        playLife2DArray(initialBoard);
    }

    /** 
        end code
    */


    return 0; /// return a ok
}

