uses crt,math;
var     n,mx,dem:longint;
        a:array[0..5001] of longint;
Procedure Load;
          var   f:text;
                i:longint;
          begin
          assign(f,'TamHop.inp');reset(f);
          readln(f,n);
          for i:=1 to n do read(f,a[i]);
          close(f);
          end;
Procedure Doi(i,j:longint);
          var   tmp:longint;
          begin
          tmp:=a[i]; a[i]:=a[j]; a[j]:=tmp;
          end;
Function  _InArr(k:longint):longint;
          var   l,r,mid:longint;
          begin
          l:=0; r:=n;
          repeat
          mid:=(r+l)div 2;
          if 2*a[mid]>k then r:=mid-1 else l:=mid+1;
          until (2*a[mid]=k) or (l>r);
          if (2*a[mid]<>k) then exit(0) else exit(mid);
          end;
Procedure Pr;
          var   i,j,InArr:longint;
          begin
          for i:=1 to n do
                for j:=1 to n do
                        if a[i]<a[j] then Doi(i,j);
          dem:=0; mx:=-999999999;
          for i:=1 to n-1 do
                for j:=i+1 to n do
                        begin
                        InArr:=_InArr(a[i]+a[j]);
                        if InArr>0 then
                                begin
                                inc(dem);
                                mx:=Max(mx,a[i]+a[j]+a[InArr]);
                                end;
                        end;
          end;
Procedure _Out;
          var   f:Text;
          begin
          assign(f,'TamHop.out');rewrite(f);
          writeln(f,dem);write(f,mx); close(f);
          end;
begin
Load;
Pr;
_Out;
end.
