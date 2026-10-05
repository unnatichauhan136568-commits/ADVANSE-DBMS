set serveroutput on
declare
i number(3):=1;
begin
while i<=5
loop
insert into max values(i,i*i,i*i*i);
commit;
i:=i+1;
end loop;
dbms_output.put_line('record inserted');
end;
/