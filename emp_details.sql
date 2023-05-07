create or replace procedure emp_details
as 
  emp_id emp.empno%type;
  emp_name emp.ename%type;
  annual_salary emp.sal%type;
BEGIN
  SELECT empno,ename,sal INTO annual_salary,emp_name,emp_id
  FROM emp
  WHERE job ='analyst' or job='salesman';

  --annual_salary := annual_salary * 12;

  dbms_output.put_line(emp_id||' '||emp_name||' '||annual_salary);
END;
/ 