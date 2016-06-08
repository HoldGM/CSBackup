#include <iostream>
#include <algorithm>
#include <math.h>


using namespace std;

bool isPrime(int i){
		for(int n = 2; n <= sqrt(i); n++){
			if(i % n == 0){
				return false;
			}
		}
	return true;
}

bool isPal(int i){
	string s = to_string(i);
	string s2 = to_string(i);
	reverse(s2.begin(), s2.end());
	if(s.compare(s2) == 0){
		return true;
	}
	return false;
}

int main(int argc, char** argv){

	for(size_t i = 999; i > 1; i -= 2){
		if(isPrime(i) && isPal(i)){
			cout << i << endl;
			break;
		}
	}

	return 0;
}