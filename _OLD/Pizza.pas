uses crt;
var     a:array[-1001..1001]of integer;
        _M:array[0..21,0..2]of integer;
        _N:array[0..101,0..3]of integer;
        K,R,M,N,Max:integer;
        KT:array[0..101]of boolean;
        x:array[0..1001]of integer;
Procedure Load;
          var   f:Text;
                i:integer;
          begin
          assign(f,'Pizza.inp');reset(f);
          readln(f,k,r);
          Readln(f,m);
          for i:=1 to m do readln(f,_M[i][1],_M[i][2]);
          readln(f,n);
          for i:=1 to n do readln(f,_N[i][1],_N[i][2],_N[i][3]);
          Close(f);
          Max:=0;
          for i:=1 to m do KT[i]:=true;
          end;
Procedure TinhKQ;
          var   i,j:integer;
          begin
          for i:=1 to n do
                for j:=1 to m do
                        begin
                        if (sqrt(sqr(_M[j][1]-_N[i][1])+sqr(_M[j][2]-_N[i][2]))<=r) then
                                Sum:=Sum+
                        end;
          for i:=1 to n do
                begin
                for j:= 1 to m do
                if (sqrt(sqr(_M[j][1]-_N[i][1])+sqr(_M[j][2]-_N[i][2]))<=r) then
                        begin
                        Max:=Max+_N[i][3];
                        end;
                end;
          end;
Procedure Try(j:integer);
          var   i:integer;
          begin
          for i:=1 to m do
                if KT[i] then
                begin
                  x[i]:=i;
                  KT[i]:=false;
                  if j=k then TinhKQ
                     else Try(j+1);
                  KT[i]:=true;
                  end;
          end;
begin
Clrscr;
Load;
Try(1);
Write(Max);
readln
end.
