program DiamonChallenge;

uses crt;

var
   i,j,n:integer;

begin
     readln(n);
     for i := 1 to n + (2 * (n div 2)) do
         begin
           for j := 1 to n + (2 * (n div 2)) do
               begin
                 if
                 ((i <= n) and (j >= n - (i - 1)) and (j <= n + (i - 1))) or
                 ((i >  n) and (j >= i - (n - 1)) and (j <= n + (2 * (n div 2)) - (i - n) ))
                  then
                   write('* ')
                  else
                    write('  ');
               end;
           writeln;
         end;
     readkey;
end.

