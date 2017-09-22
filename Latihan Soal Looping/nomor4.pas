program nomor4;

uses crt;

var
  bil,i,life: integer;

begin
  clrscr;
  life := 5;
  i:= 1;
  writeln('TEBAK ANGKA AJAIB');
  writeln('NYAWA ANDA 5');
  write('Masukan Tebakan ke-',i,' Anda : ');readln(bil);
  while(bil <> 999) and ( life >1) do
        begin
        if(bil <= 1000) then
               begin
               life := life - 1;
               writeln('Maaf salah, Nyawa sisa ',life);
               i := i + 1;
               end
        else
               writeln('Maaf Angka harus kurang dari 1000,Nyawa sisa ',life);
        write('Masukan Tebakan ke-',i,' Anda : ');readln(bil);
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

