#include <iostream>

using namespace std

int main(){

	
	return 1;
}




if (arg){
	
}else{

}

for int j = 0; j < 10 ; j++){

}

bool quit = true;

while (!quit){

}

do{

}while(quit);





------------------------------------------------

Lecture 2

Arrays:
	Indexed data structure
		starts at zero
	How do we delcare an array?
		type arrayName[arraySize];
		ex: int array[5];

Array Initialization:
	loop:
	Initializer list:
	Use Const array

Differences from Java
	no automatic, .length, .size, for array
	no guaruanted compiler array bounds checks, if you go outside [0 through (arraySize -1)], undefined behavior
	arrays always contiguous in memory.

Character Arrays:
	char chArray[] = "hello";
	What size is the array above? 6 bytes

Passing Arrays to Functions
	Arrays are passed by reference (WHY?)
		if copy, need to specify size
	Name of array is address in memory of 1st element
	need to pass size too, unlike Java
	use const to make sure function can't change array
		void cannotModifyArray(const int b[], int size);
		const is like saying array is read-only

size_t
	used when dealing with signs from any object
	alias to an unsigned int
	size changes depending on the system
		32, 64 etc

sizeof:
	returns the number of bytes (in size_t)
	is really an operator
		can use without parens like ++
	works on arrays as well
		returns the number of elements * size of types