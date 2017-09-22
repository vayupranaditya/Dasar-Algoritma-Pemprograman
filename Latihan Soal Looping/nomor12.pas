program nomor12;
uses crt;

var N,i,j:integer;

begin
     clrscr;
     write('masukan N : ');readln(N);
     for i := 1 to N do
         begin
         for j := 1 to N do
             write(j);
         writeln;
         end;
     readkey;
end.

