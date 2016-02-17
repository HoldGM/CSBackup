/** 
Name: Otis Brower
Eid: ODB234
Date: 8/30/2015
*/

#include <iostream>

using namespace std; /// so we don't need to prefix cout,cin,endl methods with std

const int MAX_ARRAY_SIZE = 256; /// How big our max sized line can be


/** declare our functions */
char getHighestFrequency(char c[]);
int getFrequencyCount(const char c[], char matchChar);


/**
    Given a line, find the character with the highest occurence
*/
char getHighestFrequency(char line[]){
    int i = 0;
    int highLoc = 0;
    int highFreq = 0;
    int count[26] = {0};
    
    
//    search through line and log each charcter
    while (line[i] != '\0'){
        int temp = (int)line[i];
        if(temp > 64 && temp < 91){
            temp += 32;
        }
        temp -= 97;
        if(temp < 27 && temp >= 0){
            count[temp] += 1;
        }
        ++i;
    }
//    Find character with highest number occurences
    for(i = 0; i < 26; ++i){
        if(count[i] > highFreq){
            highLoc = i;
            highFreq = count[i];
        }
    }
    return (char)(highLoc + 97);
}


/**
    Given a character, count each occurrence of the char
*/
int getFrequencyCount(const char line[], char matchChar){
    
    int count = 0;
    int i = 0;
    
//    counts occurences of matchChar in line
    while(line[i] != '\0'){
        if(line[i] == matchChar || line[i] == (matchChar - 32)){
            count += 1;
        }
        ++i;
    }
    
    return count;
}

/* Read the input using cin.
   Use cout or printf to print the char and count.
   Remember that you must also create(and use) the method getHighestFrequency
*/
int main() {
    char arrStr[MAX_ARRAY_SIZE] = {};
    char highFreqChar;
    int freqCount;
    while (cin.good()){
        cin.getline (arrStr, MAX_ARRAY_SIZE);
        
//        reset input for blank line
        if(arrStr[0] == '\0'){
            cout << endl;
            continue;
        }
        highFreqChar = getHighestFrequency(arrStr);
        freqCount = getFrequencyCount(arrStr, highFreqChar);
        cout << highFreqChar << "   " << freqCount << endl;
    }
    
    return 0;
}

