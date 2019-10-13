Procedure _Out;
          var   f:Text;
          begin
          assign(f,'DUTIEC.OUT');rewrite(f);
          write(f,4);
          close(f);
          end;
begin
_Out;
end.