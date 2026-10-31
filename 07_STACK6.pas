program STACK6;
uses crt;
const
  max = 100;
type
  tumpukan = record
    banyak: 0..max;
    elemen: array[1..max] of string;
  end;
var
  s: tumpukan;
  data: string;
procedure BuatStack(var s: tumpukan);
begin
  s.banyak := 0;
end;
function Penuh(s: tumpukan): boolean;
begin
  Penuh := s.banyak = max;
end;
function Kosong(s: tumpukan): boolean;
begin
  Kosong := s.banyak = 0;
end;
procedure PUSH(data: string; var s: tumpukan);
begin
  if not Penuh(s) then
  begin
    s.banyak := s.banyak + 1;
    s.elemen[s.banyak] := data;
    writeln('Push: ', data);
  end
  else
    writeln('Stack Penuh');
end;
procedure POP(var s: tumpukan; var data: string);
begin
  if not Kosong(s) then
  begin
    data := s.elemen[s.banyak];
    writeln('Pop: ', data);
    s.banyak := s.banyak - 1;
  end
  else
    writeln('Stack Kosong');
end;
begin
  clrscr;
  BuatStack(s);
  writeln('PROGRAM STACK');
  writeln('-------------');
  PUSH('A', s);
  PUSH('B', s);
  PUSH('C', s);
  PUSH('D', s);
  PUSH('E', s);
  writeln;
  writeln('Mengambil elemen dari stack:');
  POP(s, data);
  POP(s, data);
  readln;
end.
