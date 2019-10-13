uses crt;
var     a:array[0..100001]of boolean;
        Fx:array[0..100001]of longint;
        n,k:longint;
Procedure Load;
          var   f:text;
                i,t:longint;
          begin
          assign(f,'STEPS.INP');reset(f);
          readln(f,n,k);
          Fillchar(a, SizeOf(a), True);
          for i:=1 to k do
                begin
                read(f,t);
                a[t]:=false;
                end;
          close(f);
          end;
Procedure Pr;
          var   i:longint;
          begin
          FillChar(Fx, SizeOf(Fx), 0);
          Fx[1]:=1;
          for i:=2 to n do
                if a[i] then Fx[i]:=(Fx[i-1] mod 14062008) +(Fx[i-2]mod 14062008);
          end;
Procedure _Out;
          var   f:text;
          begin
          assign(f,'STEPS.OUT');rewrite(f);
          write(f,Fx[n]mod 14062008); close(f);
          end;
begin
Load;
Pr;
_Out;
end.
