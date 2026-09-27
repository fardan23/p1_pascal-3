program array_duadimensi;
uses crt;
var i,j: byte;
    arr1,arr2,arr3: array[1..10,1..10] of integer;
begin
 clrscr;
 arr1[1,1]:=2;arr1[1,2]:=1;arr1[1,3]:=2;
 arr1[2,1]:=1;arr1[2,2]:=1;arr1[2,3]:=1;
 arr1[3,1]:=2;arr1[3,2]:=1;arr1[3,3]:=2;
 arr2[1,1]:=1;arr2[1,2]:=2;arr2[1,3]:=3;
 arr2[2,1]:=1;arr2[2,2]:=2;arr2[2,3]:=3;
 arr2[3,1]:=1;arr2[3,2]:=2;arr2[3,3]:=3;
 for i:=1 to 3 do {perkalian matrik}
  for j:=1 to 3 do
   arr3[i,j]:=arr1[i,j]*arr2[i,j];
  writeln('Hasil perkalian');
 for i:=1 to 3 do
  for j:=1 to 3 do
  begin
   writeln('Data ke ', i, '-', j, ': ', arr3[i,j]);
  end;
 readln;
end.
