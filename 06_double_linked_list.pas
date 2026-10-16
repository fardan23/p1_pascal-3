Program DoubleLinkedList;
uses crt;
Type
  PSimpul = ^Simpul;
  Simpul = Record
    Info : Char;
    Prev : PSimpul;
    Next : PSimpul;
  End;

Var
  Head   : PSimpul;
  Pilih  : Integer;
  Elemen : Char;
  Acuan  : Char;
  Baris  : String;
  Kode   : Integer;

{ ---------- Inisialisasi ---------- }
Procedure Inisialisasi(Var Head : PSimpul);
Begin
  New(Head);
  Head^.Info := ' ';      { simpul kepala hanya sentinel, bukan data }
  Head^.Prev := Head;
  Head^.Next := Head;
End;

{ ---------- Tambah ---------- }
Procedure Tambah(Var Head : PSimpul; Elemen : Char);   { di belakang }
Var Temp : PSimpul;
Begin
  New(Temp);
  Temp^.Info := Elemen;
  Temp^.Prev := Head^.Prev;
  Temp^.Next := Head;
  Head^.Prev^.Next := Temp;
  Head^.Prev := Temp;
End;

Procedure TambahDepan(Var Head : PSimpul; Elemen : Char);
Var Temp : PSimpul;
Begin
  New(Temp);
  Temp^.Info := Elemen;
  Temp^.Next := Head^.Next;
  Temp^.Prev := Head;
  Head^.Next^.Prev := Temp;
  Head^.Next := Temp;
End;

Procedure TambahTengah(Var Head : PSimpul; ElemenBaru, ElemenAcuan : Char);
Var Temp, P : PSimpul;
Begin
  P := Head^.Next;
  While (P <> Head) and (P^.Info <> ElemenAcuan) do
    P := P^.Next;

  If P <> Head Then
  Begin
    New(Temp);
    Temp^.Info := ElemenBaru;
    Temp^.Next := P^.Next;
    Temp^.Prev := P;
    P^.Next^.Prev := Temp;
    P^.Next := Temp;
  End
  Else
    Writeln('Elemen acuan tidak ditemukan!');
End;

{ ---------- Hapus ---------- }
Procedure Hapus(Var Head : PSimpul; Elemen : Char);
Var Temp : PSimpul;
Begin
  If Head^.Next = Head Then
    Writeln('Double Linked list Masih Kosong')
  Else
  Begin
    Temp := Head;
    { Memulai proses pencarian elemen yang akan dihapus }
    Repeat
      Temp := Temp^.Next;
    Until (Temp = Head) or (Temp^.Info = Elemen);

    If Temp <> Head Then
    Begin
      Temp^.Prev^.Next := Temp^.Next;
      Temp^.Next^.Prev := Temp^.Prev;
      Dispose(Temp);
      Writeln('Simpul berhasil dihapus.');
    End
    Else
      Writeln('Simpul Tidak di ketemukan !');
  End;
End;

Procedure HapusDepan(Var Head : PSimpul);
Var Temp : PSimpul;
Begin
  If Head^.Next = Head Then
    Writeln('Double Linked list Masih Kosong')
  Else
  Begin
    Temp := Head^.Next;
    Head^.Next := Temp^.Next;
    Temp^.Next^.Prev := Head;
    Dispose(Temp);
    Writeln('Simpul depan berhasil dihapus.');
  End;
End;

{ ---------- Baca ---------- }
{ BacaMaju : mulai dari Head^.Prev (elemen paling akhir), menelusuri lewat Prev }
Procedure BacaMaju(Head : PSimpul);
Var Temp : PSimpul;
Begin
  If Head^.Next = Head Then
    Write('(list kosong)')
  Else
  Begin
    Temp := Head^.Prev;
    Repeat
      Write(Temp^.Info, ' ');
      Temp := Temp^.Prev;
    Until (Temp = Head);
  End;
  Writeln;
End;

{ BacaMundur : mulai dari Head^.Next (elemen pertama), menelusuri lewat Next }
Procedure BacaMundur(Head : PSimpul);
Var Temp : PSimpul;
Begin
  If Head^.Next = Head Then
    Write('(list kosong)')
  Else
  Begin
    Temp := Head^.Next;
    Repeat
      Write(Temp^.Info, ' ');
      Temp := Temp^.Next;
    Until (Temp = Head);
  End;
  Writeln;
End;

{ ---------- Bantuan input ---------- }
Function BacaKarakter(Pesan : String) : Char;
Var S : String;
Begin
  Write(Pesan);
  Readln(S);
  If Length(S) > 0 Then
    BacaKarakter := S[1]
  Else
    BacaKarakter := ' ';
End;

Procedure Menu;
Begin
  Writeln;
  Writeln('=== CIRCULAR HEADER DOUBLE LINKED LIST ===');
  Writeln('1. Tambah di belakang');
  Writeln('2. Tambah di depan');
  Writeln('3. Tambah di tengah (setelah elemen acuan)');
  Writeln('4. Hapus di depan');
  Writeln('5. Hapus berdasarkan elemen (tengah)');
  Writeln('6. Baca Mundur (kiri ke kanan, lewat Next)');
  Writeln('7. Baca Maju   (lewat Prev, mulai dari elemen akhir)');
  Writeln('0. Keluar');
  Write('Pilih: ');
End;

Procedure HapusSemua(Var Head : PSimpul);
Begin
  While Head^.Next <> Head Do
    HapusDepan(Head);
  Dispose(Head);
End;

Begin
  clrscr;
  Inisialisasi(Head);
  Repeat
    Menu;
    Readln(Baris);
    Val(Baris, Pilih, Kode);
    Case Pilih of
      1 : Begin
            Elemen := BacaKarakter('Masukkan 1 karakter: ');
            Tambah(Head, Elemen);
          End;
      2 : Begin
            Elemen := BacaKarakter('Masukkan 1 karakter: ');
            TambahDepan(Head, Elemen);
          End;
      3 : Begin
            Elemen := BacaKarakter('Karakter baru   : ');
            Acuan  := BacaKarakter('Setelah karakter: ');
            TambahTengah(Head, Elemen, Acuan);
          End;
      4 : HapusDepan(Head);
      5 : Begin
            Elemen := BacaKarakter('Karakter yang dihapus: ');
            Hapus(Head, Elemen);
          End;
      6 : Begin
            Write('Isi list (Next): ');
            BacaMundur(Head);
          End;
      7 : Begin
            Write('Isi list (Prev): ');
            BacaMaju(Head);
          End;
      0 : Writeln('Selesai.');
    Else
      Writeln('Pilihan tidak valid.');
    End;
  Until Pilih = 0;
  HapusSemua(Head);
  readln;
End.
