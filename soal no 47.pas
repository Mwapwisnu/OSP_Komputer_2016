Program Osp_16_47;
Uses crt;
var    
  n, m, temp : int64;
  a,b,c  : int64;
  jumlah : int64;  
begin    
  writeln('masukkan nilai n : ');
  readln(n);
  writeln('masukkan nilai m : ');
  readln(m);
  if (n > m) then    
     begin      
        temp := n;
        n := m;      
        m := temp;    
     end;    
  a := n+1 ;
  b := 3*m-n+1;
  c := n*a*b;
  writeln;
  writeln(n,' * ',n,' + 1 * 3 * ',m,' - ',n,' + 1) = ',c );
  writeln;
  writeln(n,' *   ',a,'   *   ',b,'   = ',c);
  writeln;
  writeln('c = ',c);
  jumlah := c div 6;
  writeln;
  writeln('jumlah = ',120,' div 6 = ', jumlah);
  writeln;
  writeln('banyak persegi pada grid ',n,' x ',m,' adalah ',jumlah,' persegi');
  readln();
end.
