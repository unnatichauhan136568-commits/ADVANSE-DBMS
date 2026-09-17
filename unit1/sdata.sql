--if..else demo
set serveroutput on
declare
       xsrno number(3):=&xsrno;
       s number(10);
begin
      select sales into s from sdata where srno=xsrno;
if>20000 and s<140000
then
      update sdata set commission=(s*0.10)where srno=xsrno;
commit;
else
update sdata set commission=0 where srno=xsrno;
commit;
end if;
dbms_output.put_line('record update');
end;
/