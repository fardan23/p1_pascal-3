program pointer1;
uses crt;
var p: ^integer;
    m,n: integer;
begin
 clrscr;
 new(p);
 m:= 10;
 n:= 15;
 p:= @m;
 p^:= 12;
 p:= @n;
 p^:= m;
 writeln('m=',m, ',n=',n);
 readln;
 dispose(p);
 readln;
end.

