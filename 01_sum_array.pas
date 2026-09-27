program sum_array;
uses crt;
type
 IntArray= array[1..5] of integer;
var
 i, sum: integer;
 numbers: IntArray;
begin
 clrscr;
 sum:= 0;
 numbers[1]:=3;
 numbers[2]:=7;
 numbers[3]:=2;
 numbers[4]:=4;
 numbers[5]:=5;
 for i:=1 to 5 do
  sum:= sum + numbers[i];
 writeln('sum= ', sum);
 readln;
end.
