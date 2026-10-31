program balik_kalimat;
uses crt;
const
  Elemen = 255;
type
  typearray = string[Elemen];
  typeStack = record
    Isi: typearray;
    Atas: 0..Elemen;
  end;
var
  T: typeStack;
  I: integer;
  Kalimat: typearray;
procedure BuatStack(var T: typeStack);
begin
  T.Atas := 0;
end;
procedure PUSH(var T: typeStack; X: char);
begin
  if T.Atas < Elemen then
  begin
    T.Atas := T.Atas + 1;
    T.Isi[T.Atas] := X;
  end;
end;
function POP(var T: typeStack): char;
begin
  if T.Atas > 0 then
  begin
    POP := T.Isi[T.Atas];
    T.Atas := T.Atas - 1;
  end
  else
    POP := #0;
end;
begin
  clrscr;
  BuatStack(T);
  writeln('TUMPUKAN UNTUK MEMBALIK KALIMAT');
  writeln('--------------------------------');
  writeln;
  write('Isikan sembarang kalimat: '); readln(Kalimat);
  clrscr;
  writeln('KALIMAT ASLI:');
  writeln(Kalimat);
  writeln;
  writeln('SETELAH DIBALIK:');
  for I := 1 to length(Kalimat) do
    PUSH(T, Kalimat[I]);
  for I := 1 to length(Kalimat) do
    write(POP(T));
  writeln;
  readln;
end.