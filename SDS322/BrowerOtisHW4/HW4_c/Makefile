
all: HW4

HW4: HW4.o HW4_func.o
	gcc HW4.o HW4_func.o -lm -o HW4

HW4.o: HW4.c
	gcc -c -std=c99 -lm HW4.c

HW4_func.o: HW4_func.c HW4_func.h 
	gcc -c  -std=c99 HW4_func.c HW4_func.h

clean:
	rm HW4_func.o HW4.o HW4 
