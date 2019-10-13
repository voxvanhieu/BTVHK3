var     a:int64;
Procedure Load;
          var   f:text;
          begin
          assign(f,'MYSTERY.INP');reset(f);
          readln(f,a); close(f);
          end;
Function  SoMu(a,b:int64):int64;
          var   t:int64;
          begin
          if b=1 then exit(a);
          if (b mod 2)=0 then
                begin
                t:=Somu(a,b div 2);
                exit(t*t mod 20122007);
                end
          else exit(a*SoMu(a,b-1));
          end;
Procedure _Out(n:int64);
          var   f:text;
          begin
          assign(f,'MYSTERY.OUT');rewrite(f);
          write(f,n); close(f);
          end;
Procedure Pr;
          var   s,i:int64;
          begin
          S:=1; i:=0;
          repeat
                inc(i);
                if (a mod i)=0 then
                        s:=s*(Somu(3,i)-1)*(Somu(3,a div i)-1);
          until (i=trunc(sqrt(a)));
          if (trunc(sqrt(a))=sqrt(a)) then s:=s div (SoMu(3, a div trunc(sqrt(a)))-1);
          _Out(s mod 20122007);
          end;
begin
Load;
Pr;
end.