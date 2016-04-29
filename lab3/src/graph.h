#ifndef GRAPH_H
#define GRAPH_H

struct graph {
    int nvertices; /* Число вершин */
    int **m; /* Матрица n x n */
    int *visited;
};

struct graph *graph_create(int nvertices);
void graph_clear(struct graph *g);

#endif
