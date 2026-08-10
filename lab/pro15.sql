DECLARE
    
    CURSOR c_departments IS
        SELECT department_id, department_name 
        FROM departments;

   
    CURSOR c_employees (p_dept_id departments.department_id%TYPE) IS
        SELECT emp_name, basic_salary, 
               (basic_salary + NVL(hra, 0) + NVL(da, 0)) AS gross_salary
        FROM employees
        WHERE department_id = p_dept_id;

    
    v_total_dept_gross NUMBER;
    v_emp_count NUMBER;
BEGIN
    
    FOR dept_rec IN c_departments LOOP
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE('Department: ' || dept_rec.department_name || ' (ID: ' || dept_rec.department_id || ')');
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
        DBMS_OUTPUT.PUT_LINE(RPAD('Employee Name', 25) || RPAD('Basic Salary', 15) || 'Gross Salary');
        DBMS_OUTPUT.PUT_LINE(RPAD('-', 23, '-') || ' ' || RPAD('-', 13, '-') || ' ' || RPAD('-', 12, '-'));

        v_total_dept_gross := 0;
        v_emp_count := 0;

       
        FOR emp_rec IN c_employees(dept_rec.department_id) LOOP
            DBMS_OUTPUT.PUT_LINE(
                RPAD(emp_rec.emp_name, 25) || 
                RPAD(TO_CHAR(emp_rec.basic_salary, '999,999.99'), 15) || 
                TO_CHAR(emp_rec.gross_salary, '999,999.99')
            );
            -- Accumulate department total gross salary
            v_total_dept_gross := v_total_dept_gross + emp_rec.gross_salary;
            v_emp_count := v_emp_count + 1;
        END LOOP;

       
        IF v_emp_count = 0 THEN
            DBMS_OUTPUT.PUT_LINE('No employees found in this department.');
        ELSE
            DBMS_OUTPUT.PUT_LINE(RPAD('-', 52, '-'));
            DBMS_OUTPUT.PUT_LINE('Total Department Gross Salary: ' || TO_CHAR(v_total_dept_gross, '999,999.99'));
        END IF;
        
        DBMS_OUTPUT.PUT_LINE(CHR(10)); -- Add a blank line between departments
    END LOOP;
END;
/