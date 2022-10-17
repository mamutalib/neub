#include <bits/stdc++.h>
using namespace std;

int main() {

    string str;
    cin >> str;

    int len = str.length();
    int A=0, C=0, G=0, T=0;
    for (int i = 0; i<len; i++) {
        if(str[i] == 'A') A++;
        if(str[i] == 'C') C++;
        if(str[i] == 'G') G++;
        if(str[i] == 'T') T++;
    }
    cout << A << " " << C << " " << G << " "<< T <<  endl;
}