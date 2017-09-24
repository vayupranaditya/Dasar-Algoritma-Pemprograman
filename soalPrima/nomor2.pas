program nomor2;

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

var n,i,a,b:integer;
    Res : boolean;

begin
  clrscr;
  write('masukan nilai n : ');readln(n);
  i := 1;
  Res := False;
  While(i < n div 2) and not(Res) do
      begin
      a := i;
      b := n - a;
      Res := CheckPrime(a) and CheckPrime(b);
      i := i + 1;
      end;
  if(Res) then
          writeln(n,' = ',a,' + ',b,' ,hasil penjumlahan dua bilangan prima')
  else
          writeln('bukan hasil penjumlahan dua bilangan prima');
  readkey;
end.

