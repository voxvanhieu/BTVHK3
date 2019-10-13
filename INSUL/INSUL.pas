uses crt,math;
var     a:array[0..100001]of longint;
        n:longint;
Procedure Load;
          var   i:longint;
          begin
          clrscr; readln(n); for i:=1 to n do readln(a[i]);
          end;
Procedure Doi(i,j:longint);
          var   tmp:longint;
          begin
          tmp:=a[i]; a[i]:=a[j]; a[j]:=tmp;
          end;
Procedure QuickSort(L,H:Longint);
          var   i,j,mid:longint;
          begin
          if L>=H then exit;
          Mid:=a[L+(H-L+1) div 2];
          I:=L; j:=H;
          repeat
                while a[i]<mid do inc(i);
                while a[j]>mid do dec(j);
                if i<=j then
                        begin
                        if i<j then Doi(i,j);
                        inc(i); dec(j);
                        end;
          until i>j;
          QuickSort(L,j); QuickSort(i,H);
          end;
Procedure Pr;
          var   i,j,Sum:longint;
          begin
          QuickSort(1,n);
          Sum:=0;
          for i:=1 to (n div 2) do
                Sum:=Sum+a[i]+a[n-i+1]+(a[n-i+1]-a[i]);
          if (n mod 2 = 1) then Sum:=Sum+a[(n div 2)+1];
          write(sum); readln;
          end;
begin
Load;
Pr;
end.
