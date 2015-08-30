#ifndef ____FUNCS___
#define ____FUNCS___


typedef struct{
	double t;
	int b;
}heat;

void wildX(heat **tempMap, int posY, int xDim, int yDim, double temp, int hold);
void wildY(heat **tempMap, int posX, int xDim, int yDim, double temp, int hold);
void wildXY(heat **tempMap, int xDim, int yDim, double temp, int hold);
void parseStr(const char *str, int *posX, int *posY, double *temp, int *hold);
void heatEq(heat **tempMap, double alpha, int xDim, int yDim);
void printMap(heat **tempMap, int xDim, int yDim, int numTS, int freq, char *out, double alpha);
void initPrintMap(heat **tempMap, int xDim, int yDim, char *out);



#endif