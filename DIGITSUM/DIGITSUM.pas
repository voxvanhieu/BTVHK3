uses crt;
var     _s:ansistring;
        a,b,c,t:array[0..100000001]of byte;
        s,n:int64;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'DIGITSUM.INP');reset(f);
          read(f,_s); close(f);
          n:=length(_s);
          for i:=1 to n do a[i]:=ord(_s[i])-48;
          end;
function  TongCs(k:int64):int64;
          var   tmp:int64;
          begin
          tmp:=0;
          repeat
                tmp:=tmp+(k mod 10);
                k:=k div 10;
          until k=0;
          exit(tmp);
          end;
Procedure _Out;
          var   f:text;
          begin
          assign(f,'DIGITSUM.OUT');rewrite(f);
          writeln(f,s);
          i:=1; while b[i]=0 do inc(i);for i:=i to n do write(f,b[i]);writeln(f);
          i:=1; while c[i]=0 do inc(i); for i:=i to n do write(f,c[i]);close(f);
          end;
Procedure Pr;
          var   nho,i,_min:longint;k:integer;
                ok:boolean;
          begin
          nho:=0; s:=0;
          for i:=n downto 2 do
                begin
                if a[i]-nho=9 then t[i]:=a[i] else
                        begin
                        T[i]:=a[i]+10-nho; nho:=1;
                        end;
                s:=s+t[i];
                end;
          T[1]:=a[1]-nho; s:=s+T[1];
          //val(_s, n, k);
          b[1]:=0; c[1]:=0;
          OK:=true;
          for i:=1 to n do
                if OK then
                        begin
                        c[i]:=t[i]div 2;
                        b[i]:=t[i]-c[i];
                        if b[i]>c[i] then OK:=false;
                        end
                else    begin
                        c[i]:=9; b[i]:=t[i]-9;
                        end;
          end;
begin
Load;
Pr;
_Out
end.
