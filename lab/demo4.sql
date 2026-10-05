--program ude 1
set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
ans number;
divide_zero EXCEPTION;
begin
if n2 = 0 then
raise divide_zero;
else
ans:=n1/n2;
dbms_output.put_line('answer:'||ans);
end if;
EXCEPTION
WHEN divide_zero then
dbms_output.put_line('value of no 2 must
not be zero');

end;
/