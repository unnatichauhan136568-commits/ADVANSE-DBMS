set serveroutput on
declare
c number:=&c;
xcube number;
begin
xcube:=fun_cube(c);
dbms_output.put_line('answer of
cube:'||xcube);
end;
/