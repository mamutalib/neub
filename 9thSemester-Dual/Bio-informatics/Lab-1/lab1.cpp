// DNA count
/* #include <bits/stdc++.h>
using namespace std;

int main(void) {
    string str;
    cin >> str;

    int len = str.size();
    int a = 0, c = 0, g = 0, t = 0;
    for(int i = 0; i<len; i++) {
        if(str[i] == 'A') a++;
        else if (str[i] == 'C') c++;
        else if (str[i] == 'G') g++;
        else if (str[i] == 'T') t++;
    }
    cout << "A: " << a << " C: " << c << " G: " << g << " T: " << t << endl;
    return 0;
} */

// DNA Complementary
// A=T, T=A, C = G, G=C
/* #include <bits/stdc++.h>
using namespace std;

int main() {
    string str;
    cin >> str;

    int len = str.size();
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
        else if(str[i] == 'G'){
            str[i] = 'C';
        }
    }
    for(int i =0; i<len; i++) {
        cout << str[i];
    }
} */

//RNA complemetary
/* #include <bits/stdc++.h>
using namespace std;

int main() {
    string str;
    cin >> str;

    int len = str.size();

    for (int i = 0; i<len; i++) {
        if(str[i] == 'A'){
            str[i] = 'U';
        }
        else if(str[i] == 'U'){
            str[i] = 'A';
        }
        else if(str[i] == 'C'){
            str[i] = 'G';
        }
        else if(str[i] == 'G'){
            str[i] = 'C';
        }
    }
    for(int i =0; i<len; i++) {
        cout << str[i];
    }
    return 0;

} */

// DNA Reversal 
/* #include <bits/stdc++.h>
using namespace std;

int main() {
    string str;
    cin >> str;

    int len = str.size();

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
        else if(str[i] == 'G'){
            str[i] = 'C';
        }
    }
    for(int i = len; i>=0; i--) {
        cout << str[i];
    }
    return 0;

} */

//DNA Transcription
/* #include <bits/stdc++.h>

using namespace std;

int main() {
    string str;
    cin >> str;

    int len = str.size();

    for (int i =0; i<len; i++) {
        if( str[i] == 'T') str[i] = 'U';
    }
    for( int i = 0; i<len; i++) {
        cout << str[i];
    }
    return 0;

}
 */
//RNA Codon
/* #include <bits/stdc++.h>
using namespace std;

string findAminoAcid(string codon) {
    if(codon == "UUU" || codon == "UUC") return "phe";
    else if(codon == "UUA" || codon == "UUG") return "Leu";
}

int main() {
    string rna, codon = "";
    cin >> rna;
    int len  = rna.length();

    for(int i =0; i<len; i+=3){
        codon = rna.substr(i,3);
        cout << codon << " --> " << findAminoAcid(codon) << "\n";
    }
} */


//SmmitWater Man Alogorithm
/* #include <bits/stdc++.h>
using namespace std;

int main() {
    string ls="AGCT", rs="ATGCT";
    //cin >> ls >> rs;

    int row, col;
    row = ls.length()+1;
    col = rs.length()+1;

    int data[row][col];

    for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            data[i][j] = 0;
        }
    }
    int match = 1 ,misMatch = -1,gap = -2;
    int lef_adj = 0, up_adj = 0, dia_adj = 0;

    for (int i = 1; i<row; i++) {
        for (int j = 1; j<col; j++) {
            lef_adj = data[i-1][j] + gap;
            if(lef_adj < 0) {
                lef_adj =0;
            }

            up_adj = data[i][j-1] + gap;
            if (up_adj < 0) {
                up_adj = 0;
            }

            if(ls[i-1] == rs[j-1]) {
                dia_adj = data[i-1][j-1]+match;
            }
            else {
                dia_adj = data[i-1][j-1]+misMatch;
            }

            data[i][j] = max(lef_adj, up_adj);
            data[i][j] = max(data[i][j], dia_adj);
        }
    }

     for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            cout << data[i][j] << " ";
        }

        cout << "\n";
    }
    return 0;
} */



