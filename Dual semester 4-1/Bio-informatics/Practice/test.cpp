//Dna Count

/* #include <bits/stdc++.h>
using namespace std;

int main(void) {

    string str;
    cin >> str;

    int len = str.size();
    int A = 0, C = 0, G = 0, T = 0;

    for(int i = 0; i<len; i++) {
        if(str[i] == 'A') A++;
        else if (str[i] == 'C') C++;
        else if (str[i] == 'G') G++;
        else if (str[i] == 'T') T++;
    }
    cout << "A = " <<A<< " " <<"C = "<<C<<" "<<"G = "<<G<<" "<<"T = "<<T ;
    return 0;
} */

// RNA Counting
/* #include <bits/stdc++.h>
using namespace std;
int main(void) {
    string str; 
    cin >> str;

    int len = str.size();
    int a = 0, c = 0, g = 0, u = 0;

    for (int i = 0; i<len; i++) {
        if (str[i] == 'A') a++;
        else if (str[i] == 'C') c++;
        else if (str[i] == 'G') g++;
        else if (str[i] == 'U') u++;
    }
    cout << "A: "<<a<<" " << "C: "<<c<<" "<<"G: "<<g<<" "<<"U: "<<u<<endl;

}
 */


//DNA Complementary
/* #include <bits/stdc++.h>
using namespace std;

void printStr(string str) {
    int len = str.size();

    for(int i = 0; i<len; i++) {
        cout <<  str[i];
    }
    cout << endl;
}
void dnaComplementary(string str) {
    int len = str.size();
    for(int i = 0; i<len; i++) {
        if (str[i] == 'A') str[i] = 'T';
        else if (str[i] == 'T') str[i] = 'A';
        else if (str[i] == 'C') str[i] = 'G';
        else if (str[i] == 'G') str[i] = 'C';
    }
    printStr(str);
}

int main() {

    string str;
    cin >> str;
    dnaComplementary(str);
} */

//RNA Complementary 
/* #include <bits/stdc++.h>
using namespace std;
void printStr(string str){
    int len = str.size();

    cout << str << endl;
}
void rnaComplementary(string str) {
    int len = str.size();
    for(int i = 0; i<len; i++) {
        if (str[i] == 'A') str[i] = 'U';
        else if (str[i] == 'U') str[i] = 'A';
        else if (str[i] == 'C') str[i] = 'G';
        else if (str[i] == 'G') str[i] = 'C';
    }
    printStr(str);
}


int main(void) {

    string str;
    cin >> str;
    rnaComplementary(str);
    return 0;
}
 */


//DNA Reversal 
/* #include <bits/stdc++.h>
using namespace std;

void dnaReverse(string str) {
    int len = str.size();

    for(int i =len; i>=0k i--) {
        if(str[i] == 'A') str[i] = 'T';
        else if (str[i] == 'T') str[i] ='A';
        else if (str[i] == 'C') str[i] == 'G';
        else if (str[i] == 'G') str[i] == 'C';
    }
    for(int i = len; i>=0; i++) {
        cout << str[i];
    }
}

int main(void) {
    string str;
    cin >> str;
    
} */

// RNA Reverse 
/* #include <bits/stdc++.h>
using namespace std;

void rnaReverse(string str) {
    int len = str.size();
    
    for (int i = len; i>=0; i--) {
        if (str[i] == 'A') str[i] = 'U';
        else if (str[i] == 'U') str[i] = 'A';
        else if (str[i] == 'C') str[i] = 'G';
        else if (str[i] == 'G') str[i] = 'C';
    }
    for(int i = len; i>=0; i--) {
        cout << str[i];
    }
}

int main(void) {
    string str;
    cin >> str;

    rnaReverse(str);
    return 0;
} */

//Smit Waterman Algorithm
/* #include <bits/stdc++.h>
using namespace std;

void smitWatermanAlgorithm(string ls, string rs) {
    int row, col;
    row = ls.size()+1;
    col = rs.size()+1;

    int data[row][col];
    
    //initialization with zero 
    for(int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            data[i][j] = 0;
        }
    }
    
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

    smitWatermanAlgorithm(ls,rs);
    return 0;
} */


//Needleman Algorithm
#include <bits/stdc++.h>
using namespace std;

void needlemanAlgo(string ls, string rs) {
    int row, col;
    row = ls.size()+1;
    col = rs.size()+1;

    int data[row][col];

    for(int i = 0; i<row; i++)
        for (int j = 0; j<col; j++)
            data[i][j] = 0;
    
    for (int i = 0; i<1; i++) 
        for (int j = 1; j<col; j++)
            data[i][j] = -j*2;
        
    
    for (int i = 0; i<row; i++) 
        for (int j = 0; j<1; j++)
            data[i][j] = -i*2;


    for (int i = 0; i<row; i++) 
        for (int j = 0; j<col; j++)
            cout << data[i][j];

        cout << endl;
    
    int match = 1 ,misMatch = -1,gap = -2;
    int lef_adj = 0, up_adj = 0, dia_adj = 0;


    for (int i = 1; i<row; i++) {
        for(int j = 1; j<row; j++) {

            lef_adj = data[i-1][j] + gap;
            up_adj = data[i][j-1] + gap;

            if (ls[i-1] == rs[j-1])
                dia_adj = data[i-1][j-1] + match;
            else 
                dia_adj = data[i-1][j-1] + misMatch;
            
            data[i][j] = max(lef_adj, up_adj);
            data[i][j] = max(data[i][j], dia_adj);
        }
    }
    cout << endl;

    for (int i =0; i<row; i++) 
        for (int j =  0; j<col; j++) 
            cout << data[i][j] << " ";
        
        cout << endl;
    
}

int main(void) {
    string ls, rs;
    cin >> ls >> rs;

    needlemanAlgo(ls,rs);
    
    return 0;
}
