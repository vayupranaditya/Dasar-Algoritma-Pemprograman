program nomor13;
uses crt;

var N,i,j:integer;

begin
     clrscr;
     write('masukan N : ');readln(N);
     for i := N downto 1 do
         begin
         for j := 1 to i do
             write(j);
         writeln;
         end;
     readkey;
end.


