create or replace procedure area(length in number,breadth in number,side in number)
as 
begin 
    dbms_output.put_line('area of square :'||(side*side));
    dbms_output.put_line('area of rectangle :'||(length* breadth));
    dbms_output.put_line('perimeter of square :'||(4*side));
    dbms_output.put_line('perimeter of rectangle :'||(2*(length+breadth)));
end;
/

