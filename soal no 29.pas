Program OS_16_29;
uses crt;
var
  ar : array[1..10] of integer;// = (1,6,2,3,4,7,2,4,2,1);

  procedure mantaps(n : integer); 
  var     
     i,j : integer;     
     iNi : integer;     
     temp : integer; 
  begin     
      if(n > 1) then 
         begin         
           iNi := n;
           write(iNi,'     ');
           
           for i := 1 to n-1 do 
               begin             
                  if(ar[i] < ar[iNi]) then 
                     iNi := i;         
               end;
               
           write(iNi,'     ');    
               
           temp := ar[n];
           ar[n] := ar[iNi];
           ar[iNi] := temp;
           
           for j:=1 to 10 do 
               write(ar[j],' ');          
               
           writeln;    
           
           mantaps(n-1);
        end;
  end; 

var
  i:integer;
begin
       ar[1] := 1;
       ar[2] := 6;
       ar[3] := 2;
       ar[4] := 3;
       ar[5] := 4;
       ar[6] := 7;
       ar[7] := 2;
       ar[8] := 4;
       ar[9] := 2;
       ar[10]:= 1;

 writeln('Isi ar sebelum mantaps : ');
 for i:=1 to 10 do 
   write(ar[i],' ');
 writeln;
 
 writeln('Isi ar dalam mantaps : ');
 writeln('ini   ini   ar ');
  mantaps(5);
 writeln; 
  
 writeln('Isi ar setelah mantaps : ');
 for i:=1 to 10 do 
   write(ar[i],' '); 
 readln();
end.
