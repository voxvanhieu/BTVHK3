uses crt;
Const   InpFile = 'Test\Test01\CayCau.inp';
Const   OutFile = 'Test\Test01\CauCau2.out';
var     a:array[0..1001]of boolean;
        n,k,Num:integer;
Procedure _Debug(j:integer; k:boolean);
          var i:integer;
          begin
          textcolor(15);
          write(j:3,' > ');
          for i:=1 to n do
                if a[i] then
                        write(i:3)
                else
                        begin
                        textcolor(12);
                        write(i:3);
                        textcolor(15);
                        end;
          If k then
                begin
                Textcolor(10);
                Write('   --> TRUE');
                end
          Else  begin
                TextColor(13);
                Write('   --> FALSE');
                end;
          TextColor(7);
          writeln;
          end;
PRocedure Load;
          var   f:Text;
                i,tmp:integer;
          begin
          assign(f,InpFile);reset(f);
          readln(f,n,k);
          for i:=1 to n do a[i]:=true;
          for i:=1 to k do
                begin
                read(f,tmp);
                a[tmp]:=false;
                end;
          Close(f);
          Num:=0;
          end;
Procedure _Out(i:integer);
          var   f:text;
          begin
          assign(f,OutFile);rewrite(f);
          write(f,i); Close(f);
          end;
Procedure Try(i:integer);
          begin
          if i<=n then
                begin
                a[i]:=false;
                if i=n then
                        begin
                        inc(num);
                        //_Debug(i, True);
                        end
                else
                        begin
                        //_Debug(i, false);
                        if a[i+1] then try(i+1);
                        if a[i+2] then  try(i+2);
                        end;
                a[i]:=true;
                end;
          end;
begin
clrscr;
Load;
Try(1);
_out(Num);
//write('>> ', num);readln
end.
