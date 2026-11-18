--print values of variable
set server output on
declare
name char(15):='Unnati';
surname char(10):='chauhan';
age number(2):='18';
begin
dbms_output.put_line(name);
dbms_output.put_line(surname);
dbms_output.put_line(age);
end;
/


