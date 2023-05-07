create or replace procedure prime_num
as
n number:=2;
count number :=0;
begin 
   loop 
     is_prime BOOLEAN := true;
     begin
     for n in 2..(n-1) loop
       if mod(n,i)=0 then 
	   is_prime :=false; 
        exit;
       end if;
       end loop;
   if is_prime then
      dbms_output.put_line(n);
     count :=count+1;
    end if;
    if(count = 10) then
     exit;
     end if;
     n:=n+1;
   end;
   end loop;
end prime_num;
/