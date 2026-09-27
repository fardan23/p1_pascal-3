program P0503;
uses crt;
const kolom=3; baris=3;
type matriks=array[1..baris,1..kolom] of integer;
var aku: matriks;
procedure isi_matrik(m,n:integer);
var i,j: integer;
begin
 for i:=1 to m do begin
  for j:=1 to n do begin read(aku[i,j]); end;
 readln; end;
end;
procedure tulis_matrik(m,n:integer);
var i,j: integer;
begin
 for i:=1 to m do begin
  for j:=1 to n do begin write(aku[i,j]:6) end;
 writeln; end;
end;
begin
 clrscr;
 isi_matrik(kolom,baris);
 tulis_matrik(kolom,baris);
 readln;
end.
