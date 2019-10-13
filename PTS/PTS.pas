uses crt;
var     n:int64;
Procedure Load;
          var   f:text;
          begin
          assign(f,'PTS.inp');reset(f);
          readln(f,n); Close(f);
          end;
Procedure _Out(k:int64);
          var   f:text;
          begin
          assign(f,'PTS.out');rewrite(f);
          write(f,k); close(f);
          end;
Procedure Pr;
          var   k,dem,n2:int64;
          begin
          dem:=0;
          n2:=2*n;
          k:=trunc(sqrt(n2));
          while k>=2 do
                begin
                if (n2-sqr(k)-k) mod (2*k) = 0 then
                        begin
                        dem:=k;break;
                        end;
                dec(k);
                end;
          _out(dem);
          end;
begin
Load;
Pr;
end.
