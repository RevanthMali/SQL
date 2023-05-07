CREATE trigger customer_credit_trig before update of cust_creditLimit on customer

DECLARE 
day_of_month number;
BEGIN 
   DAY_of_month :=extract(day from sysdate); 
   if day_of_month between 25 and 30 then 
       RAISE_APPLICATION_ERROR(-20001,'creadit should not be done in these days'); 
  end if;
 end;
 /

   