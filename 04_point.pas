program point;
uses crt;
type tipestring = string[15];
 penunjukstring = ^tipestring;
var
 nama: penunjukstring;
begin
 clrscr;
 new(nama);
 nama^:= 'turbo pascal';
 writeln(nama^);
 dispose(nama);
 readln;
end.