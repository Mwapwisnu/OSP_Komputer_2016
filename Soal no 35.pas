Program Osp_16_35;
   uses crt;
var
     isi : array[1..10] of integer ;
  function X(l, r, v : integer) : longint;
    var
  temp : integer;
     t : integer;
     begin
          isi[1]:=-4;      isi[6]:=1;
          isi[2]:=1;       isi[7]:=2;
          isi[3]:=7;       isi[8]:=4;
          isi[4]:=9;       isi[9]:=3;
          isi[5]:=0;       isi[10]:=-1;

            if(l = r) then
              begin
                   X := isi[l]
               end
            else
              begin
                    temp := (l + r) div 2;
                    t := l + r;
                    writeln;
                    writeln('   l + r = ',l,' + ',r,' = ',t,' div 2 = ', temp);
                    writeln;
             if(isi[temp] > v) then
                    begin
                         X := X(l, temp, v);
                         writeln('   X := ',X,'(',l,' ',temp,' ',v,')');
                    end
                 else
                    begin
                         X := X(temp + 1, r, v);
                         writeln;
                    end
              end;
     end;

  var
     hasil,l,r,v : integer;
  begin
    // read(l);
    l := 2;
    // read(r);
    r := 6;
    // read(v);
    v := 4;
hasil := x (l,r,v);
writeln;
write('  ',hasil);
writeln;
    readln;
    readln();
  end.

