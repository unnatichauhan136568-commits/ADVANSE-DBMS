--proceduce creation use in
create or replace procedure promax(x IN number,y
in number)
IS
m number;
begin
If x > y then
m:=x;
dbms_output.put_line(m||'X is max');
else
m:=y;
dbms_output.put_line(m||'Y is max');
end if;
end promax;
/
To execute this procedure:
Set serveroutput on
Exec promax(100,200)