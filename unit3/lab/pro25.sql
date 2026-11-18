SET SERVEROUTPUT ON;

DECLARE
   
    v_deptno          emp.deptno%TYPE := &p_deptno;
    v_rows_inserted   NUMBER := 0;

    
    CURSOR emp_cursor IS
        SELECT * FROM emp WHERE deptno = v_deptno;

    emp_rec emp_cursor%ROWTYPE;

   
    NO_DEPT_FOUND EXCEPTION;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO emp_rec;
        EXIT WHEN emp_cursor%NOTFOUND;

        
        INSERT INTO emp_backup VALUES emp_rec;

        v_rows_inserted := v_rows_inserted + 1;
    END LOOP;

    CLOSE emp_cursor;

    
    IF v_rows_inserted = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_rows_inserted || ' record(s) inserted into EMP_BACKUP for Department ' || v_deptno);
    COMMIT;

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: NO_DEPT_FOUND - No employee records found for Department ' || v_deptno);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Execution Error: ' || SQLERRM);
        ROLLBACK;
END;
/