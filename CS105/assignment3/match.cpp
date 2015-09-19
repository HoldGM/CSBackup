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
    cout << endl << endl;
    findMatch2D(arr2D, word, num_rows, num_col);

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
            cout << arr[i][j];
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

    for(int j = 0; j < num_rows; ++j){
        for(int i = 0; i < num_col; ++i){
            int index = j * num_col + i;
            if(*(retArr + index) != '.'){
                continue;
            }
            if(*(arr + index)  == word[0]){
                retArr[index] = arr[index];
                for(int k = 1; k < wordLen; ++k){
                    //right
                    if((arr + index +k) <= (arr + (num_rows * num_col)) && *(arr + index + k) == word[k]){
                        retArr[index + k] = arr[index + k];
                    }
                    
                    //down
                    if((arr + index + (k * num_col)) <= (arr + (num_rows * num_col) -1)  && *(arr+ index +(k * num_col)) == word[k]){
                        retArr[index + (k * num_col)] = arr[index + (k * num_col)];
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
                    if((arr + ((j-k) * num_col) + k) >= arr && *(arr + ((j-k) * num_col + k)) == word[k]){
                        retArr[index - k * num_col +k] = arr[index - k * num_col + k];
                    }

                    //up-left
                    if((arr + ((j-k) * num_col) - k) >= arr &&  *(arr +((j-k) * num_col) -k) == word[k]){
                        retArr[index - k * num_col - k] = arr[index - k * num_col -k];
                    }

                    //lowerleft
                    if((arr + ((j+k) * num_col - k)) <= (arr + (num_rows * num_col) -1) && *(arr + ((j+k) * num_col -k))){
                        retArr[index + k * num_col - k] = arr[index + k * num_col -k];
                    }

                    //lower-right
                    // if((arr +((j+k) * num_col) + k) <= (arr + (num_rows * num_col)) &&*(arr + ((j+k) * num_col)+k) == word[k]){
                    //     retArr[index + k * num_col + k] = arr[index + k * num_col +k];
                    // }
                }
            }
        }

    }

    print1D(retArr, num_rows, num_col);

    return arr;
}

char** findMatch2D(char** arr, char* word, const int num_rows, const int num_col){
    int wordLen = 0;
    int w = 0;    

    char ** retArr = new char*[num_col];
    for(size_t i = 0; i < num_col; ++i){
        retArr[i] = new char[num_rows];
    }

    while(word[w] != '\0'){
        wordLen++;
        ++w;
    }


    for(size_t j = 0; j < num_rows ; ++j){
        for(size_t i = 0; i < num_col; ++i){
            retArr[i][j] = '.';
        }
    }
    //start searching the board
    for(int j = 0; j < num_rows; ++j){
        for(int i = 0; i < num_col; ++i){
            //restarts loop if letter and index location has already ben found.
            if(retArr[i][j] != '.'){
                continue;
            }
            if(arr[i][j] == word[0]){
                retArr[i][j] = arr[i][j];
                for(int k = 1; k < wordLen; ++k){
                    //up
                    if((j-k) >= 0 && arr[i][j-k] == word[k]){
                        retArr[i][j-k] = arr[i][j-k];
                    }
                    //down
                    if((j+k) < num_rows && arr[i][j+k] == word[k]){
                        retArr[i][j+k] = arr[i][j+k];
                    }
                    //right
                    if((i+k) < num_col && arr[i+k][j] == word[k]){
                        retArr[i+k][j] = arr[i+k][j];
                    }
                    //left
                    if((i-k) >= 0 && arr[i-k][j] == word[k]){
                        retArr[i-k][j] = arr[i-k][j];
                    }
                    //up-left
                    if((i-k) >= 0 && (j-k) >=0 && arr[i-k][j-k] == word[k]){
                        retArr[i-k][j-k] = arr[i-k][j-k];
                    }
                    //up-right
                    if((i+k) < num_col && (j-k) >= 0 && arr[i+k][j-k] == word[k]){
                        retArr[i+k][j-k] = arr[i+k][j-k];
                    }
                    //down-left
                    if((i-k) >= 0 && (j+k) < num_rows && arr[i-k][j+k] == word[k]){
                        retArr[i-k][j+k] = arr[i-k][j+k];
                    }
                    //down-right
                    if((i+k) < num_col && (j+k) < num_rows && arr[i+k][j+k] == word[k]){
                        retArr[i+k][j+k] = arr[i+k][j+k];
                    }
                }
            }
        }

    }


    print2D(retArr, num_rows, num_col);

    for(size_t i = 0; i < num_col; ++i){
        delete [] retArr[i];
    }
    delete [] retArr;
    return arr;
}

