uses crt;
var     c:array[0..1001,0..1001]of longint;
        d:array[0..1001]of longint;
        Free:array[0..1001]of boolean;
        n,m,s,t:longint;
Procedure Load;
          var   f:text;
                i,x,y,z:longint;
          begin
          assign(f,'TaiTrong.inp');reset(f);
          readln(f,n,m,s,t);
          for i:=1 to m do
                begin
                readln(f,x,y,z);
                c[x,y]:=z;
                c[y,x]:=z;
                end;
          Close(f);
          FillChar(c, SizeOf(c), 0);
          FillChar(d, SizeOf(d), 0);
          for i:=0 to 1001 do Free[i]:=true;
          end;
Function  Min(a,b:longint):longint;
          begin
          if a>b then exit(a) else exit(b);
          end;
Procedure _Out(k:longint);
          var   f:text;
          begin
          assign(f,'TaiTrong.out');rewrite(f);
          write(f,k);close(f);
          end;
Procedure _ahihi;
          var   i:integer;
          begin
          for i:=1 to n do
                begin
                if free[i] then textcolor(7) else textcolor(red);
                write(d[i]:5);
                end;
          writeln;
          end;
Procedure Pr;
          var   u,v,i:longint;
          begin
          d[s]:=999999999; d[t]:=0;
          repeat
          u:=0;
          for i:=1 to n do
                if (Free[i]) and (d[u]<d[i]) then u:=i;
          if (u=0) or (u=t) then break;
          Free[u]:=False;
          WRITELN(U); _ahihi;
          for v:=1 to n do
                if (v<>u) and (c[u,v]<>0) then
                        d[v]:=Min(d[u],c[u,v]);
          until false;
          if u=1 then _Out(-1) else
          if u=t then _Out(d[t]);
readln
          end;
begin
clrscr;
Load;
Pr;
end.
