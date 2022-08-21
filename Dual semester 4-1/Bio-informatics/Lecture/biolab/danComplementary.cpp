#include <bits/stdc++.h>
using namespace std;

void dnaComplementary(string str) {
    int len = str.length();
    for (int i = 0; i<len; i++) {
        if(str[i] == 'A'){
            str[i] = 'T';
        }
        else if(str[i] == 'T'){
            str[i] = 'A';
        }
        else if(str[i] == 'C'){
            str[i] = 'G';
        }
        else if(str[i] == 'C'){
            str[i] = 'C';
        }
    }
    for(int i =0; i<len; i++) {
        cout << str[i];
    }
}

int main() {
    string str;
    cin >> str;
    dnaComplementary(str);

}


/*
Sample input-output:
AACCTAGCTC
TTGGATGGAG
*/
