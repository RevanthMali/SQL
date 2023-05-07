create or replace procedure num_prime
as 
c number:=0;
i number;
j number; 
fact_count number;
begin  
       while c<10 loop
	        for i in 1..100loop  
				fact_count:=0;
				for j in 1..i loop 
				  if mod(i,j)=0 then 
				    fact_count:= fact_count+1;
				  end if; 
				 end loop;
			if fact_count = 2 and c<10 then 
 			    dbms_output.put_line(i); 
			    c:=c+1;
			end if;
           end loop;
        end loop;
  end;
/  
