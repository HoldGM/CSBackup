// Otis Brower
// UT EID: ODB234
// Assignment2
// Due Date: 3/5/2015

#include <stdio.h>
#include <stdlib.h>
#include <math.h>


struct vector{
	double x;
	double y;
}vector;

struct particle{
	double x;
	double y;	
} particle;


int main(int argc, char **argv)
{
	int numTSteps, i, j; 
	double xTemp, yTemp;
	struct vector velocityMap[101][101]; //Vector field for velocity map
	struct particle particleMap[100];  //Particle list, x,y components
	char filename[20];  //string for filename of output file
	FILE *particlesIn, *velocityIn, *output, *velocityList; //files to be opened and read/created
	
	particlesIn = fopen("particles.dat", "r");  //open particle file
		
	fscanf(particlesIn,"%d", &numTSteps); //scan number of time steps from first line of particle file

	// Start loop to read in particle starting locations
	for(i = 0; i < 100; ++i){
		fscanf(particlesIn, "%lf %lf", &particleMap[i].x, &particleMap[i].y);
	}
	fclose(particlesIn); // close paticle file

	velocityIn = fopen("velocity.dat", "r"); // Open velocity vector file
	
	// Loop to read velocity information into velocity map array
	for(j = 1; j < 101; ++j){
		for(i =1; i < 101; ++i){
			fscanf(velocityIn, "%lf", &velocityMap[i][j].x); // Read in x component of velocity map location
			fscanf(velocityIn, "%lf", &velocityMap[i][j].y); // Read in y component of velocity map location
		}
	}
	fclose(velocityIn);  // Close velocity file

	sprintf(filename, "results.dat");  // File name for origin time step
	output = fopen(filename, "w"); // Create file for origin time

	// Begin loop to print origin particle information to file
	for(i = 0; i < 100; ++i){
		fprintf(output, "t=  0, p=%2.d: (%lf, %lf)\n", i+1, particleMap[i].x, particleMap[i].y);
	}


	// Loop for stepping through particle movement starting at time step 1
	for(i = 1; i <= numTSteps; ++i){

		// Loop to map particle motion
		for(j = 0; j < 100; ++j){
			xTemp = particleMap[j].x + velocityMap[(int)floor(particleMap[j].x)][(int)floor(particleMap[j].y)].x;
			yTemp = particleMap[j].y + velocityMap[(int)floor(particleMap[j].x)][(int)floor(particleMap[j].y)].y;
			particleMap[j].x = xTemp;
			particleMap[j].y = yTemp;
			fprintf(output, "t= %2.d, p=%3.d: (%lf, %lf)\n",i , j+1, particleMap[j].x, particleMap[j].y);
		}
		close(output); // Close particle file at end of each loop.
	}

	return 0;
}