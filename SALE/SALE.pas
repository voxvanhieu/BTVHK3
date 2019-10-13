uses crt;
var     w:array[0..41]of integer;
        T:array[0..5001]of integer;
        c,n:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'SALE.INP');reset(f);
          readln(f,c,n);
          for i:=1 to n do readln(f,w[i]);
          close(f);
          end;
Procedure _Out(k:integer);
          var   f:text;
          begin
          assign(f,'SALE.OUT');rewrite(f);
          write(f,k); close(f);
          end;
Procedure Pr;
          var   i,j:integer;
          begin
          FillChar(T, SizeOf(T), 0);
          T[0]:=1;
          for i:=1 to n do
                for j:=c downto n do
                        if (j-w[i]>=0)and(T[j-w[i]]=1) then T[j]:=1;
          i:=c+1;
          repeat
                dec(i);
          until T[i]=1;
          _Out(i);
          end;
begin
Load;
Pr;
end.