#include <stdio.h>
#include "graph.h"
#include "binary_heap.h"

int main ()
{
    struct graph *g;
    g = graph_create(20);
    graph_set_edge(g, 1, 8, 80);
    graph_set_edge(g, 1, 10, 60);
    graph_set_edge(g, 2, 13, 45);
    graph_set_edge(g, 2, 6, 50);
    graph_set_edge(g, 3, 10, 38);
    graph_set_edge(g, 3, 18, 26);
    graph_set_edge(g, 3, 9, 60);
    graph_set_edge(g, 4, 9, 35);
    graph_set_edge(g, 4, 11, 10);
    graph_set_edge(g, 4, 20, 20);
    graph_set_edge(g, 5, 9, 40);
    graph_set_edge(g, 5, 8, 10);
    graph_set_edge(g, 5, 17, 15);
    graph_set_edge(g, 6, 13, 35);
    graph_set_edge(g, 6, 12, 80);
    graph_set_edge(g, 6, 14, 20);
    graph_set_edge(g, 6, 11, 40);
    graph_set_edge(g, 6, 17, 10);
    graph_set_edge(g, 7, 10, 80);
    graph_set_edge(g, 8, 17, 5);
    graph_set_edge(g, 10, 18, 11);
    graph_set_edge(g, 11, 15, 25);
    graph_set_edge(g, 14, 15, 30);
    graph_set_edge(g, 14, 16, 10);
    graph_set_edge(g, 15, 20, 20);
    graph_set_edge(g, 17, 19, 70);
    
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
