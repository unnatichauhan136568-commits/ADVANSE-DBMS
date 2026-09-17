set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
my_ans number;
begin
pro_add2(n1,n2,my_ans);
dbms_output.put_line('answer of n1 +n2='||my_ans);
end;
/