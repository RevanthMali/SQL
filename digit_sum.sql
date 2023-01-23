create or replace procedure digit_sum(n in number)
as 
q number := n;
res number:=0; 
 begin 
  WHILE q > 0 LOOP
     res := res + (q MOD 10);
     q := trunc(q / 10);
 END LOOP; 
 dbms_output.put_line(res);
 end;
 /
 