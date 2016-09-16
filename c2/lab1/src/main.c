#include "rbtree.h"

int main()
{
    struct rbtree *tree = NULL;
    tree = rbtree_add(tree, 10, "10");
    tree = rbtree_add(tree, 5, "5");
    tree = rbtree_add(tree, 3, "3");
    return 0;
}
