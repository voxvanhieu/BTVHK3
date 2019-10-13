uses crt;
var     f:text;
        n,i,j,k:integer;
        a:array[0..101,0..101]of integer;
begin
Randomize;
write('Nhap n: ');readln(n);
write('Max a[i,j]: ');readln(k);
for i:=1 to n do
        for j:=1 to n do a[i,j]:=Random(k+1);
assign(f,'SUM.INP');rewrite(f);
writeln(f,n);
for i:=1 to n do
        begin
        for j:=1 to n do write(f,a[i,j],' ');
        writeln(f);
        end;    close(f);
end.