program BINAHKONVATA;
uses crt;
var bil : integer;
    bin : string;

function dec2bin(dec : integer) : string; // dibatasi maximum angka 32 bit
var res,tmp : string;
    i,j : integer;
begin
  j := 0;
  while( dec > 0 ) do
         begin
           if(dec mod 2 = 0) then
                  res := res + '0'
           else
                  res := res + '1';
           dec := dec div 2;
           j := j + 1;
         end;
  for i := j downto 1 do
      begin
        tmp := tmp + res[i];
      end;

  dec2bin := tmp;
end;

begin
  clrscr;
  write('input dec : ');readln(bil);
  writeln('output bin : ',dec2bin(bil));
  readkey
end.

