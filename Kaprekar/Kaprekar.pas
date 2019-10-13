uses crt;
var     n:integer;

Function  NumMin(n:integer):integer;
          var   i,j,k:integer;
                m:string;
                tmp:char;
          begin
          Str(n,m);
          for i:=1 to length(m) do
                for j:=1 to length(m) do
                        if m[i]<m[j] then
                                begin
                                tmp:=m[i];m[i]:=m[j];m[j]:=tmp;
                                end;
          val(m,n,k);
          exit(n);
          end;
Function  NumMax(n:integer):integer;
          var   i,j,k:integer;
                m:string;
                tmp:char;
          begin
          Str(n,m);
          for i:=1 to length(m) do
                for j:=1 to length(m) do
                        if m[i]>m[j] then
                                begin
                                tmp:=m[i];m[i]:=m[j];m[j]:=tmp;
                                end;
          val(m,n,k);
          exit(n);
          end;
Function  _SochuSo(n:integer):integer;
          var   k:integer;
          begin
          k:=0;
          while n<>0 do
                begin
                inc(k);
                n:=n div 10;
                end;
          exit(k);
          end;
Function _IsKaprekar(n:integer):boolean;
          var   LastNum:integer;
          begin
          repeat
          LastNum:=n;
          Write(NumMax(n),'-',NumMin(n),'=');
          n:=NumMax(n)-NumMin(n);
          writeln(n);
          until n=LastNum;
          if LastNum=6174 then exit(true) else exit(false);
          end;
begin
repeat
        clrscr;
        write('Nhap so co 4 chu so: ');readln(n);
until (n>999)and(n<10000);
if _IsKaprekar(n) then write('Dung la Kaprekar') else write('Khong Phai');
readln
end.