#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "fanc.h"

int main (int argc, char * argv[])
{
	if (argc < 2) {
		printf ("Missing size of array!\n");
		return EXIT_FAILURE;
	}

	int size_array = atoi(argv[1]);
	int * array = (int *)malloc(size_array*sizeof(uint32_t));

	for (int i = 0; i < size_array; i++) {
		array[i] = getrand(0,100000);
//        printf ("array[%d]= %d ",i,array[i]);
	}

	double time = wtime();

    	for(int i = 0 ; i < size_array - 1; i++) {
        	// сравниваем два соседних элемента.
        	for(int j = 0 ; j < size_array - i - 1 ; j++) {
            		if(array[j] > array[j+1]) {
                	// если они идут в неправильном порядке, то
                	//  меняем их местами.
                	int tmp = array[j];
                	array[j] = array[j+1];
                	array[j+1] = tmp;
            		}
        	}
    	}


//    for (int i = 0; i < size_array; i++) {
//    printf ("array[%d]= %d ",i,array[i]);
//	}

	time = wtime() - time;

	FILE * tb;
	tb = fopen ("bubblesort.dat", "a");
	fprintf (tb,"%d %.6f\n",size_array, time);

	free(array);
	return EXIT_SUCCESS;
}
