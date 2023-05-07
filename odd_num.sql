create or replace procedure odd_num(n in number)
as 

x number:=n;
begin 
    if mod(x,2) = 0 then
	    dbms_output.put_line('its not odd number');
	else 
	     dbms_output.put_line('its odd number');
    end if;
end odd_num;
/