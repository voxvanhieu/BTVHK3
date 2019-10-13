uses crt;
var     a:array[-1001..1001]of integer;
        _M:array[0..21,0..2]of integer;
        _N:array[0..101,0..3]of integer;
        K,R,M,N,Max:integer;
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
          end;
Function  _CheckLocation(i:integer):boolean;
          var   j:integer;
          begin
          for j:=1 to m do
                if (Sqrt(sqr(_N[i][1]-_M[j][1])+sqr(_N[i][2]-_M[j][2]))<=R) then exit(true);
          exit(false);
          end;
Procedure Pr;
          var   i:integer;
          begin
          Max:=0;
          for i:=1 to n do
                begin
                if _CheckLocation(i) then Max:=Max+_N[i][3];
                end;
          Write(max);
          readln
          end;
begin
Clrscr;
Load;
Pr;
end.