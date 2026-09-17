--program to print 1,3,5,7,9.....n
set serveroutput on
declare
i number:=1;
n number:=&n;
begin
while i<n
loop
dbms_output.put_line(i);
i:=i+2;
end loop;
end;
/