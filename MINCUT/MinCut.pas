uses crt;
var     a:array[0..1001,0..1001] of integer;
        x,y,u,v: array [0..1001] of integer;
        m,n,k:integer;
Procedure Load;
          var   f:text;
                i,j:integer;
          begin
          assign(f,'MinCut.inp');reset(f);
          readln(f,m,n,k);
          for i:=1 to m do
                begin
                for j:=1 to n do read(f,a[i,j]);
                readln(f);
                end;
          for i:=1 to k do readln(f,x[i],y[i],u[i],v[i]);
          Close(f);
          end;
Function  Sum(x,y,u,v:integer):integer;
          var   i,j,Tong:integer;
          begin
          for i:=x to u do
                for j:=y to v do Tong:=Tong+a[i,j];
          exit(tong);
          end;
Procedure Pr;
          var   f:text;
                i,j,r:integer;
          begin
          assign(f,'MinCut.out');rewrite(f);
          for r:=1 to k do
                begin
                FullSum:=Sum(x[r],y[r],u[r],v[r]);
                t:=y[r]; p:=v[r]; Min:=MaxInt;
                repeat
                mid:=(t+p) div 2;
                ChenhLech:=Abs(Sum(x[r],y[r],u[r],mid)-Sum(x[r],mid+1,u[r],v[r]));
                if Min>ChenhLech then Min:=ChenhLech;
                until (l>r) or ();
                end;
          close(f);
          end;
begin
Load;
Pr;
end.
