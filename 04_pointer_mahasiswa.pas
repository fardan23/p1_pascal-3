program pointer_mahasiswa;
uses crt;
var
  nama, npm: string;
  pNama, pNPM: ^string;
begin
  clrscr;
  write('Input Nama Mahasiswa: ');
  readln(nama);
  write('Input NPM Mahasiswa: ');
  readln(npm);
  pNama := @nama;
  pNPM := @npm;
  writeln;
  writeln('Nama Mahasiswa = ', pNama^);
  writeln('Alamat Memori Nama Mahasiswa adalah = ', NativeInt(pNama));
  writeln;
  writeln('NPM Mahasiswa = ', pNPM^);
  writeln('Alamat Memori NPM Mahasiswa adalah = ', NativeInt(pNPM));
  readln;
end.