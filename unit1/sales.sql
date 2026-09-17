--insert the values i table
set serveroutput on
declare
s_rno number(5):=&s_rno;
s_name char(20):=&s_name;
m_sales number(10):=&m_sales;
begin
insert into sales values(s_rno,s_name,m_sales);
commit;
dbms_output.put_line('record inserted in sales');
end;
/