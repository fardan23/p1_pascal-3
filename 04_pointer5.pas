program pointer5;
uses crt;
var
  p,q,r,s: ^string;
  nilai: string;
begin
  clrscr;
  nilai := 'ini string nilai!!!';
  p := @nilai;
  new(q);
  q^ := 'ini isi pointer q!!!';
  r := q;
  new(s);
  s^ := q^;
  writeln('alamat pointer p=', seg(p^):4, ':', ofs(p^):4, '; isi pointer p = ', p^);
  writeln('alamat pointer q=', seg(q^):4, ':', ofs(q^):4, '; isi pointer q = ', q^);
  writeln('alamat pointer r=', seg(r^):4, ':', ofs(r^):4, '; isi pointer r = ', r^);
  writeln('alamat pointer s=', seg(s^):4, ':', ofs(s^):4, '; isi pointer s = ', s^);
  readln;
  dispose(q);
  dispose(s);
end.