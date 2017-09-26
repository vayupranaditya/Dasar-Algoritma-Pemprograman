program HeilFuhrer;

uses crt;

var i,j,n : integer;

begin
	clrscr;
        write('input : ');readln(n);
	for i := 1 to n do
		begin
                  for j := 1 to n do
                      begin
                           if((i = 1) and (j >= (n div 2) + 1)) or
                                 ((i = n) and (j <= (n div 2) + 1)) or
                                 ((i <= (n div 2)) and (j = 1)) or
                                 ((i <= (n div 2)) and (j = 1)) or
                                 ((i >= (n div 2) + 1) and (j = n)) or
                                 ((j = (n div 2) + 1) or
                                 (i = (n div 2) + 1))then
                                write('# ')
                           else
                               write('  ');
                      end;
                  writeln
                end;
	readkey;
end.
