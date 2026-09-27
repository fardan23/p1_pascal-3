program contoh_array;
uses crt;
var a: array[1..10] of byte;
begin
 clrscr;
 a[1]:=10;
 a[2]:=15;
 a[3]:=a[1]+a[2];
 writeln(a[1]);
 writeln(a[2]);
 writeln(a[3]);
 readln;
end.
