program nomo3;    //nomor3

uses crt;

var a,b:integer;

function fact(x:integer):integer;
var i,sum:integer;
begin
     sum := 1;
     for i := 1 to x do
         sum := sum * i;
     fact := sum;
end;

function permutasi(n,r:integer):real;
begin
     permutasi := fact(n) / fact(n-r);
end;


function kombinasi(n,r:integer):real;
begin
     kombinasi := fact(n) / (fact(n-r) * fact (r));
end;

begin
    clrscr;
    write('masukan n : ');readln(a);
    write('masukan r : ');readln(b);
    writeln;
    writeln('permutasi(',a,',',b,') = ',permutasi(a,b):0:2);
    writeln('kombinasi(',a,',',b,') = ',kombinasi(a,b):0:2);
    readkey;
end.

