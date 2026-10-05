--print square of inputted number
set sreveroutput on
declare
i number:=1;
n number:=10;
s number;
begin
loop
dbms_output.put_line(i*i);
i:=i+1;
exit when(i>n);
end loop;
end;
/