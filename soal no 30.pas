Program OSP_16_30;
Uses crt;
  var
  x,y: integer;
 begin
   x := 1;
   y := 0;
   while(x <= 10) do
   begin
     y := y + x;
     writeln('penjumlahan ',y,' + ',x,' =',y);
     x := x + x;
     writeln('penjumlahan ',x,' + ',y,' =',x);
   end;
 writeln('y:= ',y,' + ',x,' = ',y);
 writeln;
 writeln(y);
 readln();
 end.

