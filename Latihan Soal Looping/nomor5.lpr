program nomor5;

uses crt;

var bil:integer;

begin
  clrscr;
  write('Masukan Angka 0: ');readln(bil);
  while(bil = 0) do
        begin
        writeln('Betul');
        write('Masukan Angka 0: ');readln(bil);
        end;
  writeln('SALAH');
  readkey;
end.


