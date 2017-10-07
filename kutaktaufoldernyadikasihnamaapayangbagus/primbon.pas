program primbon;
uses crt;

var tanggal,bulan,tahun:integer;

function GetHari(bulan : integer) : integer;

begin
    if(bulan = 2) then
                    GetHari := 28
               else
                   if((bulan <= 6) and (bulan mod 2 = 1))or
                   ((bulan > 6) and (bulan mod 2 = 0))
                           then GetHari := 31
                   else
                           GetHari := 30;
end;

function hari2bulan(var hari : integer):integer;

var i :integer;

begin
  i := 0;
  while(hari - GetHari(i+1) >= 0) do
             begin
             i := i + 1;
             hari := hari - GetHari(i);
             end;
  hari2bulan := i;
end;

function bulan2hari(bulan : integer) : integer;

var i,sum: integer;

begin
   sum := 0;
   for i:= 1 to bulan do
       sum := sum + GetHari(i);
   bulan2hari := sum;
end;

procedure HitungUsia(t,b,h : integer);

var
  cur_t,cur_b,cur_h:integer;
  res_t,res_b,res_h:integer;
begin
     cur_h := 3;
     cur_b := 10;
     cur_t := 2017;
     if(cur_h < h) then
                     begin
                     if( b = cur_b) then
                                     cur_b := cur_b - 1;
                     cur_h := cur_h + 31;
                     cur_b := cur_b - 1;
                     end;
     if(cur_b < b) then
                     begin
                     cur_b := cur_b + 12;
                     cur_t := cur_t - 1;
                     end;
      res_h := ((cur_t - t) * 365) + (bulan2hari(cur_b)-bulan2hari(b)) + (cur_h - h);
      res_t := res_h div 365;
      res_h := res_h mod 365;
      res_b := hari2bulan(res_h);
      if(res_b = 12) then
                      begin
                      res_t := res_t + 1;
                      res_b := 0;
                      end;
      writeln('usia anda pada hari ini (3/10/2017) adalah : ',res_t,' tahun ',res_b,' bulan ',res_h,' hari.');
end;

begin
  clrscr;
  write('masukan tahun tanggal lahir anda : ');readln(tanggal);
  write('masukan tahun bulan lahir anda   : ');readln(bulan  );
  write('masukan tahun tahun lahir anda   : ');readln(tahun  );
  HitungUsia(tahun,bulan,tanggal);
  readkey;
end.

