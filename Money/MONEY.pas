uses crt;
var     a,Fx,x:array[-10001..10001]of integer;
        n,m:longint;
Procedure Load;
          var   f:Text;
                i:longint;
          begin
          assign(f,'MONEY.INP');reset(f);
          readln(f,n,m);
          for i:=1 to n do
                read(f,a[i]);
          close(f);
          end;
Function  Min(a,b:longint):longint;
          begin
          if a>b then exit(b) else exit(a);
          end;
Procedure Tv_Out;
          var   f:text;
                i,j:longint;
          begin
          assign(f,'MONEY.OUT');rewrite(f);
          //writeln(f,C[m,n]);
          close(f);
          clrscr;
          for i:=1 to m do
                write(Fx[i]:6);writeln;
          for i:=1 to n do
                write(x[i]:6);
          readln;
          end;
Procedure Pr;
          var   i,j:longint;
          begin
          for i:=1 to m do Fx[i]:=Maxint;
          Fx[0]:=0;
          FillChar(X, SizeOf(X), 0);
          for i:=1 to m do
                for j:=n downto 1 do
                        if (i>=a[i]) and (Fx[i]>Fx[i-a[j]]+1) then
                                        begin
                                        Fx[i]:=Fx[i-a[j]]+1;
                                        x[i]:=j;
                                        end;
          end;
begin
Load;
Pr;
Tv_Out;
end.