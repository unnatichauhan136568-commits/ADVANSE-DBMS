--print hello word on screen
set serveroutput on
begin
       dbms_output.put_line('hello!');
       dbms_output.put_line('welcome');
end;
\