#include <bits/stdc++.h>
#define oo 1000000005
using namespace std;

const int N = 100005;

int n, a[N], res = -oo;
map < int, int> b;

int Check( int x)
{
    if (x < 2) return 0;
    for(int i = 2; i < sqrt(x); i ++)
        if (x % i == 0) return 0;
    return 1;
}

int main()
{
    ios_base::sync_with_stdio(0);

    freopen("primemax.inp","r",stdin);
    freopen("primemax.out","w",stdout);

    cin >> n;
    for(int i = 1; i <= n; i ++)
        cin >> a[i], b[a[i]] ++;

    for(int i = 1; i <= n; i ++)
        if (Check(a[i])) res = max( res, a[i]);

    if (res == -oo) cout <<"0\n";
    else cout << res << endl;
    res = -oo;
    for(int i = 1; i <= n; i ++)
        if (b[a[i]] > b[res]) res = a[i];
    cout << res;
    return 0;
}
