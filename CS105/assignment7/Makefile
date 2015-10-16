
all: SpaceRaiders

SpaceRaiders: gameobject.o playership.o enemyship.o
	g++ -Wall -lncurses gameobject.o playership.o enemyship.o main.cpp -o SpaceRaiders

gameobject.o: gameobject.cpp
	g++ -c -lncurses gameobject.cpp

playership.o: playership.cpp
	g++ -c playership.cpp

enemyship.o: enemyship.cpp
	g++ -c enemyship.cpp

clean:
	rm *.o SpaceRaiders

