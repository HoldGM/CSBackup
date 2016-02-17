/** 
Name: Otis Brower
Eid: ODB234

Q1: Why are the arrays passed to both print life functions const? So that they cannot not be change within the function.
Q2: Why are the arrays passed to both play life functions not const? So the array can be updated to the next ganeration within the funciton.
Q3: If we did change the arrays passed to play life functions to make them const, 
    what else would have to happen to make play life work? A copy of the array would have to be made to manipulate to be able make the simulation work.
*/

#include <iostream>

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
void printLife2DArray(const bool[][NUM_COLS]);
void playLife2DArray(bool[][NUM_COLS]);
void boardCopy(bool[][NUM_COLS], bool[][NUM_COLS]);


int main() {
    
    int iterations;
    bool initialBoard[NUM_ROWS][NUM_COLS] = {false};
    char line[25] = {};
    cin >> iterations;
    cin.getline(line, 11);
    /// read in the number of iterations to run

    /** make a 2d bool array with the number of rows and cols

    Some input examples and explanation of game of life
    Look at http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Examples_of_patterns
    */

    /** print out what game we are playing */
    cout << "Game Of Life rows=" << NUM_ROWS << " cols=" << NUM_COLS << " iterations=" << iterations << endl;

    /** 
        start your code
    */
    
//    Build initial game board state from input.txt file
    int j = 0;
    while(j < NUM_ROWS){
        cin.getline(line, 11);
        for(size_t i = 0; i < NUM_COLS; ++i){
            if(line[i] == '.')
                initialBoard[i][j] = false;
            else
                initialBoard[i][j] = 1;
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
    return 0; /// return a ok
}


// It does what you think it does.
void printLife2DArray(const bool currentBoard[][NUM_COLS]){
    
    for(size_t j = 0; j < NUM_ROWS; ++j){
        for(size_t i = 0; i < NUM_COLS; ++i){
            if(!currentBoard[i][j])
                cout << ".";
            else
                cout << "*";
        }
        cout << endl;
    }
    
    cout << endl << endl;
}

void playLife2DArray(bool currentBoard[][NUM_COLS]){
    int nextGenCount[NUM_COLS][NUM_ROWS]; //Array to hold state of cells for next generation
    int liveCellCount = 0;
    
    //Update center of board
    for(size_t j = 1; j < NUM_ROWS-1; ++j){
        for(size_t i = 1; i < NUM_COLS -1; ++i){
            nextGenCount[i][j] = currentBoard[i-1][j-1] + currentBoard[i][j-1] + currentBoard[i+1][j-1] + currentBoard[i-1][j] + currentBoard[i+1][j] + currentBoard[i-1][j+1] + currentBoard[i][j+1] + currentBoard[i+1][j+1];
        }
    }
    
    //Update condition for top  & bottom row (not corners)
    for(size_t i = 1; i < NUM_COLS - 1; ++i){
        nextGenCount[i][0] = currentBoard[i-1][NUM_ROWS-1] + currentBoard[i][NUM_ROWS-1] + currentBoard[i+1][NUM_ROWS-1] + currentBoard[i-1][0] + currentBoard[i+1][0] + currentBoard[i-1][1] + currentBoard[i][1] + currentBoard[i+1][1];
        nextGenCount[i][NUM_ROWS-1] = currentBoard[i-1][NUM_ROWS-2] + currentBoard[i][NUM_ROWS-2] + currentBoard[i+1][NUM_ROWS-2] + currentBoard[i-1][NUM_ROWS-1] + currentBoard[i+1][NUM_ROWS-1] + currentBoard[i-1][0] + currentBoard[i][0] + currentBoard[i+1][0];
    }
    
    //Update condition for left and right columns (not corners)
    for(size_t j = 1; j < NUM_ROWS - 1; ++j){
        nextGenCount[0][j] = currentBoard[NUM_COLS-1][j-1] + currentBoard[0][j-1] + currentBoard[1][j-1] + currentBoard[NUM_COLS-1][j] + currentBoard[1][j] + currentBoard[NUM_COLS-1][j+1] + currentBoard[0][j+1] + currentBoard[1][j+1];
        nextGenCount[NUM_COLS-1][j] = currentBoard[NUM_COLS-2][j-1] + currentBoard[NUM_COLS-1][j-1] + currentBoard[0][j-1] + currentBoard[NUM_COLS-2][j] + currentBoard[0][j] + currentBoard[NUM_COLS-2][j+1] + currentBoard[NUM_COLS-1][j+1] + currentBoard[0][j+1];
    }
    
    //Update condition of corners
    //Top-left
    nextGenCount[0][0] = currentBoard[NUM_COLS-1][NUM_ROWS-1] + currentBoard[0][NUM_ROWS-1] + currentBoard[1][NUM_ROWS-1] + currentBoard[NUM_COLS-1][0] + currentBoard[1][0] + currentBoard[NUM_COLS-1][1] + currentBoard[0][1] + currentBoard[1][1];
    //Top-right
    nextGenCount[NUM_COLS-1][0] = currentBoard[NUM_COLS-2][NUM_ROWS-1] + currentBoard[NUM_COLS-1][NUM_ROWS-1] + currentBoard[0][NUM_ROWS-1] + currentBoard[NUM_COLS-2][0] + currentBoard[0][0] + currentBoard[NUM_COLS-2][1] + currentBoard[NUM_COLS-1][1] + currentBoard[0][1];
    //Bottom-left
    nextGenCount[0][NUM_ROWS-1] = currentBoard[NUM_COLS-1][0] + currentBoard[0][0] + currentBoard[1][0] + currentBoard[NUM_COLS-1][NUM_ROWS-1] + currentBoard[1][NUM_ROWS-1] + currentBoard[NUM_COLS-1][NUM_ROWS-2] + currentBoard[0][NUM_ROWS-2] + currentBoard[1][NUM_ROWS-2];
    //Bottom-right
    nextGenCount[NUM_COLS-1][NUM_ROWS-1] = currentBoard[NUM_COLS-2][NUM_ROWS-2] + currentBoard[NUM_COLS-1][NUM_ROWS-2] + currentBoard[0][NUM_ROWS-2] + currentBoard[NUM_COLS-2][NUM_ROWS-1] + currentBoard[0][NUM_ROWS-1] + currentBoard[1][NUM_ROWS-1] + currentBoard[0][0] + currentBoard[1][0];
    
    
    //Update Current Board for next Generation
    for(size_t j = 0; j < NUM_ROWS; ++j){
        for(size_t i = 0; i < NUM_COLS; ++i){
            if(currentBoard[i][j]){
                if(nextGenCount[i][j] < 2)
                    currentBoard[i][j] = false;
                else if(nextGenCount[i][j] > 3)
                    currentBoard[i][j] = false;
                else
                    currentBoard[i][j] = true;
            }
            if(!currentBoard[i][j] && nextGenCount[i][j] == 3)
                currentBoard[i][j] = true;
        }
    }
    
}



