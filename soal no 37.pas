program Osp_16_38;
uses crt;

var
   daebak : array [0..2015] of char;
   w, x, y, z, i : integer;

   procedure saranghae(x : integer; len : integer);
   var
        i,idx,j : integer;
        store : char;
   begin
        write('  saranghae(',x,',',len,')');
        store := daebak[x];
        //writeln('     store = daebak[',x,']=',store);
         for i := len-1 downto 0 do
           begin
           //write('              i ',i);
               idx:=x+((i+1) mod len);
               if (i = 0) then
               begin
                  daebak[idx]:= store;
                  //write('     daebak[',idx,']=stotre=',daebak[idx]);
                  for j := 0 to 16 do
                     write('  ',daebak[j],' ');
                  writeln;
               end
               else
               begin
                  daebak[idx] := daebak[x+i];
                  //write('     daebak[',idx,']=daebak[',x+i,'] = ',daebak[idx]);
               end;

             //for j := 0 to 16 do
               //write('  ',daebak[j],' ');
             //writeln;

           end;
   end;

   procedure anyeong(arr_sz : integer; part_sz :integer);
   Var
     i:integer;
   begin
       writeln('anyeong(',arr_sz,',',part_sz, ')');
       for i:= 0 to (arr_sz div part_sz)-1 do
       begin
           //writeln('  i : ',i);
           saranghae(i * part_sz, part_sz);
       end;
   end;

   procedure oppa(n:integer);
   var
     i,j : integer;
   begin
     writeln('Oppa(',n,')');
     for i := 0 to n-1 do
        begin
         //write('i : ',i,' ');
           if(i mod 4 = 0) then
              daebak[i] := 'T'
           else
               if(i mod 4 = 1) then
                  daebak[i] := 'O'
               else
                   if(i mod 4 = 2) then
                      daebak[i] := 'K'
                   else
                      daebak[i] := 'I';

         //for j := 0 to n-1 do
             //write(daebak[j],' ');

         //writeln;
        end;
        for j := 0 to n-1 do
             write(daebak[j],' ');

         writeln;
   end;

begin                                  // bagian program utama
    //readln(w, x, y, z);    //16 2 12 4
    w := 16;
    x := 2;
    y := 12;
    z := 4;
    oppa(w);
    writeln;
    for	i := 1 to x do
    begin
      writeln('i : ',i);
        anyeong(y, z);
    end;
    writeln;
    for i := 0 to w-1 do
        begin
           if(i mod 4 = 0) and (i <> 0) then
              write(' ');
           write(daebak[i]);
         end;
    writeln;
    readln();
end.

