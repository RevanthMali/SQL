create or replace procedure employee(vemp_id emp.empno%type)
as 
  --vemp_id emp.empno%type; 
  vcomm emp.comm%type;
  vdeptno emp.deptno%type;
  vsal emp.sal%type;
begin 
     select sal,comm,deptno into vsal,vcomm,vdeptno  from emp where empno= vemp_id; 
	 
     dbms_output.put_line('sal: '||vsal ||'commission: '||vcomm||'deptno :'||vdeptno);	 
end;
/



