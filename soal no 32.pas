Program OSP_26_32;
uses crt;
var
   // a_d   : integer;
   // a_t   : integer;
    b     : integer;
function meong(x: longint):integer;
   begin
      if (x = 0) then 
         begin  
            meong := 0
         end
      else 
         begin
            if  (x mod 2 = 1) and ((x div 2) mod 2 = 1) then
               begin
                  meong := meong((x div 2) div 2)+1
               end
            else
               begin
                  meong := meong(x + 1) + 1;
                  //  a_d  := meong((x div 2) div 2)+1;
                  //a_t  := meong + a_d;
                  //writeln(a_d);
writeln(' meong = ',meong,'( ',x mod 2 = 1,' ',x,' = x div 2 = ',((x div 2) mod 2 = 1) );
                   writeln;
                   //writeln('isi meong (',a_d,') ');
                   //writeln('jumlah = ',a_t);
                   //writeln;
                end
         end;
   end;
begin 
  writeln;
  b := meong (888);
  writeln('meong (888) = ',b,' false');
  //writeln(meong(888);
  readln;
end.
