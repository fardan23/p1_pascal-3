program matrik;
uses crt;
var
 tabel: array[1..3,1..2] of byte;
 i,j: byte;
begin
 clrscr;
 tabel[1,1]:=5;
 tabel[1,2]:=25;
 tabel[2,1]:=200;
 tabel[2,2]:=22;
 tabel[3,1]:=75;
 tabel[3,2]:=50;
 for i:=1 to 3 do
 begin
  for j:=1 to 2 do
   write(tabel[i,j]:10);
  writeln;
 end;
 readln;
end.