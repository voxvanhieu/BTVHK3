uses crt;
Const   InpFile = 'Test\Test10\BWPOINTS.INP';
Const   OutFile = 'Test\Test10\BWPOINTS2.OUT';
Const   Nmax = 2*100000;
Type    Point = record
                x:Longint;
                Color:Boolean;
                end;
var     a:array[0..Nmax]of Point;
        KT:array[0..Nmax]of boolean;
        n:longint;
Procedure Swap(i,j:longint);
          var   tmp:Point;
          begin
          tmp:=a[i]; a[i]:=a[j]; a[j]:=tmp;
          end;
Procedure QuickSort(L,H:longint);
          var i,j,pivot:longint;
           begin
          if L>H then exit;
          Pivot:=a[L + Random(H-L+1)].x;
          i:=L; j:=H;
          repeat
                    while a[i].x<Pivot do inc(i);
                    while a[j].x>pivot do dec(j);
                    if i<=j then
                        begin
                        if i<j then Swap(i,j);
                        inc(i); dec(j);
                        end;
          until i>j;
          QuickSort(L,j); QuickSort(i,H);
          end;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,InpFile);reset(f);
          readln(f,n);
          // Mau trang = true / Mau den = false
          for i:=1 to n do
                begin
                read(f,a[i].x); a[i].Color:=true;
                end;
          readln(f);
          for i:=n+1 to 2*n do
                begin
                read(f,a[i].x); a[i].Color:=false;
                end;
          close(f);
          QuickSort(1,2*n);
          end;
Procedure _Out(i:longint);
          var   f:text;
          begin
          assign(f,OutFile);rewrite(f);
          write(f,i);close(f);
          end;
Procedure Pr;
          var   dem,i:longint;
          begin
          dem:=0; i:=1;
          while i<2*n do
                begin
                inc(i);
                if a[i-1].color xor a[i].color then
                        begin
                        inc(dem);
                        inc(i);
                        end;
                end;
          _Out(dem);
          end;
begin
Clrscr;
Load;
Pr;
end.
