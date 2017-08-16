Program Osp_16_41;
uses crt;
Var
Q : array[1..15] of integer ;
P : array[0..15] of integer;
i, a, b,total,r : integer;
begin
  Q[1]:=1;        Q[9]:=3;
  Q[2]:=5;        Q[10]:=4;
  Q[3]:=2;        Q[11]:=6;
  Q[4]:=3;        Q[12]:=0;
  Q[5]:=4;        Q[13]:=-1;
  Q[6]:=6;        Q[14]:=2;
  Q[7]:=2;        Q[15]:=3;
  Q[8]:=7;

       //readln (a,b);
       a := 6;
       b := 10;
       writeln;
       writeln('penjumlahan array Q dari ',a,' ke ',b,'  : ');
       writeln;
           total := 0;           // baris-1
    for i := a to b do    // baris-2
      begin
          r := total + Q[i];
            writeln(Q[i],' + ');
    writeln('total := ',total,' + Q[',Q[i],'] = ',r);
           total := total + Q[i]; // baris-3
      //total := P[b] - P[a-1];
      end; // baris-4
  //writeln;
  writeln;
  writeln;
  writeln(total);
  writeln;
  writeln('jadi total nya ialah : ',total);
  readln;
end.
