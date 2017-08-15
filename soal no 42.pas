Program Osp_16_42;
uses crt;
Var
Q : array[1..15] of integer; //= (1,5,2,3,4,6,2,7,3,4,6,0,-1,2,3);
P : array[0..15] of integer;
i, a, b,total,r : integer;
begin
Q[1]:=1;        Q[9]:=3;         P[1]:= 1;        P[9]:= 9;
Q[2]:=5;        Q[10]:=4;        P[2]:= 2;        P[10]:= 10;
Q[3]:=2;        Q[11]:=6;        P[3]:= 3;        P[11]:= 11;
Q[4]:=3;        Q[12]:=0;        P[4]:= 4;        P[12]:= 12;
Q[5]:=4;        Q[13]:=-1;       P[5]:= 5;        P[13]:= 13;
Q[6]:=6;        Q[14]:=2;        P[6]:= 6;        P[14]:= 14;
Q[7]:=2;        Q[15]:=3;        P[7]:= 7;        P[15]:= 15;
Q[8]:=7;        P[0] := 0;       P[8]:= 8;

    //readln (a,b);
    a := 6 ;
    b := 10;
//      writeln;
//     writeln('penjumlahan array Q dari ',a,' ke ',b,'  : ');
//      writeln;
//          total := 0;           // baris-1
//   for i := a to b do    	    // baris-2
//      begin
//           write(Q[i],' + ');
//     total := total + Q[i]; 	// baris-3
//      end; 			            // baris-4
//     total := P[a*b]+Q[a-b];
//writeln('total := ',P[a],' * ',P[b],' + ',Q[a],' - ',Q[b],' = ',total);
        writeln('Array P = ');
        for i := 1 to 15 do
            begin
               r:= P[i-1] + Q[i];
               writeln(P[i],' := ',P[i-1],' + ',Q[i],' = ',r);
               P[i] := P[i-1] + Q[i];
            end;
    total := P[b] - P[a-1];
writeln;
writeln;
writeln('total := ',P[b],' - ', P[a-1],' = ',total);
writeln;
writeln(total);
writeln;
writeln('jadi total nya ialah : ',total);
readln;
end.

