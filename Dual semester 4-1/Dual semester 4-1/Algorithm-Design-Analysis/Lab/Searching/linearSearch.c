#include <stdio.h>
int main() {
    int n;
    scanf("%d", &n);
    
    int arr[n];

    for(int i = 0; i<n; i++) {
        arr[i] = rand()%100;
    }
    return 0;
}