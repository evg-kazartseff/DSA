#include <stdlib.h>
#include "bstree.h"
#include "hashtab.h"
#include <stdio.h>
#include <time.h>
#include "fanc.h"

#define dictionary 570000

int main(int argc, char **argv)
{
	
	if (argc < 2) {
		printf("Missing size!\n");
		return EXIT_FAILURE;
	}
	int size = atoi(argv[1]);
	
	FILE *input = fopen("../dictionary/input.dat", "r");
	if (input == NULL)
    {
        printf("Can't open input file!\n");
        return EXIT_FAILURE;
    }
	
	
	int i = 0;
	
	int str = dictionary;
	int str_size = 33;
	char **buf = (char **)malloc(str * sizeof(char *));
	if (buf != NULL) {
		for(i = 0; i < str; i++) {
			buf[i] = (char *)malloc(str_size * sizeof(char));
		}
	}
	else {
		printf("Can't create buffer!\n");
	}
	
	for (i = 0; i < dictionary; i++) {
		fscanf(input, "%s\n",buf[i]);
		//printf ("buf(%d): %s\n", i+1, buf[i]);
	}
	
	srand(time(NULL));
	int rand_i = getrand(0,size);
    printf ("rand_word: %s idx: %d\n",buf[rand_i], rand_i+1);
    
    //построение дерева    
    struct bstree *tree ,*node;
	tree = bstree_create(buf[0],1);
	for (i = 2; i <= size; i++) {
		bstree_add(tree,buf[i-1],i);
	}
	//создание таблицы
	struct listnode *hash;
	hashtab_init(hashtab);
	for (i = 1; i <= size; i++) {
		hashtab_add(hashtab,buf[i-1],i);
	}

	//test 1 lookup--
	printf("lookup\n");
	double time = wtime();
	node = bstree_lookup(tree,buf[rand_i]);
	time = wtime() - time;
	FILE *tb1;
    tb1 = fopen("../test/bstree_lookup.dat", "a");
    fprintf(tb1, "%d %.8f\n", size, time);
	if (node != NULL) {
		printf ("BSTree: %s, %d %.8f\n",node->key,node->value, time);
	}
	
	time = wtime();
	hash = hashtab_lookup(hashtab,buf[rand_i]);
	time = wtime() - time;
	FILE *tb2;
    tb2 = fopen("../test/hashtab_lookup.dat", "a");
    fprintf(tb2, "%d %.8f\n", size, time);
	printf("HashTab: %s, %d %.8f\n",hash->key, hash->value, time);
	//--
	
	//test2 add--
	printf("add\n");
	time = wtime();
	bstree_add(tree,buf[size],size+1);
	time = wtime() - time;
	FILE *tb3;
    tb3 = fopen("../test/bstree_add.dat", "a");
    fprintf(tb3, "%d %.8f\n", size, time);
    printf ("BSTree: %s, %d %.8f\n",buf[size],size+1, time);
    
    time = wtime();
    hashtab_add(hashtab,buf[size],size+1);
    time = wtime() - time;
    FILE *tb4;
    tb4 = fopen("../test/hashtab_add.dat", "a");
    fprintf(tb4, "%d %.8f\n", size, time);
    printf("HashTab: %s, %d %.8f\n",buf[size], size+1, time);
	//--
	
	
	
	
	
	return 0;
}
