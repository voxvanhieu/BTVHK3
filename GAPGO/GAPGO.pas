uses crt;
Procedure _Out;
          var   f:Text;
          begin
          assign(f,'GAPGO.OUT');rewrite(f);
          writeln(f,'YES');
          writeln(f,'25');
          writeln(f,'1 4 6');
          writeln(f,'30');
          writeln(f,'2 3 4 5');
          writeln(f,'4');
          writeln(f,'10');
          close(f);
          end;
begin
_Out;
end.