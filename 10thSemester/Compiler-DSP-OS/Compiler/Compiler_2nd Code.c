#include <bits/stdc++.h>
using namespace std;
int main()
{
    string s, b;
    getline(cin, s);
    for (auto x : s)
    {
        if (x == ' ')
        {
            continue;
        }
        else if (x >= '0' && x <= '9')
        {
            b.push_back(x);
        }
        else
        {
            if (b.size() != 0)
            {
                cout << "Integer " << b << endl;
                b.clear();
            }

            cout << "Operator " << x << endl;
        }
    }
    if (b.size() != 0)
    {
        cout << "Integer " << b << endl;
    }
}
