uses crt;
var     a,b:array[0..1001]of integer;
        n:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'HOANVI.INP');reset(f);
          readln(f,n);
          for i:=1 to n do read(f,a[i]);
          close(f);
          end;
Procedure _Out;
          var   f:text;
                i:integer;
          begin
          assign(f,'HOANVI.OUT');rewrite(f);
          for i:=1 to n do write(f,b[i],' ');
          close(f);
          end;
Procedure Pr;
          var   i,j:integer;
          begin
          FillChar(b, SizeOf(b), 0);
          for i:=1 to n do
                for j:=1 to i do
                        if a[j]<a[i] then inc(b[i]);
          end;
begin
Load;
Pr;
_Out;
end.