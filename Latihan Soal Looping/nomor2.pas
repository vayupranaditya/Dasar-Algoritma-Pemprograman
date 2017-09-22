program nomor2;

uses crt;

var
  bil,i: integer;

begin
  clrscr;
  writeln('TEBAK ANGKA AJAIB');
  while(bil <> 999) do
        begin
        writeln('Maaf salah');
        write('Masukan Tebakan Anda : ');readln(bil);
        i := i + 1;
        end;
  writeln('ANDA BENAR PADA TEBAKAN KE ',i);
  readkey;
end.

