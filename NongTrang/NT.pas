const fi='nt.inp'; fo='nt.out';
     max=10000;
type diem=record
     h,c:integer;
end;
var  a:array[1..max,1..max] of integer;
     m,n,first,last:integer;
     q:array[0..max*max] of diem;
     doi:boolean;
     free:array[1..max,1..max] of boolean;
     kq:longint;
procedure doc;
var i,j:integer; f:text;
begin
  assign(f,fi);reset(f);
  readln(f,m,n);
  for i:=1 to m do
   begin
    for j:=1 to n do read(f,a[i,j]);
    readln(f);
   end;
  close(f);
end;
function ok(x,y:integer):boolean; {kiem tra x,y co phai la mot o cua ma tran khong}
begin
  if (x>0) and (x<=m) and (y>0) and (y<=n) then ok:=true
  else ok:=false;
end;
procedure BFS;  {loang theo chieu rong de tim cac o bang nhau}
var dx:array[1..8] of shortint = (-1,-1,-1,0,1,1,1,0);
    dy:array[1..8] of shortint = (-1,0,1,1,1,0,-1,-1);
    x0,y0,x,y,i:integer;
begin
  repeat
    x:=q[first].h; y:=q[first].c; inc(first);//lay o x,y dau hang doi
    for i:=1 to 8 do   // co 8 phuong an ke
    begin
      x0:=x+dx[i]; y0:=y+dy[i]; // cac o ke voi o x,y
      if ok(x0,y0) then
        begin
          if (free[x0,y0]) and (a[x0,y0] = a[x,y]) then // day cac o co do cao bang x,y de day vao hang doi
            begin
              inc(last);
              q[last].h:=x0; q[last].c:=y0;
              free[x0,y0]:=false;
            end
          else if a[x0,y0]>a[x,y] then doi:=false;// neu ton tai 1 o co do cao lon hon cac o dang xet thi cac o do khong phai la doi

        end;
    end;

  until first>last;
end;
procedure xuli;
var i,j:integer; f:text;
begin
  doi:=true;
  fillchar(free,sizeof(free),true);
  for i:=1 to m do
  for j:= 1 to n do
   begin
     if free[i,j] then
        begin
              first:=1;last:=1; // day 1 o cua ma tran vo hang doi de loang tim doi
              q[last].h:=i;
              q[last].c:=j;
              bfs;
              if doi=true then inc(kq);
        end;
     doi:=true;
   end;
   assign(f,fo); rewrite(f);
      writeln(f,kq);
   close(f);
end;
begin
doc;
xuli;
end.
