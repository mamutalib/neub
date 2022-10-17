#include <bits/stdc++.h>
using namespace std;



int qPart(int arr[], int p, int r) {
    int x = arr[r];
    int i = p-1;
    for (int j = p; j<r; j++) {
        if(arr[j]<=x) {
            i = i+1;
            swap(arr[i],arr[j]);
        }
    }
    swap(arr[i+1],arr[r]);
    return i+1;
}

void qSort(int arr[], int p, int r){
    if(p<r) {
        int q;
        q = qPart(arr,p,r);
        qSort(arr,p,q-1);
        qSort(arr,q+1,r);
    }
}

int main() {

    int n;
    printf("Enter number of items: ");
    scanf("%d",&n);
    int arr[n];
    for(int i = 0; i<n; i++) {
        arr[i] = rand()%100;
    }
    printf("Before sorting: ");
    for(int i =0; i<n; i++) {
        printf("%d ",arr[i]);
    }
    qSort(arr,0,n-1);
    printf("\nAfter sorting: ");
    for(int i =0; i<n; i++) {
        printf("%d ",arr[i]);
    }
}
