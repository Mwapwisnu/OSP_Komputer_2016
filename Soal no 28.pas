uses crt;
 var 
  a: integer;
  function noan(n : integer) : integer;
    var 
    n1,n2,n3 : integer;
 begin
   if(n < 4)
   then noan := n
   else
       begin
            n1:=n-1;
            n2:=n-2;
            n3:=n-4;
            noan := noan(n1) + noan (n2) + noan (n3);
	     writeln('noan 1 (',n1,') + noan 2 (',n2,') + noan 3 (',n3,') = noan ',n,' (',noan,') ');
       end;
  end;
 begin
 a := noan(8);
 writeln(a);
 readln();
 end.    
             
