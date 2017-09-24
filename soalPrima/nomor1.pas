program nomor1;

uses crt;

function CheckPrime(x:integer):boolean;

var
         Dividable:boolean;
         i:integer;

begin
  Dividable := false ;
  if(x = 1) then
       Dividable := true
  else
      if(x = 2) then
           Dividable := false
      else
          begin
            i := 2;
            while(i < x) and not(Dividable) do
                      begin
                      Dividable := (x mod i = 0);
                      i := i+1;
                      end;
          end;
  CheckPrime := not Dividable;


end;

var a,b,i:integer;

begin
  clrscr;
  write('masukan nilai a : ');readln(a);
  write('masukan nilai b : ');readln(b);
  while(a < b) do
            begin
            writeln('nilai harus a > b');
            write('masukan nilai a : ');readln(a);
            write('masukan nilai b : ');readln(b);
            end;
  write('bilangan prima antara a ke b : ');
  for i := a downto b do
      begin
      if(CheckPrime(i)) then
           write(i,' ');
      end;
  writeln;
  readkey;
end.

