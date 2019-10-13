uses crt;
var     a:array[0..100001] of int64;
        n,s,min:int64;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'SUB.inp');reset(f);
          readln(f,n,s);
          for i:=1 to n do read(f,a[i]);
          close(f);
          end;
Function  Sum(m,k:int64):int64;
          var   dem,i:longint;
          begin
          dem:=0;
          for i:=m to m+k-1 do
                dem:=dem+a[i];
          exit(dem);
          end;
Procedure Pr;
          var   i,j:longint;
          begin
          min:=maxlongint;
          for i:=1 to n-1 do
                for j:=1 to n-i+1 do
                        if (Sum(i,j)>=s)and(min>j) then min:=j;
          end;
Procedure _out;
          var   f:Text;
          begin
          assign(f,'SUB.out');rewrite(f);
          write(f,min); close(f);
          end;
begin
Load;
Pr;
_Out;
end.