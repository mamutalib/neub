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
#include <bits/stdc++.h>
using namespace std;

int main(void) {
    
    return 0;
}