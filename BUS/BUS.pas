uses crt;
var     c,F,Save:array[0..101]of integer;
        nSave:integer;
        b,l:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'BUS.inp');reset(f);
          readln(f,b,l);
          for i:=1 to b do read(f,c[i]);
          close(f);
          end;
Function  Min(a,b:integer):integer;
          begin
          if a<b then exit(a) else exit(b);
          end;
Function  _InF(k:integer):boolean;
          var   i:integer;
          begin
          for i:=1 to l do if k=F[i] then exit(true);
          exit(false);
          end;
Procedure Pr;
          var   i,j,k:integer;
          begin
          clrscr;
          f[0]:=0;
          for i:=1 to l do
                begin
                F[i]:=10001;
                for j:=1 to min(i,b) do
                        F[i]:=Min(F[i],F[i-j]+c[j]);
                end;
          k:=F[l]; nSave:=0; i:=1;
          Repeat
                if _InF(k-F[i]) then
                        begin
                        k:=k-F[i];inc(nSave);Save[nSave]:=i;
                        break;
                        end;

          until (k=0)or(i=l);
          for i:=0 to nSave+1 do write(Save[i]:4);writeln;
          for i:=1 to l do write(f[i]:4);readln
          end;
begin
Load;
Pr;
end.
