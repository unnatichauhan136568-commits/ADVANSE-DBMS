set serveroutput on
declare
n1 number:=&n1;
n2 number:=&n2;
ans number;
begin
promax1(n1,n2,ans);
dbms_output.put_line(ans||' is max no');
end;
/