set serveroutput on
declare
p1 number:=&p1;
r1 number:=&r1;
n1 number:=&n1;
sint number;
begin
sint:=fun_si(p1,r1,n1);
dbms_output.put_line('Simple
Interest:'||sint);
end;
/