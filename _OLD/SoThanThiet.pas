uses crt;
var     i,k,n,dem:longint;
        f:text;
Function TongUoc(a:longint):longint;
         var    i,sum:longint;
         begin
         sum:=1;
         for i:=2 to a-1 do
                if a mod i = 0 then sum:=sum+i;
         exit(sum);
         end;
begin
clrscr;
Assign(f,'SoThanThiet.inp');reset(f);
readln(f,n);
close(f);
assign(f,'SoThanThiet.out');rewrite(f);
dem:=0;
for i:=1 to n do
        begin
        k:=TongUoc(i);
        if (i=TongUoc(k)) and (i<k) then inc(dem);
        end;
write(f,dem);
close(f);
end.
