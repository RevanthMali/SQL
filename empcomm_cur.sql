create or replace procedure empcomm_cur 
as 
c_ename emp.ename%type;
c_sal emp.sal%type;
c_comm emp.comm%type; 
cursor sal_cur is
   select sal from (select * from emp order by sal desc) where rownum<=5;
begin 
open sal_cur; 
    loop
	  fetch sal_cur into c_sal; 
	     exit when sal_cur%notfound;
		 dbms_output.put_line(c_sal);
	end loop;
close sal_cur;
end empcomm_cur;
/