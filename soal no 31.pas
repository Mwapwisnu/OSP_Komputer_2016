Program OSP_16_31;
Uses crt;
var
 a,i,b,c : integer;
 ar : array[1..10] of integer ;
begin
ar[1] := 4;
ar[2] := 5;
ar[3] := 10;
ar[4] := 5;
ar[5] := 51;
ar[6] := 33;
ar[7] := 49;
ar[8] := 64;
ar[9] := 2;
ar[10]:= 7;

   a := -1;
   writeln;
   writeln('nilai awal a adalah : ',a);
   writeln;
   for i := 1 to 10 do
     begin
       write(' (',ar[a],' = ',a,') ');
           if a = -1 then
              a := i
           else
              if ar[i] > ar[a]
              then a := i;
     end;
   writeln;
   writeln;
   //writeln('isi a sesudah diubah  ',ar[a],' = ',a);
   writeln('  isi a sesudah diubah  ');
   writeln;
   writeln(' a = ',a,'      ar[a] = ',ar[a]);
   writeln('==========================================');

   b := -1;
   writeln;
   writeln(' nilai awal b adalah : ',b);
   writeln;
   for i := 1 to 10 do
   begin
       write;
       write(' (',ar[b],' = ',b,') ');
       write;
          if i <> a then
             begin
               if b = -1
                  then b := i
               else
                  if ar[i] > ar[b]
                  then b := i;
             end;
   end;
   writeln;
   writeln;
   //writeln('isi b sesudah diubah = ',ar[b],' = ',b);
   writeln('  isi b sesudah diubah  ');
   writeln;
   writeln(' b = ',b,'      ar[b] = ',ar[b]);
   writeln;
   writeln('==========================================');

   writeln;
   writeln(' nilai awal c adalah : ',c);
   writeln;
   for i := 1 to 10 do
   begin
      if (i <> a) and (i <> b) then
      begin
         write(' (',ar[c],' = ',c,') ');
         if c = -1
         then c := i
         else
         if ar[i] > ar[c]
         then c := i;
      end;
   end;
   writeln;
   writeln;
   //writeln('isi c sesudah diubah = ',ar[c],' = ',c);
   writeln('  isi c sesudah diubah  ');
   writeln;
   writeln(' c = ',c,'      ar[c] = ',ar[c]);
   writeln('==========================================');

writeln;
writeln;
writeln(' ',a, ' ', b, ' ', c);
readln();
end.

