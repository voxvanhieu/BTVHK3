uses crt;
Const   InpFile = 'Test\Test01\Average.inp';
var     n,lim,i:longint;
        f:text;
begin
Writeln('===== Trinh sinh test bai Average =====');
Write('-> Nhap n: ');readln(n);
Write('-> Nhap gioi han a[i]: ');readln(lim);
Writeln('=======================================');
assign(f,InpFile);rewrite(f);
Writeln(f,n);
Randomize;
for i:=1 to n do
        write(f,Random(lim),' ');
close(f);
end.