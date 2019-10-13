uses crt;
Const   InpFile = 'Test\Test01\Average.inp';
Const   OutFile = 'Test\Test01\Average2.out';
var     a:array[0..1001]of longint;
        b:array[0..100000001]of longint;
        n,n2:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,InpFile);reset(f);
          readln(f,n);
          for i:=1 to n do read(f,a[i]);
          close(f);
          end;
Procedure Pr;
          var   i,j,k,l,m,dem:longint;
          begin
          n2:=0;
          for i:=1 to n do
                for j:=i+1 to n do
                        for k:=j+1 to n do
                                if (i<>j) and (i<>k) and (j<>k) then
                                        begin
                                        inc(n2);
                                        b[n2]:=a[i] + a[j] + a[k];
                                        end;
          for i:=1 to n do
                for j:=1 to n2 do
                        if 3*a[i]=b[j] then
                                begin
                                inc(dem);break;
                                end;
          {for i:=1 to n do
                for j:=1 to n do
                        for k:=1 to n do
                                if (i<>j) and (i<>k) and (j<>k) then
                                        begin
                                        m:=a[i] + a[j] + a[k];
                                        for l:=1 to n do
                                                 if (3*a[l]=m) then inc(dem);
                                        end;}
          write(dem);readln
          end;
begin
clrscr;
Load;
Pr;
end.
