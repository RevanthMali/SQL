create or replace procedure emp_cur
as 
c_ename emp.ename%type;
c_sal emp.sal%type;
c_comm emp.comm%type; 
cursor emp_c is select ename,sal,comm from emp;
begin 
    open emp_c;
	    dbms_output.put_line('emp name :'||'salary :'||'commission : ');
    loop 
	 fetch emp_c into c_ename,c_sal,c_comm;
	 exit when emp_c%notfound;
	 if c_comm is null then 
	     dbms_output.put_line('commission is null'); 
	else 
	     dbms_output.put_line(c_comm); 
	end if;
	exit when emp_c%notfound;
   end loop; 
   close emp_c;
end emp_cur;
/
		
