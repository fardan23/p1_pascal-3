program perkalian_dua_matrik;
uses crt;
var jb,jk,i,j: byte;    arr1,arr2,arr3: array[1..10,1..10] of integer;
begin
 clrscr; write('Jumlah baris: '); readln(jb); write('Jumlah kolom: '); readln(jk);
 writeln('Data Matrik 1');
 for i:=1 to jb do
  for j:=1 to jk do
  begin write('Data ke ', i, '-', j, ': '); readln(arr1[i,j]); end;
  writeln('Data Matrik 2');
 for i:=1 to jb do
  for j:=1 to jk do
  begin write('Data ke ', i, '-', j, ': '); readln(arr2[i,j]); end;
 for i:=1 to jb do {perkalian matrik}
  for j:=1 to jk do
   arr3[i,j]:=arr1[i,j]*arr2[i,j];
  writeln('Hasil perkalian');
 for i:=1 to jb do
  for j:=1 to jk do
  begin
   writeln('Data ke ', i, '-', j, ': ', arr3[i,j]);
  end;
 readln;
end.
