uses crt;
var     m,n,cho,ga:int64;
Procedure Load;
          var   f:text;
          begin
          assign(f,'ChickDog.inp');reset(f);
          readln(f,m,n);close(f);
          end;
Procedure _SearchChickDog;
          var   l,r:int64;
          begin
          l:=0; r:=m;
          repeat
          cho:=(r+l) div 2;
          ga:=m-cho;
          if (cho*4+ga*2)>n then r:=cho-1 else l:=cho+1;
          until ((4*cho+2*ga)=n) or (r<l);
          end;
Procedure _Out;
          var   f:text;
          begin
          assign(f,'ChickDog.out');rewrite(f);
          if (4*cho+2*ga)=n then write(f,ga,' ',cho)
          else write(f,'-1');close(f);
          end;
begin
Load;
_SearchChickDog;
_Out;
end.
