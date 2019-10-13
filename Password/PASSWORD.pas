uses crt;
var
Procedure Load;
          var   f:text;
          begin
          assign(f,'PASSWORD.INP');reset(f);
          readln(f,s); close(f);
          end;
Function  NT(n:longint):boolean;
          var   i:boolean;
          begin
          for i:=2 to trunc(sqrt(n)) do
                if n mod i = 0 then exit(false);
          exit(true);
          end;
Procedure Pr;
          var   i,j,k,t,r:integer;

          begin
          i:=1;
          repeat
                if not (s[i] in ['0'..'9']) then delete(s, i,1);
                S2:='';
                repeat
                        S2:=s2+s[i]; delete(s,i,1);
                until not (s[i] in ['0'..'9']);
                for j:=1 to length(s2) do
                        for k:=1 to length(s2)-i+1 do
                                begin
                                if nt(val(s2, t, r);
                                end;
          until (i=length(s));
          end;
begin
Load;
Pr;
end.