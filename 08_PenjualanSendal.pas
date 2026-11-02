Program PenjualanSendal;
uses crt;
const
  HargaSendal = 50000;
  MaxData     = 100;
type
  TPembeli = record
    nama   : string[20];
    banyak : integer;
    jumlah : longint;
    diskon : longint;
    total  : longint;
  end;
var
  pembeli : array[1..MaxData] of TPembeli;
  n, i    : integer;
function Titik(x : longint) : string;
var
  s, r : string;
  k, c : integer;
begin
  str(x, s);
  r := '';
  c := 0;
  for k := length(s) downto 1 do
  begin
    if (c > 0) and (c mod 3 = 0) then
      r := '.' + r;
    r := s[k] + r;
    inc(c);
  end;
  Titik := r;
end;
function Kiri(s : string; w : integer) : string;
begin
  while length(s) < w do
    s := s + ' ';
  Kiri := s;
end;
var sNo : string;
begin
  clrscr;
  write('Masukan Jumlah Pembeli : '); readln(n);
  for i := 1 to n do
  begin
    writeln('Pembeli ke  : ', i);
    with pembeli[i] do
    begin
      write('Nama        : ');
      readln(nama);
      write('Jumlah      : ');
      readln(banyak);

      jumlah := banyak * HargaSendal;
      if jumlah >= 500000 then
        diskon := jumlah * 20 div 100
      else
        diskon := 0;
      total := jumlah - diskon;
    end;
  end;
  writeln;
  writeln('                         Daftar Pembelian');
  writeln('Harga 1 Sendal = Rp ', Titik(HargaSendal), ',-');
  writeln('-------------------------------------------------------------------------');
  write(Kiri('No', 4));
  write(Kiri('Nama', 22));
  write('Banyaknya':9);
  write('Jumlah':12);
  write('Discount':12);
  writeln('Total':12);
  writeln('-------------------------------------------------------------------------');
  for i := 1 to n do
  begin
    with pembeli[i] do
    begin
      str(i, sNo);
      write(Kiri(sNo + '.', 4));
      write(Kiri(nama, 22));
      write(banyak:9);
      write(Titik(jumlah):12);
      write(Titik(diskon):12);
      writeln(Titik(total):12);
    end;
  end;
  writeln('-------------------------------------------------------------------------');
  readln;
end.