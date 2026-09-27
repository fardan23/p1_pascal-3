program array_satudimensi;
uses crt;
type
 IntArray= array[1..5] of integer;
var
 i, n: integer;
 numbers: IntArray;
begin
 clrscr;
 write('banyak data: '); readln(n);
 for i:=1 to n do
 begin
  write('masukkan nilai ', i, ': ');
  readln(numbers[i]);
 end;
 writeln('data yang anda masukan:');
 for i:=1 to n do
  writeln('nilai ', i, ': ', numbers[i]);
 readln;
end.
