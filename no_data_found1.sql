create or replace procedure no_data_found1(emp_id emp.empno%type)
as 
vsal emp.sal%type;
vname emp.ename%type;
begin 
    select ename,sal into vname,vsal from emp where empno = emp_id;
	dbms_output.put_line(vname||' '||vsal);
   EXCEPTION
	when no_data_found then 
        dbms_output.put_line('user data not found!!');
    when others then 
        dbms_output.put_line('ERROR!!'); 
end no_data_found1;
/		
 