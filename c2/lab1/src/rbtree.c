#include "rbtree.h"

struct rbtree EmptyNode = {0, 0, COLOR_BLACK, NULL, NULL, NULL};
struct rbtree *NullNode = &EmptyNode;

struct rbtree *rbtree_create(struct rbtree *parent, int key, char *value)
{
    struct rbtree *node;

    node = malloc(sizeof(*node));
    if (node != NULL) {
        node->key = key;
        node->value = value;

        node->color = COLOR_RED; /* красный */
        node->parent = parent;
        node->left = NullNode;
        node->right = NullNode;
    }
    else
      return NULL;
    return node;
}

struct rbtree *rbtree_add(struct rbtree *root, int key, char *value)
{
    struct rbtree *node, *parent =NullNode ;

    /* Отыскиваем листовой узел */
    for (node = root; node != NULL && node != NULL;) {
      parent = node;
      if (key < parent->key)
          node = parent->left;
      else if (key > parent->key)
          node = parent->right;
      else
          return root;
    }

    /* Создаем элемент и связываем с узлом */
    node = rbtree_create(parent, key, value);
    if (parent != NullNode) {
	    if (key < parent->key) {
	        parent->left = node;
	    }
      else {
	        parent->right = node;
	    }
    }
    else {
	    root = node;
    }
    rbtree_fixup_add(root, node);
    return root;
}

struct rbtree *rbtree_fixup_add(struct rbtree *root, struct rbtree *node) {
    struct rbtree *uncle;

    /* Current node is RED */
    while (node != root &&
           node->parent->color == COLOR_RED)
    {
      if (node->parent ==
          node->parent->parent->left)
      {
          /* Node in left tree of grandfather */
          uncle = node->parent->parent->right;
          if (uncle->color == COLOR_RED) {
            /* Case 1 - uncle is RED */
            node->parent->color = COLOR_BLACK;
            uncle->color = COLOR_BLACK;
            node->parent->parent->color = COLOR_RED;
            node = node->parent->parent;
          }
          else {
            /* Cases 2 & 3 - uncle is BLACK */
            if (node == node->parent->right) {
            /* Reduce case 2 to case 3 */
            node = node->parent;
            root = rbtree_left_rotate(root, node);
            }
            /* Case 3 */
            node->parent->color = COLOR_BLACK;
            node->parent->parent->color = COLOR_RED;
            root = rbtree_right_rotate(root,
            node->parent->parent);
          }
      }
      else {
        /*
        * Node in right tree of grandfather
        *
        * Cases 4, 5, 6 - node in right tree
        * of grandfather
        */
        uncle = node->parent->parent->left;
        if (uncle->color == COLOR_RED) {
          /* Uncle is RED – case 4 */
          node->parent->color = COLOR_BLACK;
          uncle->color = COLOR_BLACK;
          node->parent->parent->color = COLOR_RED;
          node = node->parent->parent;
        }
        else {
          /* Uncle is BLACK */
          if (node == node->parent->left) {
            node = node->parent;
            root = rbtree_right_rotate(root, node);
          }
          node->parent->color = COLOR_BLACK;
          node->parent->parent->color = COLOR_RED;
          root = rbtree_left_rotate(root, node->parent->parent);
        }
      }
    }
    root->color = COLOR_BLACK;
    return root;
}

struct rbtree *rbtree_left_rotate(struct rbtree *root, struct rbtree *node)
{
    struct rbtree *right = node->right;
    /* Create node->right link */
    node->right = right->left;
    if (right->left != NullNode)
        right->left->parent = node;
    /* Create right->parent link */
    if (right != NullNode)
        right->parent = node->parent;
    if (node->parent != NullNode) {
        if (node == node->parent->left)
            node->parent->left = right;
        else
            node->parent->right = right;
    }
    else {
        root = right;
    }
    right->left = node;
    if (node != NullNode)
        node->parent = right;
    return root;
}

struct rbtree *rbtree_right_rotate(struct rbtree *root, struct rbtree *node)
{
    struct rbtree *left = node->left;
    /* Create node->left link */
    node->left = left->right;
    if (left->right != NullNode)
        left->right->parent = node;
    /* Create left->parent link */
    if (left != NullNode)
        left->parent = node->parent;
    if (node->parent != NullNode) {
        if (node == node->parent->right)
            node->parent->right = left;
        else
            node->parent->left = left;
    }
    else {
        root = left;
    }
    left->right = node;
    if (node != NullNode)
        node->parent = left;
    return root;
}



struct rbtree *rbtree_lookup(struct rbtree *tree, int key)
{
    while (tree != NULL) {
        if (key == tree->key) {
            return tree;
        } else if (key < tree->key) {
            tree = tree->left;
        } else {
            tree = tree->right;
        }
    }
    return tree;
}

struct rbtree *rbtree_min(struct rbtree *tree)
{
    if (tree == NULL)
        return NULL;

    while (tree->left != NULL)
        tree = tree->left;
    return tree;
}

struct rbtree *rbtree_max(struct rbtree *tree)
{
    if (tree == NULL)
        return NULL;

    while (tree->right != NULL)
        tree = tree->right;
    return tree;
}
