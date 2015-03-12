/** 
Name: Otis Brower
Eid: ODB234

*/

#include <iostream> /// for cout, cin
#include <fstream> /// for ifstream
#include <math.h>

using namespace std;


/** function declarations
    you will need to write the definitions of these functions below.
    DO NOT MODIFY the declarations.
    You may create your own functions, but you must use these.
*/

/**
    1D array version
    Use pointer arithmetic to go through the array
    input:  char*: board
            char*: a word
            int: num rows
            int: num cols
    output: char*: the solution board
*/
char* findMatch1D(char*, char* , const int , const int );


/**
    print the board
    1D array version
    Use pointer arithmetic to go through the array
    input:  char*: board
            int: num rows
            int: num cols
*/
void print1D(char*, const int , const int );

/**
    2D array version
    Use array indexing to go through the array
    input:  char**: board
            char*: a word
            int: num rows
            int: num cols
    output: char**: the solution board
*/
char** findMatch2D(char**, char* , const int, const int);

/**
    print the board
    2D array version
    input:  char**: board
            int: num rows
            int: num cols
*/
void print2D(char**, const int , const int )
{
    ;
}
void build2D(char**, const int, const int)
{
    char line[10];
}


int main(int argc, char const **argv) {    
    /* get the word and the filename from our command line input
        This can be done using input file stream (ifstream) which is an input
         stream (istream). cin is also a (istream), so once you get you file
         stream you can use it nearly the same as cin
        int i;
        ifstream file("nameOfYourFile");
        file >> i; 
    */
    /// read in filename from command line argument
    /// read in word from command line argument
    /// read in board dimensions from file
    /// read in 1D or 2D array file (1 for 1D, 2 for 2D)
    /// read in board from file
    
    /** 
        your code
    */
	
    int numRows, numCol, gameDim;
	
	cin >> numRows >> numCol >> gameDim;
    int oneDsize = numRows * numCol;
    cout << oneDsize << endl;
    //1-D gameboard
    char line[numCol];
    char *oneDBoard = new char[numRows * numCol];
    char *pa1 = &oneDBoard[0];
    char **twoDBoard = new char*[numRows];

    cout << sizeof(oneDBoard) << endl;

    oneDBoard[0] = 'h';
    oneDBoard[4] = 'b';
    cout<<  *(pa1 + 4) << endl;
    while(cin.getline(line, numCol+1)) {
        for(size_t k = 0; k < sizeof(line); ++k){
            *(pa1 + k) = line[k];
            //cout << line[k];
        }
        cout << endl;
        for(size_t i = 0; i < sizeof(line); ++i)
        {
            cout << *(pa1 + i);
        }
        cout << endl;
    }
        
    for(size_t i =0; i < sizeof(oneDBoard); ++i)
    {
        cout << *(pa1 + i);
    }

    pa1 = oneDBoard;

    // for(size_t i = 0; i < sizeof(oneDBoard); ++i){
    //     pa1 += 1;
    //     cout << *pa1 << " ";
    // }
    cout << endl;
    cout << numRows << " " << numCol << " " << gameDim << endl;
	
    delete [] oneDBoard;
    delete [] twoDBoard;
    return 0; /// return a ok
}