--program to indert data 
se serveroutput on
declare
 eno number(3):=&eno;
enm char(15):='&enm';
dno number(6):=&dno;
sal number(6):=&sal;
begin
insert into emp values(eno,enm,dno,sal);
dbms_output.put_line('insert the data');
end;
/