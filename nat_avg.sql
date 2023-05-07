create or replace procedure nat_avg(n in number)
as  
  avg1 number :=0;
  i number;
  begin
    for i in 1..n loop
	   avg1 := avg1 + (i/n);
     end loop;
	 dbms_output.put_line(avg1);
 end;
/ 
