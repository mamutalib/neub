#include <bits/stdc++.h>
using namespace std;

void transcriptDNA(string str) {
    int len = str.length();
    for (int i = 0; i<len; i++) {
                if(str[i] == 'T'){
            str[i] = 'U';
        }
    }
    for(int i =0; i<len; i++) {
        cout << str[i];
    }
}

int main() {
    string str;
    cin >> str;
    transcriptDNA(str);

}
/*

Sample input: AACGTAGGCTC
    output: AACGUAGGCUC
*/


