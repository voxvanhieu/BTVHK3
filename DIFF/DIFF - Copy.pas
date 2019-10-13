uses crt,math;
var     a:array[0..100001]of longint;
        u,v,ret:array[0..1000001]of int64;
        n,q:int64;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'DIFF.INP');reset(f);
          readln(f,n,q);
          for i:=1 to n do
                read(f,a[i]);readln(f);
          for i:=1 to q do
                read(f,u[i],v[i]);
          close(f);
          end;
Function  _Sum(ia,ib:longint):int64;
          var   i:longint;
                s:int64;
          begin
          S:=0;
          for i:=ia to ib do S:=s+a[i];
          exit(s);
          end;
Function  ChenhLech(L,H:longint):int64;
          var   i:longint;
                Sum,Sa,CL:int64;
          begin
          Sum:=_Sum(L,H); Sa:=0; CL:=Maxlongint;
          for i:=L to H do
                begin
                Sa:=Sa+a[i];
                CL:=Min(CL,Abs(2*Sa-Sum));
                if CL<>Abs(2*Sa-Sum) then break;
                end;
          Exit(CL);
          end;
Procedure _Out;
          var   f:text;
                i:longint;
          begin
          assign(f,'DIFF.OUT');rewrite(f);
          for i:=1 to q do writeln(f,ret[i]);
          close(f);
          end;
Procedure Pr;
          var   i:longint;
          begin
          for i:=1 to q do ret[i]:=ChenhLech(u[i],v[i]);
          end;
begin
Load;
Pr;
_Out;
end.
