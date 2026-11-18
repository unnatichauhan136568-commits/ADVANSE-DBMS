CREATE OR REPLACE PROCEDURE raise_sal_by_amount (
    p_deptno IN emp.deptno%TYPE,
    p_amount IN NUMBER
)
IS
BEGIN
    
    UPDATE emp
    SET sal = sal + p_amount
    WHERE deptno = p_deptno;

    COMMIT;
END raise_sal_by_amount;
/