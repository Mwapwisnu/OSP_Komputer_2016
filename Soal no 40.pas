Program Osp_16_39;
Uses crt;
Var
s,t,i,tt,f : string;
x,l,r,k,z  : byte;
temp       :char;
begin
  writeln(' RJJJVDPII : no 40');
  writeln;
  readln(s);
  k := 0;
  x := 0;
  l := 1;
  r := length(s);
  t := '';
  while (l <= r) do
     begin
        if (k mod 2) = 0 then
            begin
              temp := s[r];
              r := r - 1;
            end
        else
            begin
              temp := s[l];
               l := l + 1;
            end;
      k := k + 1;
      //ord(c) adalah fungsi untuk mengubah
      //karakter c menjadi nilai pada ASCII
      //ord('A') = 65
      //ord('B') = 66
      //...
      //ord('Z') = 90
      x := (x + ord(temp) - ord('A')) mod 26;
      writeln('====');
      tt := t + chr(x + ord('A'));
      t  := t + chr(x + ord('A'));
      writeln(x,' + ',ord(temp),' - ',ord('A'),' = ',x,' = ',tt);
      //writeln('====');
      //writeln(x,' = ',tt);
     end;
writeln(t);
writeln;
readln();
end. 

