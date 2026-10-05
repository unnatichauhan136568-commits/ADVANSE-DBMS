CREATE OR REPLACE PROCEDURE incr_sal ( xdeptno IN NUMBER,per     IN NUMBER)
IS
BEGIN
    UPDATE emp 
    SET sal = sal + (sal * (per / 100)) 
    WHERE deptno = xdeptno;

    COMMIT;
END incr_sal;
/