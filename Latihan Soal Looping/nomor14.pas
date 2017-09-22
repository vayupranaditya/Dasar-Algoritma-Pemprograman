program nomor14;

uses crt;

var i,bil:integer;

begin
  clrscr;
  write('Masukan Angka : ');readln(bil);
  while(bil <> 0) do
  begin
  write('Angka cacahnya adalah : ');
  for i := 1 to bil do write(i, ' ');
  writeln;
  write('Masukan Angka : ');readln(bil);
  end;
  writeln('SELESAI');
  readkey;
end.

