program nomor2;

uses crt;

var
   umur,i,a,r,d:integer;

begin
     clrscr;
     i:= 1;
     writeln('input : ');
     repeat
       repeat
         write('    usia orang ',i,' : ');readln(umur);
       until( umur >=0 );
       if(umur >=0 ) and (umur <= 12) then
               a := a+1
       else
           if( umur >= 13 ) and ( umur <= 22) then
                    r := r + 1
           else
               if( umur > 23 ) and (umur <> 9999) then
                   d:= d+1;
     i := i + 1;
     until umur = 9999;
     writeln('output : ');
     writeln('       anak-anak : ',a);
     writeln('       remaja    : ',r);
     writeln('       dewasa    : ',d);
     readkey;
end.

