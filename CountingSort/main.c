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
		printf ("array[%d]= %d\n",i,array[i]);
	}




	free(array);

	return EXIT_SUCCESS;
}
