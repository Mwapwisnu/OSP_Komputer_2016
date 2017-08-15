Program Osp_16_43;
  uses crt;
 var
   isi : array[1..10] of integer;
     i : integer;

  procedure Whatsup(l, r : integer);
    var
       X : integer;
  begin
      writeln;
          X := isi[l];
      write('  X <- isi l[',isi[l],'] ||');
          isi[l] := isi[r];
      write('  isi l[',isi[l],'] <- isi r[',isi[r],'] ||');
          isi[r] := X;
      write('  isi r[',isi[r],'] <- X ||');
      write;
      writeln;
      writeln;
     // writeln('     isi[r] := ',isi[r],' := ',x);
  end;

  procedure naoooon(l, r : integer);
    var
           kk   : integer;                     //
           ini  : integer;
            bot : integer;
    kiri, kanan : integer;
  begin
  //writeln(l,' < ',r);                           //
  //writeln;                                      //
       if(l < r)
       then
           begin
               kiri := l;
              kanan := r;
                ini := isi[(kiri + kanan) div 2];
                bot := ini;                       //
              writeln('       ini = isi[(',kiri,' + ',kanan,') div 2] = ',bot);   //

      while(kiri < kanan) do
               begin
                //writeln(isi[kiri],' > ',ini);   //
                    while(isi[kiri] > ini) do
                  kiri := kiri + 1;
                  kk   := kiri + 1;             //
               writeln('  kiri = ',kiri,' + ',1,' = ',kk);   //
               //writeln(isi[kanan],' < ',ini);   //
                       while(isi[kanan] < ini) do
                             kanan := kanan - 1;
                          if(kiri < kanan) then
                             Whatsup(kiri, kanan);
                         writeln(' kiri = ',kiri,', kanan = ',kanan);         //
               end;
                  naoooon(l, kanan);
             writeln;
             writeln('naoooon (',l,', ',kanan,')');     //
                  naoooon(kanan+1, r);
            writeln('naoooon(',kanan,' + 1, ',r,')');  //
             writeln;
           end;
  end;
 begin
      isi[1] := 5; isi[2] := 10; isi[3] := 18; isi[4] := 1; isi[5] := 7;
      isi[6] := 9; isi[7] := 3; isi[8] := 8; isi[9] := 100; isi[10] := 29;

    for i := 1 to 10 do
         begin
              write('  ',isi[i],' ');                   //
              write;                                    //
         end;
    writeln;                                            //
    writeln;                                            //

    naoooon(1,10);                                      //
   // naoooon(3,6);                                     //
  writeln;                                              //
  writeln('  banyak i adalah := ',i);                     //
  writeln;                                              //
    for i := 1 to 9 do
      write('  ',isi[i],' ');
      writeln('  ',isi[10]);
    readln;                                             //
 end.

