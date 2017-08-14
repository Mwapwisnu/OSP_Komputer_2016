Program OSP_16_30;
Uses crt;
  var
  x,y: integer;
  xx,yy : integer;
 begin
   x := 1;
   y := 0;
     while(x <= 10) do
       begin
         y := y + x;
         x := x + x;
         xx := x + x;
         yy := y + x;
         writeln('penjumlahan y(',y,') + x(',x,') =',yy);
         writeln('penjumlahan x(',x,') + x(',x,') =',xx);
       end;
   writeln;
   writeln(y);
   readln();
 end.


