#include "graph.h"


struct graph *graph_create(int nvertices)
{
    struct graph *g;
    g = malloc(sizeof(*g));
    g->nvertices = nvertices;
    g->visited = malloc(sizeof(int) * nvertices);
    g->m = (int **) malloc(nvertices * sizeof(int *));
    if (m != NULL) {
        for (i = 0; i < nvertices; i++) {
            m[i] = (int *) malloc(nvertices * sizeof(int));
        }
    }
    else {
        printf("Can't create buffer!\n");
    }
    graph_clear(g); // Опционально, O(n^2)
    return g;
}

void graph_clear(struct graph *g)
{
    int i, j;
    for (i = 0; i < g->nvertices; i++) {
	g->visited[i] = 0;
	for (j = 0; j < g->nvertices; j++) {
	    g->m[i][j] = 0;
	}
    }
}

void graph_free(struct graph *g)
{
    //
    /*free(g->m);*/
    free(g);
}
