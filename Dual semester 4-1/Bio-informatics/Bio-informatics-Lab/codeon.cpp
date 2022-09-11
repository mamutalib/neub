// “Ayo, these ain’t lookin like shooting stars”
// 
//                                    -Dinosaurs


#include <bits/stdc++.h>
using namespace std;

typedef long long lg;

//const lg N = 10000000; // BIG LOOOOOOOOOL 7
// lg ar[N];

int main()
{
    bool flag=true;

    lg brk, n,j, t, k,h,m,ah,am,a,b,c;
    string s;
    cin>>s;
    lg len =s.size();
    for (size_t i = 0; i < len,flag; i+=3)
    {
        if(s[i]=='A' and s[i+1]=='U' and s[i+2]=='G')
            cout<<"Methionine"<<endl;
        else if(s[i]=='U' and s[i+1]=='U' and s[i+2]=='U' or s[i+2]=='C')
            cout<<"Phenylalanine"<<endl;
        else if(s[i]=='U' and s[i+1]=='U' and s[i+2]=='A' or s[i+2]=='G')
            cout<<"Leucine"<<endl;
        else if(s[i]=='U' and s[i+1]=='A' and s[i+2]=='A' or s[i+2]=='G')
            {cout<<"STOP"<<endl;
                flag=false;
            }
        
    }
    cout<<endl;
    
    
        
        
       

    return 0;
}
