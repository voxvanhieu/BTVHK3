uses crt;
var     t,r:array[0..60001]of integer;
        c:array[0..60001]of longint;
        n:longint;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'NKTICK.INP');reset(f);
          readln(f,n);
          for i:=1 to n do read(f,t[i]);readln(f);
          for i:=1 to n-1 do read(f,r[i]);close(f);
          end;
Function  Min(a,b:integer):integer;
          begin
          if a<b then exit(a) else exit(b);
          end;
Procedure Pr;
          var   i:longint;
          begin
          FillChar(c, SizeOf(c), 0);
          for i:=2 to n do
                C[i]:=Min(c[i-1]+t[i-1],c[i-1]+r[i-1]);
          for i:=1 to n do write(c[i]:3);readln
          end;
begin
Load;
Pr;
end.