uses crt;
var     NT:array[0..1001]of longint;
        P:array[0..1000001]of boolean;
        n,m:longint;
Procedure Load;
          var   f:text;
          begin
          assign(f,'DIVISORS.INP');reset(f);
          read(f,n); close(f);
          FillChar(P, SizeOf(p), True);
          end;
Procedure _Out(k:int64);
          var   f:text;
          begin
          assign(f,'DIVISORS.OUT');rewrite(f);
          if k<2 then write(f,99999) else
          if (k>9999) then write(f,k mod 100000) else write(f,k);
          close(f); Halt;
          end;
Procedure SangNT;
          var   i,j:longint;
          begin
          j:=0;
          for i:=2 to trunc(sqrt(n)) do
                if P[i] then
                        begin
                        j:=i*i;
                        while j<=n do
                                begin
                                p[j]:=False;
                                j:=j+i;
                                end;
                        end;
          m:=0;
          for i:=2 to n do if p[i] then
                begin
                inc(m);nt[m]:=i;
                end;
          end;
Function  Demu(x:longint):longint;
          var   y,d:longint;
          begin
          y:=x; d:=0;
          while y<=n do
                begin
                d:=d+(n div y);
                y:=x*y;
                end;
          exit(d);
          end;
Procedure Pr;
          var   res:int64;
                i,y:longint;
          begin
          if n<2 then _Out(n);
          res:=1;
          for i:=1 to m do
                begin
                y:=demu(nt[i]);
                res:=res*(y+1);
                end;
          _Out(res-1);
          end;
begin
Load;
SangNT;
Pr;
end.