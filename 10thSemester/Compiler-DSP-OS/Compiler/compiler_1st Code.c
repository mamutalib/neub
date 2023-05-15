#include<bits/stdc++.h>
using namespace std;
int main(){

    string str;
    int length;
    cin >> str;

    length = str.size();

    for(int i=0;i<length;i++){
        if ((str[i] - '0') >= 0 and (str[i] - '0')<=9){
            cout << "Integer";

        }else{
            cout << "operand";
        }
    }
