program nomor8;
uses crt;

var bil,i,sum : integer;

begin
  clrscr;
  for i := 1 to 5 do
      begin
        write('Masukan Angka ke-',i,' : ');readln(bil);
        sum := sum + bil;
      end;
  writeln('Total = ',sum);
  readkey;
end.

