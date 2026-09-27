program record_program2;
uses crt;
type tanggal = record
 bulan,hari,tahun: integer;
end;
var waktu: tanggal;
begin
 clrscr;
 with waktu do
 begin
  hari:=25;
  bulan:=09;
  tahun:=1983;
  writeln('hari ini adalah ', hari, ':', bulan, ':', tahun);
 end;
 readln;
end.
