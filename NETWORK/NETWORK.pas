uses math;
var     a:array[0..25001]of longint;
        n:longint;

Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'NETWORK.INP');reset(f);
          readln(f,n);
          for i:=1 to n-1 do readln(a[i]);
          close(f);
          end;
Procedure Pr;
          var
          begin
          FillChar(Fx, SizeOf(Fx), 0);
          for i:=1 to n do
                Fx[i]:=Min(Fx[i-1],F[i-2])+a[i];
                //thieu F[1]
          end;
Procedure _Out;
          var   f:text;
          begin
          assign(f,'NETWORK.OUT');rewrite(f);
          write(f,Fx[n]);close(f);
          end;
begin
Load;
Pr;
_Out;
end.