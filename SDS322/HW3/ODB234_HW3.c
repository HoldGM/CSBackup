#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct{
	float x, y, z;
}vector;

vector posUpdate(vector ***vectorField, vector particle){
	vector result;

	result.x = particle.x + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].x;
	result.y = particle.y + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].y;
	result.z = particle.z + vectorField[(int)floor(particle.x)][(int)floor(particle.y)][(int)floor(particle.z)].z;

	return result;
}

int main(int argc, char **argv){

	char *vel_file;
	char *part_file;
	char *filename;
	char outputName[50];
	vector *particleList;  //pointer to array of particles
	vector ***vectorField; //pointer to vector field map
	int numParticles, vectorSizeX, vectorSizeY, vectorSizeZ;
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

	particles = fopen(part_file, "r");

	fscanf(particles, "%d", &numParticles);

	particleList = (vector *)malloc(sizeof(vector) * numParticles);

	for(int i = 0; i < numParticles; i++){
		fscanf(particles,"%f %f %f", &particleList[i].x, &particleList[i].y, &particleList[i].z);
	}

	fclose(particles);

	velocity = fopen(vel_file, "r");
	fscanf(velocity, "%d %d %d", &vectorSizeX, &vectorSizeY, &vectorSizeZ);

	vectorField = (vector ***)malloc(sizeof(vector **) * vectorSizeX);

	for(int i = 0; i < vectorSizeY; i++){
		vectorField[i] = (vector **)malloc(sizeof(vector *) * vectorSizeY);
		for(int j = 0; j < vectorSizeZ; j++){
			vectorField[i][j] = (vector *)malloc(sizeof(vector) * vectorSizeZ);
		}
	}

	for(int i = 0; i < vectorSizeZ; i++){
		for(int j = 0; j < vectorSizeY; j++){
			for(int k = 0; k < vectorSizeZ; k++){
				fscanf(velocity, "%f", &vectorField[i][j][k].x);
				fscanf(velocity, "%f", &vectorField[i][j][k].y);
				fscanf(velocity, "%f", &vectorField[i][j][k].z);
			}
		}
	}
	fclose(velocity);


	sprintf(outputName, "%s_0000.dat", filename);
	output = fopen(outputName, "w");

	for(int i = 0; i < numParticles; i++){
		fprintf(output, "%.4d:  %-10f  %-10f  %-10f\n", i, particleList[i].x, particleList[i].y, particleList[i].z);
	}
	fclose(output);


	for(int t = 1; t <= numTS; t++){
		if(t%10 == 0){
			sprintf(outputName, "%s_%.4d.dat", filename, t);
			output = fopen(outputName, "w");
			 for(int i = 0; i < numParticles; i++){
			 	particleList[i] = posUpdate(vectorField, particleList[i]);
			 	fprintf(output, "%.4d: %-10f  %-10f  %-10f\n", i, particleList[i].x, particleList[i].y, particleList[i].z);
			 }
			fclose(output);
		}
		else{
			for(int i = 0; i < numParticles; i++){
			 	particleList[i] = posUpdate(vectorField, particleList[i]);
			 	fprintf(output, "%.4d: %-10.8lf  %-10.8lf  %-10.8lf\n", i, particleList[i].x, particleList[i].y, particleList[i].z);
			 }
		}
	}

	free(particleList);
	for(int i = 0; i < vectorSizeX; i++){
		for (int j = 0; j < vectorSizeY; j++){
			free(vectorField[i][j]);
		}
		free(vectorField[i]);
	}
	free(vectorField);

	return 0;
}