Program Osp_15_45;
Uses crt;
Var
  ar : array[1..5] of integer;
  i : integer;

procedure S(a,b : integer);
var
 temp : integer;
  begin
     temp := ar[a];
  //writeln('========================');
 // writeln;
  writeln('temp <- ar a[',ar[a],']');
    ar[a] := ar[b];
  writeln('  ar a[',ar[a],'] <- ar b[',ar[b],']');
    ar[b] := temp;
  writeln('  ar b[',ar[b],'] <- ',temp,'temp');
  writeln;
 // writeln;
//   for i := 1 to 5 do
//      begin
//           write(' ',ar[i],'  ','  ');
//      end;
//  writeln;
//  writeln('==========================================================');
  end;

begin

ar[1]:= 1;
ar[2]:= 2;
ar[3]:= 3;
ar[4]:= 4;
ar[5]:= 5;

writeln;
   for i := 1 to 5 do
      begin
//        write('ar[',ar[i],'] ');
          write(' ',ar[i],'  ','  ');
      end;
   writeln;
   write;

  for i := 1 to 5 do
      begin
      //   write('Masukkan ar[i] = ');
      //   read(ar[i]);
      //   write('ar[',ar[i],'] ');
        // write;
          S(3,4);
          S(4,1);
          S(5,2);
          S(5,1);
       writeln('                         ',ar[i],' ');

      end;
        writeln;

        for i := 1 to 5 do
             begin
                 write('ar[',ar[i],'] ');
             end;

        writeln;
        writeln;
        writeln('    2,   3,   2,   3,  5');
        writeln;
          for i := 1 to 4 do
         begin
           write(ar[i], ' ');
      //    write('ar[',ar[i],'] ');
         end;
    writeln(ar[5]);
    readln;
    readln;
end.
