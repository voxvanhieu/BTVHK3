#include <bits/stdc++.h>
#define MAXN 100005

typedef char NameFile[1000];

using namespace std;

NameFile input, output, answer;
ifstream fi, fo, fa;

int n, a, b;


int read()
{

}

int readInput()
{
  fi.open(input);
}

int readOutput()
{
  fo.open(output);
}

int readAnswer()
{
  fa.open(answer);
}

bool check()
{
    long long n;
    int ck = 2;
    string s1,s2;
    fo >> s1;
    fa >> s2;
    if (s1 != s2) ck --;
    fo >> a;
    fo >> b;
    return ck;
}
main()
{
  gets(input);
  gets(output);

  strcpy(answer, input);
  strcat(input,  "primemax.inp");
  strcat(output, "primemax.out");
  strcat(answer, "primemax.out");

  readInput();
  readOutput();
  readAnswer();
  read();

if (check() == 2) cout << "1.00";
else if (check() == 1) cout <<"0.50";
else cout <<"0.00";
  fi.close();
  fo.close();
  fa.close();
//  system("pause");
}

