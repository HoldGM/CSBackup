
all: SpaceRaiders

SpaceRaiders: gameobject.o playership.o enemyship.o playerprojectile.o main.cpp
	g++ gameobject.o playership.o enemyship.o  playerprojectile.o -lncurses main.cpp -o SpaceRaiders

gameobject.o: gameobject.cpp
	g++ -c -lncurses gameobject.cpp

playership.o: playership.cpp
	g++ -c -lncurses playership.cpp

enemyship.o: enemyship.cpp playerprojectile.o
	g++ -c -lncurses enemyship.cpp

playerprojectile.o: playerprojectile.cpp
	g++ -c -lncurses playerprojectile.cpp

clean:
	rm *.o SpaceRaiders

