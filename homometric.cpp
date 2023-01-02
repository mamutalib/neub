// “Ayo, these ain’t lookin like shooting stars”
// 
//                                    -Dinosaurs


#include <bits/stdc++.h>
using namespace std;

typedef long long lg;

const lg N = 9; // BIG LOOOOOOOOOL 7
//lg ar[N][N];


int main()
{
    
    bool flag=true;

    lg brk, n,j, t, k,h,i,m,ah,am,a,b,c,x,count;
    
        cin>>count;
        lg indata[count],indata2[count];
        lg ar[count][count];
        vector<lg>v,v2;
        for (i = 0; i < count; i++)
        {
            cin>>indata[i];
        }
        for (i = 0; i < count; i++)
        {
            cin>>indata2[i];
        }

        for ( i = 0; i < count; i++)
        {
            for ( j = 0; j < count; j++)
            {
                if(j>i)
                {
                    ar[i][j]=indata[j]-indata[i];
                    v.push_back(indata[j]-indata[i]);
                }
                else
                    ar[i][j]=-1;
            }
            
        }

        //for output full matrix
        cout<<"1st matrix :"<<endl;
        for ( i = 0; i < count; i++)
        {
            for ( j = 0; j < count; j++)
            {
                cout<<ar[i][j]<<" ";
            }
            cout<<endl;
        }
        
    lg sz=v.size();
    sort(v.begin(),v.end());
    
    cout<<endl;

    //for x2
    cout<<"2nd x2"<<endl;
    

        for ( i = 0; i < count; i++)
        {
            for ( j = 0; j < count; j++)
            {
                if(j>i)
                {
                    ar[i][j]=indata2[j]-indata2[i];
                    v2.push_back(indata2[j]-indata2[i]);
                }
                else
                    ar[i][j]=-1;
            }
            
        }
        cout<<"2nd matrix :"<<endl;
        for ( i = 0; i < count; i++)
        {
            for ( j = 0; j < count; j++)
            {
                cout<<ar[i][j]<<" ";
            }
            cout<<endl;
        }
    sz=v2.size();
    sort(v2.begin(),v2.end());
    cout<<endl;
    cout<<"X1: ";
    for ( i = 0; i < sz; i++)
    {
        cout<<v[i]<<" ";
    }
    cout<<endl;
    cout<<endl;
    cout<<"X2: ";
    for ( i = 0; i < sz; i++)
    {
        cout<<v2[i]<<" ";
    }
    cout<<endl;
    cout<<endl;
    flag=true;
    for ( i = 0; i < sz; i++)
    {
        if(v[i]!=v2[i])
            {
                cout<<"Its not homomatric!"<<endl;
                flag =false;
                break;
            }
    }
    if(flag)
        cout<<"Its  homomatric!"<<endl;
        
    
    return 0;
}