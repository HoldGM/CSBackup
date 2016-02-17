all: project_C project_F
	mv project_C C/project_C && mv project_F F/project_F

project_C: 
	gcc C/main.c C/func.c C/IO.c -o project_C
project_F:
	gfortran F/main.f90 -o project_F


clean:
	rm C/*.dat F/*.dat C/project_C F/project_F
