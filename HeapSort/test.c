#include <stdio.h>
 
int max (int *a, int n, int i, int j, int k) {
    int m = i;
    if (j < n && a[j] > a[m]) {
        m = j;
    }
    if (k < n && a[k] > a[m]) {
        m = k;
    }
    return m;
}
 
void downheap (int *a, int n, int i) {
    while (1) {
        int j = max(a, n, i, 2 * i + 1, 2 * i + 2);
        if (j == i) {
            break;
        }
        int t = a[i];
        a[i] = a[j];
        a[j] = t;
        i = j;
    }
}
 
void heapsort (int *a, int n) {
    int i;
    for (i = (n - 2) / 2; i >= 0; i--) {
        downheap(a, n, i);
    }
    for (i = 0; i < n; i++) {
        int t = a[n - i - 1];
        a[n - i - 1] = a[0];
        a[0] = t;
        downheap(a, n - i - 1, 0);
    }
}
 
int main () {
    int array[] = {4, 65, 2, -31, 0, 99, 2, 83, 782, 1};
    int size_array = sizeof array / sizeof array[0];
    int i;
    for (i = 0; i < size_array; i++)
        printf("%d%s", array[i], i == size_array - 1 ? "\n" : " ");
    heapsort(array, size_array);
    for (i = 0; i < size_array; i++)
        printf("%d%s", array[i], i == size_array - 1 ? "\n" : " ");
    return 0;
}