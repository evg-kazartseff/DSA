#include "rbtree.h"
#include <stdio.h>

int main()
{
    struct rbtree *tree = NULL;
    tree = rbtree_add(tree, 10, "10");
    tree_print(tree);
    tree = rbtree_add(tree, 5, "5");
    tree_print(tree);
    tree = rbtree_add(tree, 3, "3");
    tree_print(tree);
    tree = rbtree_add(tree, 11, "11");
    tree_print(tree);
    tree = rbtree_add(tree, 12, "12");
    tree_print(tree);
    tree = rbtree_add(tree, 6, "6");
    tree_print(tree);
    tree = rbtree_add(tree, 8, "8");
    tree_print(tree);
    tree = rbtree_add(tree, 9, "9");
    tree_print(tree);

    tree = rbtree_delete(tree, 10);
    tree_print(tree);
    tree = rbtree_delete(tree, 5);
    tree_print(tree);
    tree = rbtree_delete(tree, 6);
    tree_print(tree);
    
    rbtree_free(tree);
    return 0;
}
