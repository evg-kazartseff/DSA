#ifndef RBTREE_H
#define RBTREE_H

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#define COLOR_RED 0
#define COLOR_BLACK 1

/* ~~color printf~~ */
#define RESET   "\033[0m"
#define RED     "\033[1;31m"
#define BLUE "\033[34m"
/*  ~~~  */

struct rbtree {
    int key;            /* Ключ */
    char *value;		/* Данные */
    int color;			/* Цвет */

    struct rbtree *parent;
    struct rbtree *left;
    struct rbtree *right;
};

struct rbtree *rbtree_create(struct rbtree *parent, int key, char *value);
struct rbtree *rbtree_add(struct rbtree *tree, int key, char *value);
struct rbtree *rbtree_fixup_add(struct rbtree *root, struct rbtree *node);
struct rbtree *rbtree_left_rotate(struct rbtree *root, struct rbtree *node);
struct rbtree *rbtree_right_rotate(struct rbtree *root, struct rbtree *node);
struct rbtree *rbtree_delete(struct rbtree *root, int key);
struct rbtree *rbtree_fixup_delete(struct rbtree *root, struct rbtree *x);
struct rbtree *rbtree_transplant(struct rbtree *root, struct rbtree *u, struct rbtree *v);
struct rbtree *rbtree_lookup(struct rbtree *tree, int key);
struct rbtree *rbtree_min(struct rbtree *tree);
struct rbtree *rbtree_max(struct rbtree *tree);
void tree_print(struct rbtree *tree);
void tree_print_dfs(struct rbtree *tree, int indent, int width);
void rbtree_free(struct rbtree *tree);

#endif
