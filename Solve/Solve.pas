uses crt;
Const   InpFile='Test\Test13\Solve.inp';
Const   OutFile='Test\Test13\Solve2.out';
var     n:int64;
Procedure Load;
          var   f:text;
          begin
          assign(f,InpFile);reset(f);
          read(f,n); close(f);
          end;
Procedure _Write(K:longint);
          var   f:text;
          begin
          assign(f,OutFile);rewrite(f);
          if (k<=n) then write(k) else write(-1);
          Close(f);
          end;
Function  S(k:int64):int64;
          var   sum:int64;
          begin
          Sum:=0;
          {for i:=1 to length(k) do sum:=sum+ord(k[i])-48;}
          while k <> 0 do
                begin
                sum:=sum+(k mod 10);
                k:=k div 10;
                end;
          exit(sum);
          end;
Function  Calc(x:int64):boolean;
          begin
          Exit(sqr(x)+s(x)*x = N);
          end;
Procedure Pr;
          var   i:int64;
          begin
          i:=1;
          while (Not Calc(i)) and (i<=n) do inc(i);
          _Write(i);readln
          end;
begin
clrscr;
Load;
Pr;
end.
