uses crt;
var
Procedure Load;
          var   f:text;
          begin
          assign(f,'bracket.inp');reset(f);
          readln(f,s); close(f);
          end;
Function  TrueBracket(s:string):boolean;
          var
          begin

          end;
Procedure Pr;
          var
          begin
          if TrueBracket(s) then _Out('DUNG', s) else
                begin


                end;
          end;
begin
Load;
Pr;
end.