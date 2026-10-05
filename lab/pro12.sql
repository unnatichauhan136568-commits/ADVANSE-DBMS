DECLARE
    CURSOR c_emp IS
        SELECT emp_id, salary 
        FROM empl 
        WHERE deptno = 20
        FOR UPDATE OF salary;

    v_emp_id   empl.emp_id%TYPE;
    v_old_sal  empl.salary%TYPE;
    v_new_sal  empl.salary%TYPE;
    v_count    NUMBER := 0;
BEGIN
    IF NOT c_emp%ISOPEN THEN
        OPEN c_emp;
    END IF;

    IF c_emp%ISOPEN THEN
        LOOP
            FETCH c_emp INTO v_emp_id, v_old_sal;
            EXIT WHEN c_emp%NOTFOUND;
            
            v_new_sal := v_old_sal * 1.05;
            
            UPDATE empl
            SET salary = v_new_sal
            WHERE CURRENT OF c_emp;
            
            INSERT INTO empl1_update (emp_id, old_sal, new_sal, update_date)
            VALUES (v_emp_id, v_old_sal, v_new_sal, SYSDATE);
            
            v_count := v_count + 1;
        END LOOP;
        
        CLOSE c_emp;
    END IF;

    IF v_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Success: Salary updated for ' || v_count || ' employee(s) in Dept 20.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Notice: No employee records exist for Department 20.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        IF c_emp%ISOPEN THEN
            CLOSE c_emp;
        END IF;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/