program pointer3;
uses crt;
var
 firstname, lastname: string;
begin
 clrscr;
 firstname:= 'Muhamad';
 lastname:= 'Fardan';
 firstname:= lastname;
 lastname:= 'Fardan';
 writeln(firstname);
 readln;
end.