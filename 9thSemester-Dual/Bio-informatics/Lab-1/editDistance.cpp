#include <bits/stdc++.h>
using namespace std;

int main(void) {

    string str1,str2;
    int row,col;

    cin >> str1>> str2;

    row = str1.length()+1;
    col = str2.length()+1;
    int data[row][col];

    for(int i=0; i<row; i++){
        data[i][0] = i;
    }

    for( int j=0; j<col; j++){
        data[0][j] = j;
    }

   // int match,res;
    int up_adj, lft_adj, dig_adj;

    for( int i=1; i<row; i++)
    {
        for(int j=1; j<col; j++)
        {
            lft_adj = data[i-1][j] ;
            up_adj = data[i][j-1];
            dig_adj = data[i-1][j-1];

            if(str1[i-1] == str2[j-1])
            {
                data[i][j]= dig_adj;
            }
            else
            {
                data[i][j] = min(lft_adj+1 ,up_adj+1 );
                data[i][j] = min(data[i][j], dig_adj+1 );
            }
        }
    }

    for(int i = 0; i<row; i++) {
        for(int j = 0; j<col; j++) {
            cout << data[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}