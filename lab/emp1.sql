DECLARE
    v_salary emp.sal%TYPE;
    v_age    NUMBER := 50;
BEGIN
    
    SELECT sal 
    INTO v_salary 
    FROM emp 
    WHERE age = v_age;
    
    DBMS_OUTPUT.PUT_LINE('The salary of the employee who is ' || v_age || ' years old is: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Appropriate Message: No employee found with the age of ' || v_age || ' years.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Appropriate Message: Multiple employees found with the age of ' || v_age || ' years.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/