#include <bits/stdc++.h>
using namespace std;
int adj[100][100];

int main()
{
    string s1,s2;
    //cin>>s1>>s2;
    //s1 = "AGTG";
    //s2 = "ATU";
    s1 ="ATCCGAT",  s2 = "TGCATAT";

    int i,j, len,len1;

    len = s1.length();
    len1 = s2.length();

    //cout<<len<<len1;

    for( i=0; i<=len; i++)
    {
        adj[i][0] = i;
    }
    for( j=0; j<=len1; j++)
    {
        adj[0][j] = j;
    }

   /*  for( i=0; i<=len; i++)
    {
        for( j=0; j<=len1; j++)
            cout<<adj[i][j];
        cout<<"\n";
    } */
    cout<<"\n";
    int match,res;
    int up_adj, lft_adj, dig_adj;

    for( i=1; i<=len; i++)
    {
        for(j=1; j<=len1; j++)
        {
            lft_adj = adj[i-1][j] ;
            up_adj = adj[i][j-1];
            dig_adj = adj[i-1][j-1];

            if(s1[i-1] == s2[j-1])
            {
                adj[i][j]= dig_adj;
            }
            else
            {
                res = min(lft_adj+1 ,up_adj+1 );
                adj[i][j] = min(res, dig_adj+1 );
            }
        }
    }

    for(i=0; i<=len; i++)
    {
        for( j=0; j<=len1; j++)
            cout<<adj[i][j]<<" ";
        cout<<"\n";
    }

    return 0;
}