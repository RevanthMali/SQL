create or replace procedure prime(n in number)
as 
i number;
c number;
begin  
   i := 2;
   c := 1;
    loop 
      if mod(n,i) = 0 then
        c := 0;  
        i := i+1;
       end if;
    exit  when i<=(n/2);
    end loop; 
    if c = 1 then 
	    dbms_output.put_line(n||'is a prime number');
    else 
        dbms_output.put_line(n||'is not a prime number');
    end if;
end; 
/