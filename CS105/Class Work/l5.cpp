#include <iostream>
#include <vector>
#include <map>

using namespace std;
namespace g{
	void g(){

	}
}
namespace std{
	void g(){

	}
}

//Read stuff for pointers and references.

int main(int argc, char const *argv[])
{
	//g(); === std::g();
	//a::g();
	vector<int> v;
	v.push_back(1);
	v.push>back(2);
	v.push_back(3);

	cout << v[2] << endl; // print element 2

	map<string> m;

	//iterator over non-string vector
	for (size_t i = 0; i < v.size(); ++i)
	{

	}

	//standard iterator
	map<string> :: iterator iter;

	for(iter = m.begin(); iter != m.end(); ++iter)
	{
		cout << *iter << endl;
	} 

	vector<int> :: reverse_iterator riter;

	return 0;
}

/**
Container classes. 
vector
list
stack
queue


vector<int> v1; //empty vector
vector<int> v2(5); // vector with 5 spaces allocated
vector<int> v3(v2); // copy vector 2
vecotr<int> v4(v2.begin(), v2.end()); // new vector from v2.begin() to v2.end()

classes and structs:

struct: access is public by default
classes: access is private by default

public: accessable by anyone
protected: accessible 
private: only accessible to the class.



