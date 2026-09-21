--disp first record using explicit cursor
set serveroutput on
declare
--(1) declare cursor
cursor c1 IS select rlno,name,div from stud;
--declare cursor variables.
xrlno stud.rlno%TYPE;
xnm stud.name%TYPE;
xdiv stud.div%TYPE;
begin
--(2) open cursor
open c1;
--(3) fetch data from cursor and store into cursor variable
Fetch c1 INTO xrlno ,xnm, xdiv ;
--(4) other process
dbms_output.put_line('Rollno:'||xrlno);
dbms_output.put_line('Student Name:'||xnm);
dbms_output.put_line('Division:'||xdiv);
--(5) close cursor
close c1;
end;
/