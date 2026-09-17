program to del record as per empid
set serveroutput on
declar
        empid number(5):=&eid;
begin
      delete from emp where empid=eid;
commite;
dbms_output.put_line('record inserted in emp');
end;
/