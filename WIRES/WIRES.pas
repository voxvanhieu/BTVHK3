uses crt;
var     S1,S2:array[0..1001]of integer;
        Fx:array[0..1001,0..1001]of integer;
        n:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'WIRES.INP');reset(f);
          readln(f,n);
          for i:=1 to n do read(f,S1[i]);
          for i:=1 to n do S2[i]:=i;
          close(f);
          end;
Function  Max(a,b:integer):integer;
          begin
          if a>b then exit(a) else exit(b);
          end;
Procedure _Out(k:integer);
          var   f:text;
          begin
          assign(f,'WIRES.OUT');rewrite(f);
          write(f,k); close(f);
          end;
Procedure Pr;
          var   i,j:integer;
          begin
          for i:=1 to n do
                for j:=1 to n do
                        if s1[i]=s2[j] then Fx[i,j]:=Fx[i-1,j-1]+1
                        else Fx[i,j]:=Max(Fx[i-1,j],Fx[i,j-1]);
          _Out(Fx[n,n]);
          end;
begin
Load;
Pr;
end.