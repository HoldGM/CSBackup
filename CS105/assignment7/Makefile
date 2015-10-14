
all: SpaceRaiders

SpaceRaiders: gameobject.o
	g++ -Wall -lncurses gameobject.o main.cpp -o SpaceRaiders

gameobject.o: gameobject.cpp
	g++ -c -lncurses gameobject.cpp

clean:
	rm *.o SpaceRaiders

