#include <stdio.h>
#include "graph.h"
#include "binary_heap.h"

int main ()
{
    struct graph *g;
    g = graph_create(5);
    graph_set_edge(g, 1, 2, 10);
    graph_set_edge(g, 1, 4, 30);
    graph_set_edge(g, 2, 3, 50);
    graph_set_edge(g, 1, 5, 100);
    graph_set_edge(g, 4, 5, 60);
    graph_set_edge(g, 4, 3, 20);
    graph_set_edge(g, 5, 3, 10);
    
    
    
    int *prev = malloc(g->nvertices * sizeof(int));
    int *d = malloc(g->nvertices * sizeof(int));
    
    struct g_path *path;
    
    for (int i = 2; i <= g->nvertices; i++) {
	printf("Min path from 1 to %d\n", i);
	path = Serch_Shortest_Path(g, 1, i);
	printf("partlen: %d\n", path->pathlen);
	printf("path ");
	for (int j = 0; j <= path->edge; j++) {
	    printf("%d ", path->path[j]);
	}
	printf("\n\n");
    }
    
    return 0;
}
