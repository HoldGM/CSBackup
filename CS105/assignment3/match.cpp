/** 
Name: <your name>
Eid: <your id>

*/

#include <iostream> /// for cout, cin
#include <fstream> /// for ifstream

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
void print2D(char**, const int , const int );


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

    char filename[128] = {};
    char word[32] = {};
    char rowIn[32] = {};
    int num_rows;
    int num_col;
    int dim;
    char * arr1D;
    char ** arr2D;

    sprintf(filename, "%s", argv[1]);
    sprintf(word, "%s", argv[2]);
    ifstream file(filename);

    file >> num_rows >> num_col;
    file >> dim;


    cout << filename << endl;
    cout << "Word: " << word << endl;
    cout << "Num Rows: " << num_rows << " Num Cols: " << num_col << endl;
    cout << "Dimension: " << dim << endl;

    //create 1D and 2D arrays
    arr1D = new char[num_rows * num_col];
    arr2D = new char*[num_col];
    for(size_t i = 0; i < num_col; ++i){
        arr2D[i] = new char[num_rows];
    }

    for(size_t r = 0; r < num_rows; ++r){
        file >> rowIn;
        for(size_t i = 0; i < num_col; ++i){
            arr1D[r * num_col + i] = rowIn[i];
        }
    }

    for(size_t j = 0; j < num_rows; ++j){
        for(size_t i = 0; i < num_col; ++i){
            arr2D[i][j] = arr1D[j * num_col + i];
        }
    }
 
    findMatch1D(arr1D, word, num_rows, num_col);

    // Clean up
    delete [] arr1D;
    for(size_t i = 0; i < num_rows; ++i){
        delete [] arr2D[i];
    }
    delete [] arr2D;
    file.close();
    return 0; /// return a ok
}
void print1D(char* arr, const int num_rows, const int num_col){
    for(size_t j = 0; j < num_rows; ++j){
        for(size_t i = 0; i < num_col; ++i){
            cout << arr[j * num_col + i];
        }
        cout << endl;
    }
}

void print2D(char** arr, const int num_rows, const int num_col){
    for(size_t j = 0; j < num_rows; ++j){
        for (size_t i = 0; i < num_col; ++i){
            cout << arr[i][j] << " ";
        }
        cout << endl;
    }
}

char* findMatch1D(char* arr, char* word, const int num_rows, const int num_col){

    int wordLen = 0;
    int w = 0;
    char retArr[num_rows * num_col];

    for(size_t i = 0; i < num_rows * num_col; ++i){
        retArr[i] = '.';
    }

    while(word[w] != '\0'){
        wordLen++;
        ++w;
    }

    for(size_t j = 0; j < num_rows; ++j){
        for(size_t i = 0; i < num_col; ++i){
            int index = j * num_col + i;
            if(*(retArr + index) != '.'){
                continue;
            }
            if(*(arr + index)  == word[0]){
                retArr[index] = arr[index];
                for(size_t k = 1; k < wordLen; ++k){
                    //right
                    if((index + k) < ((j+1) * num_col) && *(arr + index + k) == word[k]){
                        retArr[index + k] = arr[index + k];
                    }
                    
                    //down
                    if((arr + ((j+k) * num_col)) <= (arr + (num_rows * num_col) -1)  && *(arr+((j+k) * num_col)) == word[k]){
                        retArr[index + k * num_col] = arr[index + k * num_col];
                    }

                    //up
                    if((arr + (index - k * num_col)) >= arr && *(arr+(index - k * num_col)) == word[k]){
                        retArr[index - k * num_col] = arr[index - k * num_col];
                    }

                    //left
                    if((arr + (index - k)) >= (arr + (j * num_col)) && *(arr + (index - k)) == word[k]) {
                        retArr[index - k] = arr[index - k];
                    }

                    //up-right
                    if((arr + ((j-1) * num_col) + k) >= arr && (arr + ((j-1) * num_col + 1)) == word[k]){
                        retArr[index - k * num_col +k] = arr[index - k * ]
                    }
                }
            }
        }

    }

    print1D(retArr, num_rows, num_col);

    return arr;
}

