program pointer_deklarasi;
uses crt;
var p: ^integer;
    nilai: integer;
begin
 clrscr;
 nilai:= 12;
 p:= @nilai;
 writeln(p^);
 p^:=100;
 writeln(p^);
 writeln(nilai);
 readln;
end.