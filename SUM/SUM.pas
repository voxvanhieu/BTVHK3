uses crt,math;
var     a:array[0..101,0..101]of integer;
        n:integer;
Procedure Load;
          var   f:text;
                i,j:integer;
          begin
          assign(f,'SUM.INP');reset(f);
          readln(f,n);
          for i:=1 to n do
                begin
                for j:=1 to n do
                        read(f,a[i,j]);
                readln(f);
                end;
          close(f);
          end;
Procedure _Write(k:longint);
          var   f:text;
          begin
          assign(f,'SUM.OUT');rewrite(f);
          write(f,k); close(f);
          end;
Procedure Pr;
          var   i,j,k:integer;
                S1,S2,SMax:longint;
          begin
          sMax:=-high(longint);
          for k:=1 to n do
                begin
                i:=k-1; j:=0; S1:=0; S2:=0;
                repeat
                        inc(i);inc(j);
                        S1:=S1+a[i,j];
                        S2:=S2+a[j,i];
                until (i=n)or(j=n);
                SMax:=Max(SMax,Max(S1,S2));
                end;
          _write(SMax);
          end;
begin
Load;
Pr;
end.