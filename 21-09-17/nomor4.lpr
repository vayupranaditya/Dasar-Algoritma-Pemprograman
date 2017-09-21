program nomor4;

uses crt;

var
   h_in,h_out:integer;
   m_in,m_out:integer;
   s_in,s_out:integer;
   h_r,m_r,s_r:integer;

begin
  clrscr;
  writeln('input : ');
  write('         jam masuk   : ');readln(h_in);
  write('         menit masuk : ');readln(m_in);
  write('         jam keluar   : ');readln(h_out);
  write('         menit keluar : ');readln(m_out);
  if(h_out < h_in) then
           h_out:= h_out + 12;
  m_r := ((h_out - h_in) * 60)  + (m_out - m_in);
  writeln('output : ');
  write('       durasi : ',m_r,' = ');
  h_r := m_r div 60;
  m_r := m_r mod 60;
  writeln(h_r,' jam ',m_r,' menit ');
  readkey;
end.

