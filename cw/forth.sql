--print 2 veriables
set serveroutput on
declare
course char(10):='BCA';
sem number(2):='3';
begin
dbms_output.put_line(course);
dbms_output.put_line(sem);
end;
/
