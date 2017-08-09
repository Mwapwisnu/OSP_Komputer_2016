Program OSP_30_16;
Uses crt;
   var
   arr: array [1..20] of integer;

   function get:integer;
   var
      m: integer;
      hsl_div : integer;
      jml_lr : integer;
      left, right: integer;
   begin
     if (arr[1] < arr[20]) then
     begin
        get := 1
     end
     else
     writeln('===================================');
        begin
           left := 1;
           right := 20;
           while (left < right)do
            begin
            writeln;
            writeln('  left   right  ');
            writeln('   ',left,'       ',right);
               m := (left+right) div 2;
               hsl_div := m;
               jml_lr := left+right;
               writeln;
               writeln('  m := ',jml_lr,' div 2 = ',hsl_div);
               writeln;
               if (arr[1]<=arr[m])then
                  left := m+1
               else
                  right := m;
            writeln;
            writeln('  arr[m] = ',arr[m],' maka  m = ',m);
            writeln('===================================');
            writeln('  arr[m] = ',arr[m],' ',', left = ',left,', right = ',right);
            end;
        get := right;
        writeln();
        writeln('jadi get = ',get);

        end;
    end;
begin
  arr[1] := 303;         arr[11]:= 155;
  arr[2] := 304;         arr[12]:= 169;
  arr[3] := 365;         arr[13]:= 183;
  arr[4] := 454;         arr[14]:= 205;
  arr[5] := 487;         arr[15]:= 209;
  arr[6] := 6;           arr[16]:= 218;
  arr[7] := 12;          arr[17]:= 5;
  arr[8] := 15;          arr[18]:= 269;
  arr[9] := 78;          arr[19]:= 282;
  arr[10]:= 90;          arr[20]:= 287;
  writeln(get);
  readln();
end.


