Program Osp_16_34;
Uses crt;
Var 
         ar : array[1..1000] of Boolean;
    i,j,h,m : integer;
begin 
     for i := 1 to 1000 do 
     ar[i] := false;
     for i := 1 to 1000 do
     //ar[j] := true;
        begin
        //writeln('perulangan ke-',i,' ', ar[i]);
             j := i;
            // writeln(ar[j]);
               while(j <= 1000) do
                  begin
                       //ar[m] := not(ar[j]);
                       //writeln('ar [j] := not (ar j[',ar[j],'] = ',ar[m]);
                       ar[j] := not(ar[j]);
                       j := j + i;
                      // writeln('perulangan ke-',j)
                  end;
//        ar[m] := not(ar[j]);
        //writeln('ar [j] := not (ar j[',ar[j],'] = ',ar[m]);
                       
        end;
ar[j] := not(ar[j]);
writeln('ar [j] := not (ar j[',ar[j],'] = ',ar[j]);
  writeln(i);
  writeln('  ',ar[i]);
  writeln(j);
  writeln('  ',ar[j]);
//writeln(' (',i,') ');
//writeln(' (',j,') ');
readln();
end.



