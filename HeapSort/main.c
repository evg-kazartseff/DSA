#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>
#include "fanc.h"


int max (int *a, int n, int i, int j, int k) {
    int m = i;
    if (j < n && a[j] > a[m]) {
        m = j;
    }
    if (k < n && a[k] > a[m]) {
        m = k;
    }
    return m;
}
 
void downheap (int *a, int n, int i) {
    while (1) {
        int j = max(a, n, i, 2 * i + 1, 2 * i + 2);
        if (j == i) {
            break;
        }
        int t = a[i];
        a[i] = a[j];
        a[j] = t;
        i = j;
    }
}
 
void heapsort (int *a, int n) {
    int i;
    for (i = (n - 2) / 2; i >= 0; i--) {
        downheap(a, n, i);
    }
    for (i = 0; i < n; i++) {
        int t = a[n - i - 1];
        a[n - i - 1] = a[0];
        a[0] = t;
        downheap(a, n - i - 1, 0);
    }
}



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

	heapsort(array, size_array);

	time = wtime() - time;

	FILE * tb;
	tb = fopen ("heapsort.dat", "a");
	fprintf (tb,"%d %.6f\n",size_array, time);

	free(array);
	return EXIT_SUCCESS;
}
