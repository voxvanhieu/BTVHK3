uses crt;
var     a:array[0..101,0..101]of byte;
        dx:array[1..4]of integer = (-1, -1, 1, 1);
        dy:array[1..4]of integer = (-1, 1, -1, 1);
        n:byte;
procedure Load;
          var   f:text;
                i,j:byte;
          begin
          assign(f,'LEONUI.INP');reset(f);
          readln(f,n);
          for i:=1 to n do
                begin
                for j:=1 to n do read(f,a[i,j]);
                readln(f);
                end;
          close(f);
          end;
Function  KT(L,R:integer):boolean;
          var   OK:boolean;
                T:array[0..101,0..101]of integer;
          Procedure Visit(u,v:integer);
                var x,y,i:integer;
                begin
                if (u=n) and (v=n) then
                        begin
                        ok:=True; Exit;
                        end;
                for i:=1 to 4 do
                        begin
                        x:=u+dx[i];
                        y:=v+dy[i];
                        if (a[x,y]>=L)and(a[x,y]<=R) then Visit(x,y);
                        if OK then exit;
                        end;
                end;
          begin
          OK:=False;
          FillChar(T, SizeOf(T), true);
          visit(1,1); Exit(ok);
          end;
begin
Load;
KT(1,n);
end.