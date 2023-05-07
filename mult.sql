create or replace procedure mult(n in number)
as 
i number;
begin 
  for i in 1..2*n loop
     dbms_output.put_line(n||'*'||i||'='||n*i);
  end loop;
end mult;
/
 