Var 
   Q : array[1..15] of integer; // = (1,5,2,3,4,6,2,7,3,4,6,0,-1,2,3);
   P : array[1..15] of integer;
i,a  : integer;
b,total : integer;
  begin

  Q[1]:= 1;         Q[9] := 3;
  Q[2]:= 5;         Q[10]:= 4;
  Q[3]:= 2;         Q[11]:= 6;
  Q[4]:= 3;         Q[12]:= 0;
  Q[5]:= 4;         Q[13]:= -1;
  Q[6]:= 6;         Q[14]:= -2;
  Q[7]:= 2;         Q[15]:= 3;
  Q[8]:= 7;

       for i :=  1 to 15 do
         begin
		   P[i] := P[i-1] + Q;
         end;
     readln(a,b);
     total := 0;			//baris -1
       for i := a to b do		//baris -2
          begin
            total := total + Q[i];	//baris -3
          end;			//baris -4
     writeln(total);
  end.
