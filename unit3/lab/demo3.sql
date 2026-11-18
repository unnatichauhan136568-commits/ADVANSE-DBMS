--USER DEFINE EXCEPTION
set serveroutput on
declare
per number:=&per;
res_fail EXCEPTION; --DECLARE
begin
dbms_output.put_line('percentage:'||per);
if per >= 40 then
dbms_output.put_line('Result:Pass');
else
RAISE res_fail; --raise exception
end if;

EXCEPTION
WHEN res_fail then
dbms_output.put_line('Result:Fail');
end;

/