uses crt;
const   indir ='PRIMEMAX\Test10\PRIMEMAX.INP';
const   outdir='PRIMEMAX\Test10\PRIMEMAX2.OUT';
var     a:array[0..100001]of longint;
        b:array[0..100001,1..2]of longint;
        n, nb, ntMax, iMax, nMax:longint;
Function Nt(n:longint):boolean;
         var    i:Longint;
         begin
         if n=1 then exit(false);
         for i:=2 to n div 2 do
                if n mod i = 0 then exit(false);
         exit(true);
         end;
Procedure Load;
          var   f:Text;
                i,j:longint;
                bCheck:boolean;
          begin
          assign(f,InDir);reset(f);
          readln(f,n);
          nb:=0;
          ntMax:=0;
          for i:=1 to n do
                begin
                read(f,a[i]);
                if (NT(a[i])) and (a[i]>ntMax) then ntMax:=a[i];
                bCheck:=false;
                for j:=0 to nb do
                        if a[i]=b[j][1] then
                                begin
                                inc(b[j][2]);
                                bCheck:=true;
                                break;
                                end;
                if not bCheck then
                        begin
                        inc(nb);
                        b[nb][1]:=a[i];
                        b[nb][2]:=1;
                        end;
                end;
          close(f);
          end;
Procedure Pr;
          var   f:text;
                i:longint;
          begin {
          for i:=1 to nb do write(b[i][1]:7);writeln;
          for i:=1 to nb do write(b[i][2]:7);
          readln;                            }
          iMax:=b[1][1];
          nMax:=b[1][2];
          for i:=2 to nb do
                if b[i][2]>nMax then
                        begin
                        iMax:=b[i][1];
                        nMax:=b[i][2];
                        end;
          end;
Procedure _Out;
          var   f:Text;
          begin
          assign(f,OutDir);rewrite(f);
          writeln(f,ntMax);writeln(f,iMax);
          close(f);
          end;
begin
clrscr;
Load;
Pr;
_Out;
end.
