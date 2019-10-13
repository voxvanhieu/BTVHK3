uses crt;
Const   InpFile = 'Test\Test10\XauDep.inp';
Const   OutFile = 'Test\Test10\XauDep2.out';
var     a:array[0..1001]of integer;
        m,n,dem:integer;
        f:text;
Procedure Load;
          var   i:integer;
          begin
          assign(f,InpFile);reset(f);
          read(f,m,n); close(f);
          for i:=1 to n do a[i]:=0;
          dem:=0;
          assign(f,OutFile);rewrite(f);
          end;
Function _IsString_MxN:boolean;
         var    i:integer;
                _Check:array[1..1001] of boolean;
         begin
         for i:=1 to m do _Check[i]:=false;
         for i:=1 to n do _Check[a[i]]:=true;
         for i:=1 to m do if Not _Check[i] then exit(false);
         inc(dem);
         exit(true);
         end;
Procedure _CheckAndWriteArray;
          var   i:integer;
          begin
          if _IsString_MxN then
                begin
//                for i:=1 to n do write(a[i]);writeln;
                for i:=1 to n do write(f,a[i]); writeln(f);
                end;
          end;
Procedure Try(i:integer);
          var   j:integer;
          begin
          for j:=1 to m do
                if (i=n) and (a[i-1]<>j) then
                        begin
                        a[i]:=j;
                        _CheckAndWriteArray;
                        end else
                if a[i-1]<>j then
                        begin
                        a[i]:=j;
                        try(i+1);
                        a[i]:=0;
                        end;
          end;
begin
clrscr;
Load;
Try(1);
//write(dem);
write(f,dem);
Close(f);
end.
