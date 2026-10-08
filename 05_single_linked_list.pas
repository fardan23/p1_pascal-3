program single_linked_list;
uses CRT;
type
  Simpul = ^Data;
  Data = record
    Nama: string[25];
    Kait: Simpul;
  end;
var
  Awal, Akhir, Bantu: Simpul;
  Ya: char;
begin
  ClrScr;
  Awal := nil;
  Akhir := nil;
  Ya := 'Y';
  while Ya in ['Y', 'y'] do
  begin
    New(Bantu);
    write('Masukkan Nama: ');
    readln(Bantu^.Nama);
    Bantu^.Kait := nil;
    write('Tambah data lagi [Y/N]? ');
    readln(Ya);
    writeln;
    if Awal = nil then
    begin
      Awal := Bantu;
      Akhir := Bantu;
    end
    else
    begin
      Akhir^.Kait := Bantu;
      Akhir := Bantu;
    end;
  end;
  Bantu := Awal;
  writeln('Daftar Nama:');
  while Bantu <> nil do
  begin
    writeln(Bantu^.Nama);
    Bantu := Bantu^.Kait;
  end;
  readln;
end.