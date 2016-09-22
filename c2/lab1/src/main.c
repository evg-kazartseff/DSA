#include "rbtree.h"
#include <stdio.h>

int main()
{
    struct rbtree *tree = NULL;
    tree = rbtree_add(tree, 3, "3");
    tree = rbtree_add(tree, 10, "10");
    tree = rbtree_add(tree, 12, "12");
    tree = rbtree_add(tree, 5, "5");
    tree = rbtree_add(tree, 11, "11");
    tree = rbtree_add(tree, 6, "6");
    tree = rbtree_add(tree, 8, "8");
    tree = rbtree_add(tree, 9, "9");

    tree = rbtree_lookup(tree, 6);
    if (tree != NULL)
        printf("data: %s\n", tree->value);
    return 0;
}
