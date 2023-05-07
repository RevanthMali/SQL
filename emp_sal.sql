CREATE  or replace PROCEDURE emp_sal(p_emp_id IN NUMBER)
AS
  v_annual_salary emp.sal%type;
BEGIN
  SELECT (12*sal) INTO v_annual_salary
  FROM emp
  WHERE empno = p_emp_id;

  --v_annual_salary := v_annual_salary * 12;

  dbms_output.put_line(v_annual_salary);
END;
/ 