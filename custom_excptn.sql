create or replace procedure custom_excptn
as 
--vdeptno emp.deptno%type;
vename emp.ename%type;
--neg_empno exception;
begin 
   select ename into vename from emp where deptno = 50;
		   dbms_output.put_line(vename);
    exception 
	   when too_many_rows THEN
	       dbms_output.put_line('too many rows selected');
		when others THEN 
		     dbms_output.put_line('error occured');
end  custom_excptn;
/		
 