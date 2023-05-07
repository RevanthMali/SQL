create or replace function factorial(x in number) 
return number 
as 
begin 
    if(x>0) then
	  return x*(factorial(x-1)); 
	else 
      return 1;	
    end if;	  
  end;
  /