program nomor3;

uses crt;

var i      : integer;
    blabla : string;

begin
     clrscr;
     repeat
           write('teks : ');readln(blabla);
           if(i = 1) and (blabla <> 'stop') then
                i := 0
           else
              i := i + 1;
     until i = 2;
end.

