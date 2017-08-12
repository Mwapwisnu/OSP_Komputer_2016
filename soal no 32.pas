Program OSP_26_32;
uses crt;
var
    a_d   : integer;
    //a_t   : integer;
    b     : integer;
function meong(x: longint):integer;
   begin
      if (x = 0) 
        then meong := 0
      else 
         begin
           if
             //begin
              (x mod 2 = 1) and ((x div 2) mod 2 = 1)then
               meong := meong((x div 2) div 2)+1
             //end
           else
           begin
               meong := meong(x + 1) + 1;
               a_d  := meong((x div 2) div 2)+1;
               //a_t  := meong + a_d;
               //writeln(a_d);
               writeln(' meong = ',meong,'( ',x mod 2 = 1,' ',x,' = x div 2 = ',((x div 2) mod 2 = 1) );
               writeln;
               writeln('isi meong (',a_d,') ');
               //writeln('jumlah = ',a_t);
            end
         end;
   end;
begin 
  writeln;
  b := meong (888);
  writeln('jadi asal dari meong 888 ialah dari false 888');
  writeln('meong (888) = ',b);
  readln;
end.

