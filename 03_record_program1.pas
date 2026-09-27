program record_program1;
uses crt;
type tanggal = record
 bulan,hari,tahun: integer;
end;
var waktu: tanggal;
begin
 clrscr;
 waktu.hari:=25;
 waktu.bulan:=09;
 waktu.tahun:=1983;
 writeln('hari ini adalah ', waktu.hari, ':', waktu.bulan, ':', waktu.tahun);
 readln;
end.