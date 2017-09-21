program nomor1;

uses crt, unit1;

var x,res:integer;

begin
  clrscr;
  res := 1;
  write('input : ');readln(x);
  write('output : ');
  repeat
        write(x);
        if(x <> 1) then
             write(' x ');
        res := res * x;
        x := x - 1;
  until x = 0;
  writeln(' = ',res);

  readkey;
end.


