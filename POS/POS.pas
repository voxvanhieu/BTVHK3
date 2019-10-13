uses crt;
var     s:ansistring;
Procedure Load;
          var   f:text;
          begin
          assign(f,'POS.inp');reset(f);
          read(f,s); close(f);
          end;
Procedure _Out(k:longint);
          var   f:Text;
          begin
          assign(f,'POS.out');rewrite(f);
          write(f,k); close(f);
          end;
Procedure Pr;
          var   i:longint;
          begin
          i:=length(s);
          repeat
                dec(i);
          until (s[i]='0')or(i=0);
          _Out(i);
          end;
begin
Load;
Pr;
end.