create or replace procedure reverse(n in number) 
as 
    q number:=n;
	 r number :=0;
	 rev number:=0;
begin  
   while q>0 loop
     r := mod(q,10);
	 rev := ((rev*10) + r);
	 q := floor(q/10); 
   end loop;
	dbms_output.put_line('reverse of the given number is :'||rev);   
end;
/
	 

