program contoh_deklarasi_array_konstan;
uses crt;
const
 tetap: array[1..4] of integer=(7,10,21,20);
var
 i: integer;
begin
 clrscr;
 for i:=1 to 4 do
 writeln('Nilai Konstan array ke', i:2, '= ', tetap[i]);
 readln;
end.