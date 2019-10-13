uses crt,math;
var     a:array[0..100001] of longint;
        u,v,ret:array[0..100001]of longint;
        n,q:longint;
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
Function  _ChenhLech(L,H:longint):longint;
          var   mid,CL,iCL:longint;
                Sum,Sa,Sb:int64;
          begin
          Sum:=_Sum(L,H); CL:=Maxlongint;
          while (L<=H) do
                begin
                Mid:=(L+H) div 2;
                Sa:=_Sum(L,Mid); Sb:=Sum-Sa;
                CL:=Min(CL,Abs(2*Sa-Sum));
                if Sa=Sb then exit(0) else
                if Sa<Sb then L:=Mid+1 else
                if Sa>Sb then H:=Mid;
                end;
          exit(CL);
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
          for i:=1 to q do ret[i]:=_ChenhLech(u[i],v[i]);
          end;
begin
Load;
Pr;
_Out;
end.
