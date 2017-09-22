program nomor3;

uses crt;

var
  bil,i,life: integer;

begin
  clrscr;
  life := 5;
  i := 1;
  writeln('TEBAK ANGKA AJAIB');
  writeln('NYAWA ANDA 5');
  write('Masukan Tebakan Anda : ');readln(bil);
  while(bil <> 999) and (life > 1) do
        begin
        life := life - 1;
        writeln('Maaf salah, Nyawa sisa ',life);
        write('Masukan Tebakan Anda : ');readln(bil);
        i := i + 1;
        end;
  if(life <> 0) then
          begin
          writeln('ANDA BENAR PADA TEBAKAN KE ',i);
          writeln('SISA NYAWA ',life);
          end
  else
      writeln('nyawa anda habis');
  readkey;
end.

