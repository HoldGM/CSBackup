// Euler Project #4

#include <stdio.h>


int check_pal(int num){
	char str1[15] ={};
	int len = 0;
	int i = 0;

	sprintf(str1, "%d", num);

	printf("%s\n", str1);
	while(str1[i] != '\0'){
		len++;
		i++;
	}

	for (i = 0; i < len; i++){
		if(str1[i] != str1[len-i-1])
			return 0;
	}

	return 1;
}

int main (int argc, char **argv){

}