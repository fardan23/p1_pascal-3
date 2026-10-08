program LIFO; uses crt;
type
  Point = ^RecPoint;
  RecPoint = record
    Isi: string;
    Next, pre: Point;
  end;
var Head, Tail, Now: Point;
procedure Create;
begin
  Head := nil;
  Tail := nil;
end;
procedure Find_First;
begin
  Now := Head;
  if Now <> nil then
    write(Now^.Isi);
end;
procedure Find_Next;
begin
  if (Now <> nil) and (Now^.Next <> nil) then
    Now := Now^.Next;
  if Now <> nil then
    write(Now^.Isi);
end;
procedure Insert(elemen: string);
var
  Baru: Point;
begin
  New(Baru);
  Baru^.Isi := elemen;
  Baru^.Next := Head;
  Baru^.pre := nil;
  if Head <> nil then
    Head^.pre := Baru
  else
    Tail := Baru;
  Head := Baru;
end;
begin
  ClrScr;
  Create;
  Insert('tv');
  Insert('vcd');
  Insert('compo');
  writeln;
  write('Data pertama : ');
  Find_First;
  writeln;
  write('Data berikutnya : ');
  Find_Next; readln; end.