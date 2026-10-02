program pointer4;
uses crt;
var
 firstname, lastname: ^string;
begin
 clrscr;
 new(firstname); new(lastname);
 firstname^:= 'Muhamad';
 lastname^:= 'Fardan';
 firstname^:= lastname^;
 lastname^:= 'Fardan';
 writeln(firstname^);
 writeln(lastname^);
 dispose(firstname); dispose(lastname);
 readln;
end.