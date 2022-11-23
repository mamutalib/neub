
## Bio Informatics Lecture 
<!-- - [Lecture-1](./BIO-Info-Lecture-1.pdf)
- [Lecture-2](./BiO-Lecture-2.pdf)
- [Lecture-3](./BiO-Lecture-3.pdf)
- [Lecture-4](./Bio-Lecture-4.pdf)
- [Lecture-5](./Bio-Lecture-5.pdf)
- [Lecture-6](./Lecture-6.pdf) -->
- [Lecture-1-6](./bio_merged.pdf)
- [Lecture After Mid](./Bio%20After%20Mid.pdf) 

## Exam's Date
- <del><b>Tutorial-1:</b> 08-09-22</del>
- <del>Lab Exam:</b>. 23-10-2022 (Rescheduled)</del><b>

## Class Schedule

* Sunday - 8.30-11.25 #309 (lab) 
* Tuesday - 10.00 #214
* Thursday - 10.00 #214


## Tutorial Question
#### Set-A
> <img src="../Questions/TT1-Set-A.jpg" alt="SET-A" title="image Title" />
Question 1 ans: 

    a)False
    b)True
    c)True
    d)True
    e)false

 <br>

#### Set-B
> <img src="../Questions/TT1-SET-B.jpg" alt="Set-B" title="image Title" />
Question 1 ans

    a)True
    b)true
    c)false
    d)True
    e)false

## Bio Informatics Lab
- [DNA Counting](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#dna-counting)
- [DNA Complementary](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#dna-complementary)
- [RNA Complementary](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#rna-complementary)
- [DNA Reversal](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#dna-reversal)
- [DNA Transcription](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#dna-transcription)
- [Smith Waterman Algorithm](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#dna-transcription)
- [Needleman Algorithm](https://mamutalib.github.io/neub/Dual%20semester%204-1/Bio-informatics/Lecture/#needleman-algorithm)
- [Edit Distance](https://mamutalib.github.io/neub/9thSemester-Dual/Bio-informatics/Lecture/#edit-distance)

### DNA Counting
```py
#include <bits/stdc++.h>
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
}
// Sample input: ACGTATTC
//        Ouput: A: 2 C: 2 G: 1 T: 3
```
### DNA complementary
```java
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
        else if(str[i] == 'G'){
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
ACGTATTC
TGCATAAG
*/
```
### RNA Complementary 
```c++
#include <bits/stdc++.h>
using namespace std;

void rnaComplementary(string str) {
    int len = str.length();
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
}

int main() {
    string str;
    cin >> str;
    rnaComplementary(str);

}

/*
Sample input:AACGUAGGCUC
    output  :UUGCAUCCGAG
*/
```
### DNA Reversal 

```php
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
        else if(str[i] == 'G'){
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

Sample input  : AACGTAGGCTC
        output: GAGCCTACGTT
*/

```
### DNA Transcription
```c
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
    output  : AACGUAGGCUC
*/


```

### Smith WaterMan Algorithm
```py
#include <bits/stdc++.h>
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
}

```

## Needleman Algorithm

```c++
#include <bits/stdc++.h>
using namespace std;

int main() {
    string ls="AGCT", rs="ATGCT";

    int row, col;
    row = ls.length()+1;
    col = rs.length()+1;

    int data[row][col];

    for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            data[i][j] = 0;
        }
    }

    for (int i = 0; i<1; i++) {
        for (int j = 1; j<col; j++) {
            data[i][j] = -j*2;
        }
    }
    for (int i = 0; i<row; i++) {
        for (int j = 0; j<1; j++) {
            data[i][j] = -i*2;
        }
    }


     for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            cout << data[i][j] << " " ;
        }
        cout << endl;
    }


    int match = 1 ,misMatch = -1,gap = -2, lef_adj = 0, up_adj = 0, dia_adj = 0;

    for (int i = 1; i<row; i++) {
        for (int j = 1; j<col; j++) {

            lef_adj = data[i-1][j] + gap;

            up_adj = data[i][j-1] + gap;

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


    cout << endl;

     for (int i = 0; i<row; i++) {
        for (int j = 0; j<col; j++) {
            cout << data[i][j] << " ";
        }

        cout << "\n";
    }


    return 0;
}

```
## Edit Distance
```c
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
```
