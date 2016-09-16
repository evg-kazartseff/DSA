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
    int i;

    for (i = 0; i < size_array; i++) {
        array[i] = getrand(0, 100000);
//      printf ("array[%d]= %d ",i,array[i]);
    }

    min = max = array[0];
    for (i = 1; i < size_array; i++) {
        if (array[i] < min) {
            min = array[i];
        } else if (array[i] > max) {
            max = array[i];
        }
    }

    int range = max - min + 1;

    double time = wtime();
    int *counter_array = (int *) malloc(sizeof(int) * (range + 1));
    int *temp_array = (int *) malloc(sizeof(int) * size_array);

    for (i = 0; i < range + 1; i++)
        counter_array[i] = 0;

    for (i = 0; i < size_array; i++) {
        int c = array[i] + 1 - min;
        counter_array[c]++;
    }

    for (i = 1; i < range; i++)
        counter_array[i] += counter_array[i - 1];

    for (i = (size_array - 1); i >= 0; i--) {
        int c = array[i] - min;
        int s = counter_array[c];
        temp_array[s] = array[i];
        counter_array[c]++;
    }

    for (i = 0; i < size_array; i++)
        array[i] = temp_array[i];


    time = wtime() - time;

    FILE *tb;
    tb = fopen("countingsort.dat", "a");
    fprintf(tb, "%d %.6f\n", size_array, time);

//      for (i = 0; i < size_array; i++) {
//              printf ("array[%d]= %d ",i,array[i]);
//      }

    free(counter_array);
    free(temp_array);

    return EXIT_SUCCESS;
}
