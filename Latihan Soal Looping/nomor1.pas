program nomor1;

uses crt;

var
  bil: integer;

begin
  clrscr;
  writeln('TEBAK ANGKA AJAIB');
  write('Masukan Tebakan Anda : ');readln(bil);
  while( bil <> 999) do
        begin
        writeln('Maaf salah');
        write('Masukan Tebakan Anda : ');readln(bil);
        end;
  writeln('ANDA BENAR');
  readkey;
end.

