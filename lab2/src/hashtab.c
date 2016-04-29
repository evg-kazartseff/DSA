#include "hashtab.h"

unsigned int hashtab_hash(char *key)
{
    unsigned int h = 0;
    char *p;
    for (p = key; *p != '\0'; p++) {
        h = h * HASHTAB_MUL + (unsigned int) *p;
    }
    return h % HASHTAB_SIZE;
}

unsigned int ELFHash(char *key)
{
    unsigned int h = 0, g;
    while (*key) {
        h = (h << 4) + *key++;
        g = h & 0xf0000000L;
        if (g)
            h ^= g >> 24;
        h &= ~g;
    }
    return h % HASHTAB_SIZE;
}

void hashtab_init(struct listnode **hashtab)
{
    int i;
    for (i = 0; i < HASHTAB_SIZE; i++) {
        hashtab[i] = NULL;
    }
}

void hashtab_add(struct listnode **hashtab, char *key, int value, int f_hash)
{
    struct listnode *node;
    int index;
    if (f_hash == 0) {
        index = hashtab_hash(key);
    } else {
        index = ELFHash(key);
    }
    // Вставка в начало списка
    node = malloc(sizeof(*node));
    if (node != NULL) {
        node->key = key;
        node->value = value;
        node->next = hashtab[index];
        hashtab[index] = node;
    }
}

struct listnode *hashtab_lookup(struct listnode **hashtab, char *key,
                                int f_hash)
{
    int index;
    struct listnode *node;

    if (f_hash == 0) {
        index = hashtab_hash(key);
    } else {
        index = ELFHash(key);
    }
    for (node = hashtab[index]; node != NULL; node = node->next) {
        if (strcmp(node->key, key) == 0)
            return node;
    }
    return NULL;
}

void hashtab_delete(struct listnode **hashtab, char *key, int f_hash)
{
    int index;
    struct listnode *p, *prev = NULL;
    if (f_hash == 0) {
        index = hashtab_hash(key);
    } else {
        index = ELFHash(key);
    }
    for (p = hashtab[index]; p != NULL; p = p->next) {
        if (strcmp(p->key, key) == 0) {
            if (prev == NULL)
                hashtab[index] = p->next;
            else
                prev->next = p->next;
            free(p);
            return;
        }
        prev = p;
    }
}
