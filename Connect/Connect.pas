uses crt;
var     s:array[0..1001]of string;
        n,lenmax:integer;
Procedure Load;
          var   f:text;
                i,k:integer;
          begin
          assign(f,'Connect.inp');reset(f);
          readln(f,n);
          lenmax:=0;
          for i:=1 to n do
                begin
                read(f,k);
                str(k,s[i]);
                if length(s[i])>lenmax then lenmax:=length(s[i]);
                end;
          end;
Procedure Pr;
          var   i,j,k:integer;
                sTmp:string;
          begin
          for i:=1 to n do write(s[i]:7);writeln;
          for i:=1 to n-1 do
                for j:=i+1to n do
                        begin
                       // if pos(s[j],s[i]) then
                                //if length(s
                        if s[i]<s[j] then
                                begin
                                sTmp:=s[i];
                                s[i]:=s[j];
                                s[j]:=sTmp;
                                end;
                        end;
          for i:=1 to n do write(s[i]:7);readln
          end;
begin
clrscr;
Load;
Pr;
end.
