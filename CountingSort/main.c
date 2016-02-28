#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "fanc.h"

int main(int argc, char *argv[])
{
    if (argc < 2) {
	printf("Missing size of array!\n");
	return EXIT_FAILURE;
    }

    int size_array = atoi(argv[1]);
    int *array = (int *) malloc(size_array * sizeof(uint32_t));
    int max, min;
    int i, z, j;

    for (i = 0; i < size_array; i++) {
	array[i] = getrand(0, 100000);
//        printf ("array[%d]= %d ",i,array[i]);
    }

    min = max = array[0];
    for (i = 1; i < size_array; i++) {
	if (array[i] < min) {
	    min = array[i];
	} else if (array[i] > max) {
	    max = array[i];
	}
    }

    double time = wtime();
    int range = max - min + 1;
    int *swap = malloc(range * sizeof(*array));


    for (i = 0; i < range; i++)
	swap[i] = 0;
    for (i = 0; i < size_array; i++)
	swap[array[i] - min]++;

    for (i = min, z = 0; i <= max; i++) {
	for (j = 0; j < swap[i - min]; j++) {
	    array[z++] = i;
	}
    }
    time = wtime() - time;

    FILE *tb;
    tb = fopen("countingsort.dat", "a");
    fprintf(tb, "%d %.6f\n", size_array, time);

//      for (i = 0; i < size_array; i++) {
//    printf ("array[%d]= %d ",i,array[i]);
//      }


    free(array);
    free(swap);

    return EXIT_SUCCESS;
}
