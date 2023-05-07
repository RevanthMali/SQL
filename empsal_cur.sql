create or replace procedure empsal_cur
as 
c_name emp.ename%type;
c_sal emp.sal%type;
   cursor emp_c is select ename,sal from emp;
begin 
   open emp_c; 
   loop 
      fetch emp_c into c_name,c_sal;
	     if c_sal>3000 then 
		     dbms_output.put_line('updated salary :'||c_sal*(1.20));
		ELSe
		     dbms_output.put_line('updated salary :'||c_sal*(1.25));
	    end if;
	exit when emp_c%notfound;
    end loop;
	close emp_c;
	
	
end empsal_cur;
/