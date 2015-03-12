//CS105 - Assingment 1
//Otis Brower - ODB234
//Jan. 26, 2015

#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>

using namespace std;
int getFrequencyCount(int lFreq[]); // Forward Decalration of Frequency Count

/* Highest Frequency, processes line string to lower case then counts 
** occurence of letters, passes to Frequency count.
*/

void getHighestFrequency(string str, int len){
	
	int lFreq[26] = {};
	
	string newStr;
	newStr.resize(str.size());
	
	transform(str.begin(), str.end(), newStr.begin(), :: tolower);
	
	for(int i = 0; i < newStr.length() ; ++i){
		if((int)newStr.at(i) > 96 && (int)newStr.at(i) < 122)
		{
			lFreq[(int)newStr.at(i) - 97] += 1;
		}
	}
	
	cout << (char)(getFrequencyCount(lFreq) + 97) << "    "<< lFreq[getFrequencyCount(lFreq)] << "\n";
	
}


/* Frequency Count (forward delcared) searches Highest Frequency array for 
** highest occurence value.
*/
int getFrequencyCount(int lFreq[]){
	int max = 0;
	int loc = 0;
	for (int i = 0; i < 26; ++i)
	{
		if (lFreq[i] > max){
			loc = i; 
			max = lFreq[i];
		}
	}
	
	return loc; //returns location of highest occurence (first highest if dupicaltes)
}


/* Main function, reads in files and passes each line to Highest Frequency and
** Frequency Count.
** Will print "a   0" for a line with no input.
*/
int main(int argc, char *argv[]){
	
	string line;
	while (getline(cin, line)){
		//cout << line << "\n"; // test for string input.
		getHighestFrequency(line, line.length()); //send line to Highest Frequency
	}
	
	
	return 1;
}