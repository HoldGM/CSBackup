
all: match
	
match: main.o Rating.o Person.o Matcher.o
	g++ Person.o Rating.o Matcher.o main.o -o match

main.o: main.cpp
	g++ -c main.cpp

Rating.o: Rating.cpp
	g++ -c Rating.cpp

Person.o: Person.cpp
	g++ -c Person.cpp

Mathing.o: Matcher.cpp
	g++ -c Matcher.cpp

clean:
	rm *.o match