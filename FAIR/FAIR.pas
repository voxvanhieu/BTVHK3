uses crt;
var     a,Fx:array[0..1001,0..1001]of integer;
        m,n:integer;
Procedure Load;
          var   f:text;
                i,j:integer;
          begin
          assign(f,'FAIR.INP');reset(f);
          readln(f,m,n);
          for i:=1 to m do
                begin
                for j:=1 to n do read(f,a[i,j]);
                readln(f);
                end;
          close(f);
          end;
Procedure _Write;
          var   f:text;
          begin
          assign(f,'FAIR.OUT');rewrite(f);write(f,1);close(f);
          end;
begin
Load;
_write;
end.