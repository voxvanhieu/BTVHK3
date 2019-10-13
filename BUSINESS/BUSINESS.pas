uses crt,math;
var     Fx:array[0..10001,0..10001]of integer;
        C:array[0..10001,0..10001]of boolean;
        trace:array[0..10001]of integer;
        x,y:array[0..10001]of integer;
        n,m,s:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'BUSINESS.INP');reset(f);
          readln(f,n,m);
          FillChar(C, SizeOf(c), False);
          for i:=1 to m do
                begin
                readln(f,x[i],y[i]);
                C[x[i],y[i]]:=true;
                end;
          close(f);
          end;
Procedure _write(k:integer);
          var   f:text;
          begin
          assign(f,'BUSINESS.OUT');rewrite(f);
          write(f,k); close(f);
          write(k);readln;
          end;
Function  _Find(u:integer):integer;
          var
          begin
          end;
Procedure Pr;
          var   iMax,i:integer;
          begin
          iMax:=0;
          for i:=1 to m do iMax:=Max(iMax, _Find(i));
          _write(iMax);readln;
          end;
begin
Load;
Pr;
end.
