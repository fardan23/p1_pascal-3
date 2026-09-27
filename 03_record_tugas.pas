program record_tugas; uses crt;
type
  data = record
    nim, nama: string; tugas, uts, uas: integer;
    nilai_akhir: real; grade: char;
  end;
var mahasiswa: array[1..100] of data; i, n: integer;
begin
  clrscr; write('Banyak data yang akan dimasukkan: '); readln(n);
  for i := 1 to n do begin
    writeln; writeln('Data ke-', i, ':'); write('NIM   : '); readln(mahasiswa[i].nim);
    write('Nama  : '); readln(mahasiswa[i].nama); write('Tugas : '); readln(mahasiswa[i].tugas);
    write('UTS   : '); readln(mahasiswa[i].uts); write('UAS   : '); readln(mahasiswa[i].uas);
    mahasiswa[i].nilai_akhir := (mahasiswa[i].tugas + mahasiswa[i].uts + mahasiswa[i].uas) / 3;
    if mahasiswa[i].nilai_akhir >= 80 then mahasiswa[i].grade := 'A'
    else if mahasiswa[i].nilai_akhir >= 70 then mahasiswa[i].grade := 'B'
    else if mahasiswa[i].nilai_akhir >= 60 then mahasiswa[i].grade := 'C'
    else if mahasiswa[i].nilai_akhir >= 50 then mahasiswa[i].grade := 'D'
    else mahasiswa[i].grade := 'E'; end;
  writeln('-------------------------------------------------------------------------------');
  writeln('NO':3,'NIM':15,'NAMA':20,'TUGAS':8,'UTS':6,'UAS':6,'NILAI AKHIR':13,'GRADE':7);
  writeln('-------------------------------------------------------------------------------');
  for i := 1 to n do begin
    writeln(i:3,mahasiswa[i].nim:15,mahasiswa[i].nama:20,mahasiswa[i].tugas:8,mahasiswa[i].uts:6,
      mahasiswa[i].uas:6,mahasiswa[i].nilai_akhir:13:2,mahasiswa[i].grade:7);
  end; readln; end.