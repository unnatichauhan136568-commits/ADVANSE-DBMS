CREATE OR REPLACE PROCEDURE update_emp_sal
IS
BEGIN
    
    UPDATE emp
    SET sal = sal * 1.10
    WHERE deptno = 20;

    COMMIT;
END update_emp_sal;
/