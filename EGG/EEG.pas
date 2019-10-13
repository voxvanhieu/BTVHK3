uses crt;
type    Mang=array[0..5001,1..2]of longint;
const   indir ='EGG\Test11\EGG.INP';
const   outdir='EGG\Test11\EGG2.OUT';
var     a:mang;
        n,m:longint;
Procedure Load;
          var   f:Text;
                i:integer;
          begin
          assign(f,InDir);reset(f);
          Readln(f,n,m);
          for i:=1 to m do
                readln(f,a[i][1],a[i][2]);
          close(f);
          end;
Procedure _Out(i:longint);
          var   f:text;
          begin
          assign(f,OutDir);rewrite(f);
          write(f,i); close(f);
          end;
Procedure HoanVi(i,j:longint);
          var   r:longint;
          begin
          r:=a[i][1]; a[i][1]:=a[j][1]; a[j][1]:=r;
          r:=a[i][2]; a[i][2]:=a[j][2]; a[j][2]:=r;
          end;
Procedure Sort;
          var   i,j:integer;
          begin
          for i:=1 to m do
                for j:=i+1 to m do
                        if a[i][1]>a[j][1] then HoanVi(i,j);
          end;
Procedure Pr;
          var   i, Tien:longint;
          begin
          Sort;
          i:=0;
          Tien:=0;
          while (n>0)and(i<=m) do
                begin
                inc(i);
                if n<=a[i][2] then
                        begin
                        Tien:=Tien+n*a[i][1];
                        a[i][2]:=a[i][2]-n;
                        n:=0;
                        end
                else    begin
                        Tien:=Tien+a[i][2]*a[i][1];
                        n:=n-a[i][2];
                        a[i][1]:=0;
                        end;
                end;
          _Out(Tien);
          end;

begin
clrscr;
Load;
Pr;
end.
