uses crt;
var     x,y:array[0..1001]of longint;
        P:array[-100000..100000,-100000..100000]of real;
        m:real;
        n,w:longint;
Function  KhoangCach(i,j:longint):real;
          begin
          exit(Sqrt(sqr(x[i]-x[j])+sqr(y[i]-y[j])));
          end;
Procedure Load;
          var   f:text;
                i,j,k:integer;
          begin
          assign(f,'Connect.INP');reset(f);
          readln(f,n,w);
          readln(f,m);
          for i:=1 to n do readln(f,x[i],y[i]);
          fillchar(P,SizeOf(p),1);
          for i:=1 to w do
                begin
                readln(f,j,k);
                P[j,k]:=0;
                end;
          close(f);
          for i:=1 to n do
                for j:=1 to n do
                        if (i<>j)and(P[i,j]<>0) then
                                begin
                                P[i,j]:=KhoangCach(i,j);
                                if P[i,j]>m then P[i,j]:=maxlongint;
                                end;
          end;
Procedure Pr;
          //var
          begin

          end;
begin
Load;
Pr;
end.