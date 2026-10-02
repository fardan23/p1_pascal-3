program pointer_new_dispose;
uses crt;
var I: integer;
    Pti: ^integer;
begin
 clrscr;
 i:= 5;
 new(pti);
 pti^:= 10;
 writeln('nilai yang ditunjuk pti= ', pti^);
 dispose(pti);
 readln;
end.