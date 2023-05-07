create trigger insert_trigger after insert on emp_info for each row 
begin  
insert into emp_det VALUES(:new.empno;,:new.ename;,:new.job);
end insert_trigger;
/