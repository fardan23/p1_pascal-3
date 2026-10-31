program MFardan_769;
uses crt;
const
  HARGA = 40000;
  MAKS = 50;
type
  Pembeli = record
    nama     : string[20];
    banyak   : integer;
    jmlHarga : longint;
    diskon   : longint;
    total    : longint;
  end;
var
  data : array[1..MAKS] of Pembeli;
  n, i : integer;
  strDiskon : string;
function Ribuan(x : longint) : string;
var
  s, hasil : string;
  j, hitung : integer;
begin
  str(x, s);
  hasil := '';
  hitung := 0;
  for j := length(s) downto 1 do
  begin
    hasil := s[j] + hasil;
    hitung := hitung + 1;
    if (hitung mod 3 = 0) and (j > 1) then
      hasil := '.' + hasil;
  end;
  Ribuan := hasil;
end;
begin
  clrscr;
  write('Masukan Jumlah Pembeli : '); readln(n); writeln;
  for i := 1 to n do
  begin
    writeln('Masukan data ke ', i);
    write('Nama      : '); readln(data[i].nama);
    write('Banyaknya : '); readln(data[i].banyak);
    data[i].jmlHarga := data[i].banyak * HARGA;
    if data[i].jmlHarga >= 300000 then
      data[i].diskon := data[i].jmlHarga * 15 div 100
    else
      data[i].diskon := 0;
    data[i].total := data[i].jmlHarga - data[i].diskon;
    writeln;
  end;
  writeln('DAFTAR PEMBELIAN PAYUNG'); writeln;
  writeln('No. Nama                 Banyaknya   Jumlah Harga    Discount   Total Bayar');
  writeln('==========================================================================');
  for i := 1 to n do
  begin
    if data[i].diskon = 0 then
      strDiskon := '0.00'
    else
      strDiskon := Ribuan(data[i].diskon);
    write(i:2, '.  ');
    write(data[i].nama:20);
    write(data[i].banyak:10);
    write(Ribuan(data[i].jmlHarga):15);
    write(strDiskon:12);
    writeln(Ribuan(data[i].total):14);
  end;
  writeln('==========================================================================');
  readln;
end.