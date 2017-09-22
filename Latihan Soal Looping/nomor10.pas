program nomor10;

uses crt;

var i,bil,sum:integer;

begin
  clrscr;
  i:= 1;
  repeat
    write('Masukan Angka ke-',i,' : ');readln(bil);
    sum := sum + bil;
    i := i + 1;
  until sum > 100 ;
  writeln('SELESAI TOTAL = ',sum);
  readkey;
end.

