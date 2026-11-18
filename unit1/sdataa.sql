--if..else demo
set serveroutput on
declare
               xsrno number(3):=&xsrno;
s number(6);

begin
select sales into s  from sdataa where srno = xsrno;
 
if s > 2000 and s< 1000
 
then
 
update sdataa set commission = (s * 0.10) where srno = xsrno;

commit;

else

update sdataa set commission = 0 where srno = xsrno;

commit;

end if;

dbms_output.put_line('record update');

end;
/

