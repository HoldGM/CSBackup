#include <stdio.h>
#include <pthread.h>

void print_num(void *);

typedef struct thrd_data
{
	int thread_no;
}thdata;

int main(int argc, char **argv)
{
	pthread_t thread1;
	pthread_t thread2;
	pthread_t thread3;
	thdata t1, t2, t3;

	t1.thread_no = 1;
	t2.thread_no = 2; 
	t3.thread_no = 3;

	pthread_create(&thread1, NULL, (void*) &print_num, &t1);
	pthread_create(&thread2, NULL, (void*) &print_num, &t2);
	pthread_create(&thread3, NULL, (void*) &print_num, &t3);

	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);
	pthread_join(thread3, NULL);

	if(t1.thread_no == 1){
		printf("Application finished.\n");
	}

	return 1;
}

void print_num(void *ptr)
{
	thdata *data;
	data = (thdata*)ptr;
	int i = 1;

	while(i <= 10){
		printf("%d: %d\n", (*data).thread_no, i);
		++i;
	}

	pthread_exit(NULL);
}