program pointer2;
uses crt;
type Pemployee= ^Temployee;
Temployee = record
 Name: string[10];
 Position: string;
 Salary: longint;
end;
var p: Pemployee;
begin
 clrscr;
 new(p);
 p^.name:= 'fardan';
 p^.position:= 's';
 p^.salary:= 3000;
 writeln(p^.name, ' ', p^.position, ' ', p^.salary);
 readln;
 dispose(p);
 readln;
end.