#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "HW4_func.h"

// vector posUpdate(vector ***vectorField, vector particle){
// 	vector result;

// 	result.x = particle.x + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].x;
// 	result.y = particle.y + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].y;
// 	result.z = particle.z + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].z;

// 	return result;
// }

int main(int argc, char **argv){

	char *vel_file;
	char *part_file;
	char *filename;
	char outputName[50];
	vector *particleList;  //pointer to array of particles
	vector ***vectorField; //pointer to vector field map
	int numParticles;
	FILE *velocity, *particles, *output;
	int numTS = 50;

	vel_file = "velocity.dat";
	part_file = "particles.dat";
	filename = "results";

	if(argc > 1){
		numTS = atoi(argv[1]);
	}

	if(argc > 2){
		filename = argv[2];
	}

	if(argc > 3){
		vel_file = argv[3];
	}

	if(argc > 4){
		part_file = argv[4];
	}

	particleList = createParticleList(part_file, particleList);
	numParticles = countParticles(part_file);

	vectorField = inputVelocityField(vel_file, vectorField);
	
	particleMotion(numTS, particleList, vectorField, filename, numParticles);
	
	free(particleList);
	// for(int i = 0; i < vectorSizeX; i++){
	// 	for (int j = 0; j < vectorSizeY; j++){
	// 		free(vectorField[i][j]);
	// 	}
	// 	free(vectorField[i]);
	// }
	// free(vectorField);

	return 0;
}
