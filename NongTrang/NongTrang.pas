uses crt;
Const InpFile = 'Test\Test00\NT.inp';
Const OutFile = 'Test\Test00\NT2.out';

var     a:array[0..1001, 0..1001] of integer;
        b:array[0..1001, 0..1001] of boolean;
        x : array[1..8] of integer = [-1,-1,-1, 0,0, 1, 1,1];
        y : array[1..8] of integer = [-1, 0, 1,-1,1,-1, 0,1];
        m,n,dem:integer;
Procedure Load;
          var   f:text;
          begin
          assign(f,InpFile); reset(f);
          Readln(f,m,n);
          for i:=1 to m do
                begin
                for j:=1 to n do read(f,a[i][j]);
                readln(f);
                end;
          For i:=1 to m do
                for j:=1 to n do
                        b[i][j]:=false;
          dem:=0;
          end;
Procedure LoanDauVoLam(i,j:integer);
          var   k:integer;
          begin
          if (i>0) and (j>0) and (i<=m) and (j<=n) then
                begin
                b[i][j]:=True;
                for k:=1 to 8 do
                        if (a[x[k]][y[k]]=a[i][j])and(Not b[x[k]][y[k]]) then LoanDauVoLam(x[k],y[k]);
                end;
          end;
Function  _CheckMax(i,j:integer);
          var   k:integer;
          Begin
          for k:=1 to 8 do if a[i][j]<a[x[k]][y[k]] then exit(false);
          exit(true);
          end;
Procedure Pr;
          var   i,j:integer;
          begin
          for i:=1 to m do
                for j:=1 to n do
                        if _CheckMax(i,j) then
                                begin
                                LoanDauVoLam(i,j);
                                inc(dem);
                                end;
          end;
begin
Clrscr;
Load;
Pr;
write(dem);readln
end.
