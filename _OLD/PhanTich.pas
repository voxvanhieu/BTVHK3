uses crt;
var     n:longint;
Procedure Load;
          var   f:text;
          begin
          assign(f,'PhanTich.inp');reset(f);
          readln(f,n); Close(f);
          end;
Procedure Pr;
          var   i,j,k,dem:longint;
                f:text;
          begin
          dem:=0;
          for i:=1 to n do
                for j:=i+1 to n do
                        begin
                        k:=n-i-j;
                        if k>j then inc(dem);
                        end;
          assign(f,'PhanTich.out');rewrite(f);
          Writeln(f,dem); Close(f);
          end;
begin
Clrscr;
Load;
Pr;
end.
