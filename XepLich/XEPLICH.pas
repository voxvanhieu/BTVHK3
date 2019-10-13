uses crt;
var     a:array[0..1001]of integer;
        n,l,c:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'XEPLICH.INP');reset(f);
          readln(f,n);
          readln(f,l,c);
          for i:=1 to n do read(f,a[i]);
          close(f);
          end;
Procedure Pr;
          var
          begin

          end;
begin
Load;
Pr;
end.