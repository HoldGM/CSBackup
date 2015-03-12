#include <iostream>
#include <string>
#include <vector>

using namespace std;

int main(int argc, char const *argv[]){
	
	string name = "maia";
	vector<int> vi;
	vi.push_back(1);
	vi.push_back(2);
	vi.push_back(3);
	
	cout << name << endl;
	cout << name[1] << endl;
	cout << vi[2] << endl;
	
	return 0;
}

/*
int f(){
	float x;
	float *py;
	py = new float(3.01);
	
	delete py;
	return 0;
}
int main (int argc, char const *argv[])
{
	int i =5;
	int *p = &i;
	cout << p << endl;
	cout << *p++ << endl;
	i = 5;
	p = &i;
	cout << *++p << endl;
	i = 5;
	p = &i;
	cout << ++*p << endl;
	i = 5;
	p = &i;
	cout << (*p)++ << endl;
	
	char a[] = "foobar";
	char *pa = a;
	cout << *(pa + 4) << endl;
	cout << a[4] << endl;
	
	i = 3;
	int j = 4;
	int *pint = new int(5);
	int *pint2;
	
	pint2 = new int(7);
	
	delete pint;
	delete pint2;
	return 0;
}*/