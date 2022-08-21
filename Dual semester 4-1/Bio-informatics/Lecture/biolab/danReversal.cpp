#include <bits/stdc++.h>
using namespace std;

void dnaReversal(string str) {
    int len = str.length();
    for (int i = len; i>=0; i--){
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
    for(int i = len; i>=0; i--) {
        cout << str[i];
    }
}

int main() {
    string str;
    cin >> str;
    dnaReversal(str);

}
/*

Sample input: AACGTAGGCTC
    output: GAGCCTACGTT
*/


