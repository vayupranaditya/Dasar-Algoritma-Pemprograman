program Borma_exe;  //ini nomor 2
  uses crt;

  type waktu = record
       jam,menit : integer;
  end;

  var W_in,W_out : waktu;
      dur :waktu;
      tarif : integer;

  function hitungDurasi(TM: waktu;TK :waktu):waktu;

  var tmp : waktu;

  begin
      if(TK.jam < TM.jam) then
                TK.jam := TK.jam + 12;
      tmp.menit := ((TK.jam - TM.jam) * 60) + (TK.menit - TM.menit);
      tmp.jam := tmp.menit div 60;
      tmp.menit := tmp.menit mod 60;
      hitungDurasi := tmp;
  end;

  Procedure hitungTarif(durasi: waktu; var tarif :integer);

  begin

       if(durasi.menit > 0) then
                       begin
                         durasi.jam := durasi.jam + 1;
                         durasi.menit := 0;
                       end;
       tarif := 2000;
       tarif := tarif + (durasi.jam - 1) * 1000;
  end;

begin
     clrscr;
     writeln('input :');
     write('        jam masuk    : ');readln(W_in.jam     );
     write('        Menit masuk  : ');readln(W_in.menit   );
     write('        jam Keluar   : ');readln(W_out.jam    );
     write('        Menit Keluar : ');readln(W_out.menit  );
     writeln;
     hitungTarif(hitungDurasi(W_in,W_out),tarif);
     writeln('output :');
     writeln('       tarif = Rp.',tarif);
     readkey;
end.

