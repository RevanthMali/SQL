create or replace function fibonacci(n number)
return number 
as 
a number:=0;
b number:=1;
c number;
begin 
    if n=1 then 
	   return a;
	ELSIF n=2 then 
	    return b;
    else  
	for i in 2..n loop 
	   c := a+b; 
	   a:=b;
	   b:=c;
	end loop;
	return c;
	end if;
end fibonacci;
/	
	   