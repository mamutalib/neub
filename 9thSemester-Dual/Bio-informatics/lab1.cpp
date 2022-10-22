#include <bits/stdc++.h>
using namespace std;

void editDistance(string ls, string rs) {
    int row, col;
    row = ls.size()+1;
    col = rs.size()+1;

    int data[row][col];
    
    //initialization with zero 
    for (int i = 0; i<1; i++) {
        for (int j = 0; j<col; j++){
            data[i][j] = j;
        }
    }
    for (int i = 0; i<row; i++) {
        for (int j = 0; j<1; j++){
            data[i][j] = i;
        }
    }
    // for (int i = 0; i<row; i++) {
    //     for (int j = 0; j<col; j++) {
    //         cout << data[i][j] << " ";
    //     }
    //     cout << endl;
    // }

    int match = 1, misMatch= -1, gap = -2;
    int left_adj = 0, up_adj = 0, dia_adj = 0;

    for (int i =1; i<row; i++) {
        for (int j = 1; j<col; j++) {
            left_adj = data[i-1][j] + gap;
            if(left_adj < 0) {
                left_adj = 0;
            }
            up_adj = data[i][j-1] + gap;
            if(up_adj < 0) {
                up_adj = 0;
            }

            if (ls[i-1] == rs[j-1]) {
                dia_adj = data[i-1][j-1] + match;
            } 
            else {
                dia_adj = data[i-1][j-1] + misMatch;
            }

            data[i][j] = max(left_adj, up_adj);
            data[i][j] = max(data[i][j], dia_adj);
            
        }
    }

    for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            cout << data[i][j] << " ";
        }
        cout << endl;
    }
}

int main(void) {
    string ls,rs;
    cin >> ls >> rs;

    editDistance(ls,rs);
    return 0;
}