uses crt;
Const InpFile = 'Test\Test00\Robot.inp';
Const OutFile = 'Test\Test00\Robot2.out';
var     a:array[0..1001, 0..1001] of Char;
        b:array[0..1001, 0..1001] of boolean;
        _Char:array['A'..'Z'] of boolean;
Procedure Load;
          var   f:text;
                i,j:integer;
          begin
          assign(f,InpFile);reset(f);
          readln(f,n);
          for i:=1 to n do
                begin
                for j:=1 to n do
                        begin
                        read(f,a[i][j]);
                        a[i][j]:=upcase(a[i][j]);
                        b[i][j]:=false;
                        end;
                Readln(f);
                end;
          end;
Function  _LocationInArray(i,j:integer):boolean;
          begin
          exit(_Char[a[i][j]]);
          end;
Procedure Try(i,j:integer);
          var
          begin  // Ky tu chua co       // Vi tri chua di
          If (i>0) and (j>0) and (i<=n) and (j<=n) then
                begin
                If (Not _Char[a[i][j]) and (Not b[i][j]) then _Add(i,j);
                Try(i-1,j-1);
                Try(i-1, j+1);
                Try(i-1, j);
                Try(i+1,j-1);
                Try(i+1,j+1);
                Try(i+1,j);
                Try(i,j-1);
                Try(i,j+1);
                end;
          end;
begin
Load;
dem:=0;
Try(1,1);
end.