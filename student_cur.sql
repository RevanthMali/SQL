create or replace procedure student_cur 
as
   c_sid student.sid%type;
   c_sub1 student.sub1%type; 
   c_sub2 student.sub2%type; 
   c_sub3 student.sub3%type;  
   averg number;
   cursor std_cur is select sid,sub1,sub2,sub3 from student ; 
   begin 
    open std_cur;
	    loop 
        fetch std_cur into c_sid,c_sub1,c_sub2,c_sub3;
             averg := (c_sub1+c_sub2+c_sub3)/(3);
        exit when std_cur%notfound;
        end loop; 
		dbms_output.put_line('the average of the above given students is :'||TRUNC(averg,3)); 

    close std_cur;
end student_cur;
/	
