Program Osp_16_27;
Uses crt;
Var
  Pr_0,Pr_1,Pr_2,Pr_3: boolean;
    
   function Proses(x : integer) : integer; 
   var
     hsl_div : integer;
     hsl_mod : integer;
     hsl_kali : integer;
     hsl_tmbh : integer;
   begin          
      if(x <= 1) then
      begin
         Proses := x;
        if( (not Pr_0) or (not Pr_1) )then
        begin
          writeln('Proses(',x,')=',x);
          if(not Pr)then
           Pr_0:=x=0;
          if(not Pr_1)then
           Pr_1:=x=1;
        end;  
         
      end   
      else 
      begin
        hsl_div := x div 2;
        hsl_mod := x mod 2;
        hsl_kali := hsl_div*hsl_mod;
        hsl_tmbh := hsl_div+hsl_mod;
        Proses := Proses(hsl_kali) + Proses(hsl_tmbh); 
        if(((not Pr_2) or (not Pr_3)) or (x>3)) then
        begin
          writeln('Proses(',x,')= Proses(',hsl_kali,') + Proses(',hsl_tmbh,') = ',proses);        
          if(not Pr_2)then
           Pr_2:=x=2;
          if(not Pr_3)then
           Pr_3:=x=3;
        end;  
      end;  
   end;


begin
  Pr_0:=false;
  Pr_1:=false;
  Pr_2:=false;
  Pr_3:=false;
  Proses(11);
end.

