#include <stdio.h>
#include "graph.h"
#include <binary_heap.h>

int main ()
{
    struct graph *g;
    g = graph_create(4);
    graph_set_edge(g, 1, 2, 5);
    graph_set_edge(g, 1, 3, 6);
    graph_set_edge(g, 2, 3, 3);
    graph_set_edge(g, 1, 4, 1);
    
    
    int *prev = malloc(g->nvertices * sizeof(int));
    int *d = malloc(g->nvertices * sizeof(int));
    
    ShortestPath_Dijekstra(g, 1, d, prev);
    
    
    return 0;
}
