--disp first record using explicit cursor
set serveroutput on
declare

cursor c3  IS select emp_id,empnm,deptno,salary from emp;

xemp_id emp.emp_id %TYPE;
xempnm emp.empnm%TYPE;
xdeptno emp.deptno%TYPE;
xsalary emp.salary%TYPE;

begin

open c3;

Fetch c3 INTO xemp_id,xempnm,xdeptno,xsalary ;

dbms_output.put_line('empid:'||xemp_id);
dbms_output.put_line('emp Name:'||xempnm);
dbms_output.put_line('deptno:'||xdeptno);
dbms_output.put_line('salary:'||xsalary);


close c3;
end;
/