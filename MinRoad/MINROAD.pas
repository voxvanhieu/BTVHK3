uses crt;
var     d:array[0..300001]of longint;
        c:array[0..300001]of byte;
        n,a,b:longint;
Procedure Load;
          var   f:Text;
                i:longint;
          begin
          assign(f,'MINROAD.INP');reset(f);
          readln(f,n,a,b);
          for i:=1 to n do
                readln(f,d[i],c[i]);
          close(f);
          end;
Procedure QuickSort(L,R:longint);
          var
          begin

          end;
begin
Load;
Pr;
end.