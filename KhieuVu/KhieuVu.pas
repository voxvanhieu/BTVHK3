uses crt;
var     h:array[0..100001]of longint;
        g:array[0..100001]of boolean;
        n,k,dem:longint;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'Test\Test09\KhieuVu.inp');reset(f);
          readln(f,n,k);
          for i:=1 to n do
                read(f,h[i]);
          Close(f);
          end;
Procedure _Out;
          var   f:text;
          begin
          assign(f,'KhieuVu.out');rewrite(f);
          write(f,dem); close(f);
          end;
Procedure HoanVi(var a,b:longint);
          var   r:longint;
          begin
          r:=a; a:=b; b:=r;
          end;
Procedure QuickSort(L,R:longint);
          var   i,j,k:longint;
          begin
          if l>r then exit;
          i:=L; j:=R;
          k:=H[(l+r)div 2];
          repeat
                while h[i]<k do inc(i);
                while h[j]>k do dec(j);
                if i<=j then
                        begin
                        if i<j then HoanVi(H[i],H[j]);
                        inc(i); dec(j);
                        end;
          until i>j;
          QuickSort(L,j);
          QuickSort(i,R);
          end;
Function  BinarySearch(x:longint):longint;
          var   L,R,C:longint;
          begin
          L:=1; R:=n;
          while L<=R do
                begin
                C:=(L+R) div 2;
                if H[C]=X then Exit(C);
                if H[C]<X then L:=C+1 else R:=C-1;
                end;
          exit(0);
          end;
Procedure Pr;
          var   i,j:longint;
          begin
          clrscr;
          dem:=0;
          QuickSort(1,n);
          FillChar(g, SizeOf(g), True);
          for i:=1 to n do
                begin
                j:=BinarySearch(h[i]+k);
                if (j>0) then inc(dem);
                end;
          end;
begin
Load;
Pr;
_Out;
end.
