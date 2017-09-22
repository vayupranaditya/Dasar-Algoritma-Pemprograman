program nomor9;

uses crt;

var i,bil,sum:integer;

begin
  clrscr;
  i:= 1;
  write('Masukan Angka ke-',i,' : ');readln(bil);
  while(bil >= 0) do
  begin
    sum := sum + bil;
    i := i + 1;
    write('Masukan Angka ke-',i,' : ');readln(bil);
  end;
  writeln('Total = ',sum);
  readkey;
end.

