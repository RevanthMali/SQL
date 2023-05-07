create or replace procedure grt_3(a in number,b in number,c in number) 
as 
  
begin 
   if a>b then 
      if a>c  then
       dbms_output.put_line(a||'is greater');
     else 
       dbms_output.put_line(c||'is greater');  
     end if;
	else 
	    if b>c then 
		    dbms_output.put_line(b||'is greater'); 
		else 
		    dbms_output.put_line(c||'is greater'); 
		end if; 
	end if;
end;
/
