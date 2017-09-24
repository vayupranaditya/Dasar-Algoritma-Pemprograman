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

var n:integer;

begin
  clrscr;
  write('masukan nilai n : ');readln(n);
  write(CheckPrime(n));
  readkey;
end.

