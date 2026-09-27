program record_latihan;
uses crt;
type data = record
 nim, nama: string;
 usia, saudara: integer;
end;
var mahasiswa: data; i,n: integer;
begin
 clrscr;
 write('Banyak data yang akan dimasukkan: '); readln(n);
 with mahasiswa do
 begin
  for i:=1 to n do
  begin
   writeln('Data ke-', i, ':');
   write('NIM: '); readln(nim);
   write('Nama: '); readln(nama);
   write('Usia: '); readln(usia);
   write('Saudara: '); readln(saudara);
  end;
 end;
 readln;
end.
