
--programm sum +,-,*,/
set serveroutput on
declare

no1 number:=&no1;
no2 number:=&no2;
a number; --addition
s number; --subtrsction
m number; --multiplication
d number; --divison

begin

a:=no1+no2;
s:=no1-no2;
m:=no1*no2;
d:=no1/no2;

dbms_output.put_line('no1+no2:'||a);
dbms_output.put_line('no1-no2:'||s);
dbms_output.put_line('no1*no2:'||m);
dbms_output.put_line('no1/no2:'||d);

end;
/