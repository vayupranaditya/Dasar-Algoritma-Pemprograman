program nomor6;

uses crt;

var bil:integer;

begin
  clrscr;
  write('Masukan Angka: ');readln(bil);
  while(bil > 0) do
        begin
        writeln('Betul');
        write('Masukan Angka: ');readln(bil);
        end;
  writeln('angka tsb  bukan positif');
  readkey;
end.

