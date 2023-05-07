--create or replace procedure String_print
--as
declare
 string varchar(50);
 num number(4);
 begin 
    String := '&string';
	num := '&num'; 
	for i in 1..num loop
	   dbms_output.put_line(string); 
	end loop;
end;
/