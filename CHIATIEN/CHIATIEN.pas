uses crt;
var     a:array[0..21]of byte;
        b:array[0..21]of char;
        Save:array[0..10001,0..21]of char;
        n,nSave:integer;
Procedure Load;
          var   f:text;
                i:integer;
          begin
          assign(f,'CHIATIEN.INP');reset(f);
          readln(f,n);
          for i:=1 to n do read(f,a[i]);
          close(f);
          FillChar(b, SizeOf(b), 0);
          nSave:=0;
          end;
Procedure CheckAndSave;
          var   _A,_B,i:integer;
          begin
          _A:=0; _B:=0;
          for i:=1 to n do
                if b[i]='A' then _A:=_A+a[i] else _B:=_B+a[i];
          if _A=_B then
                begin
                inc(nSave);
                for i:=1 to n do Save[nSave,i]:=b[i];
                end;
          end;
Procedure Try(k:integer);
          var   i:char;
          begin
          for i:='A' to 'B' do
                begin
                b[k]:=i;
                if k=n then CheckAndSave else Try(k+1);
                end;
          end;
Procedure _Write;
          var   f:text;
                i,j:integer;
          begin
          assign(f,'CHIATIEN.OUT');rewrite(f);
          writeln(f,nSave);
          for i:=1 to nSave do
                begin
                for j:=1 to n do write(f,Save[i,j],' ');
                writeln(f);
                end;
          close(f);
          end;
begin
Load;
Try(1);
_Write;
end.