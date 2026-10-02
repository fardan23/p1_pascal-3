program data_mahasiswa;
uses crt;
type
  Mahasiswa = record
    nama  : string;
    npm   : string;
    kelas : string;
  end;
var data: array[1..100] of Mahasiswa; n, i: integer;
begin
  clrscr; writeln('INPUT DATA');
  write('Masukkan banyak data: '); readln(n); writeln;
  for i := 1 to n do
  begin
    write('Masukkan Nama ke-', i, ': '); readln(data[i].nama);
    write('Masukkan NPM ke-', i, ': '); readln(data[i].npm);
    write('Masukkan Kelas ke-', i, ': '); readln(data[i].kelas);
    writeln;
  end;
  writeln('DATA MAHASISWA');
  for i := 1 to n do
  begin
    writeln('Nama ke-', i, ': ', data[i].nama);
    writeln('NPM ke-', i, ': ', data[i].npm);
    writeln('Kelas ke-', i, ': ', data[i].kelas); writeln;
  end; readln; end.
