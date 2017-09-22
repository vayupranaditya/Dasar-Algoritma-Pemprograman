program nomor7;

uses crt;

var bil:integer;

begin
  clrscr;
  write('Masukan Angka: ');readln(bil);
  while(bil < 100) and (bil > 1 ) do
        begin
        writeln('Betul');
        write('Masukan Angka: ');readln(bil);
        end;
  writeln('SALAH');
  readkey;
end.

