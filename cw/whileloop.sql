--program square using while loop
set serveroutput.put on
declare
i number:=1;
begin
while i<=10
loop
dbms_output.put_line(i*i);
i:=i+1;
end loop;
end;
/