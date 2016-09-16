#ifndef RBTREE_H
#define RBTREE_H

#include <stdlib.h>
#include <string.h>

#define COLOR_RED 0
#define COLOR_BLACK 1

struct rbtree {
    int key;        /* Ключ */
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


struct rbtree *rbtree_lookup(struct rbtree *tree, int key);
struct rbtree *rbtree_min(struct rbtree *tree);
struct rbtree *rbtree_max(struct rbtree *tree);

#endif
