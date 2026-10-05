SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE pro20_proc (
    p_emp_id IN NUMBER,
    p_salary IN NUMBER
) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Processing ID: ' || p_emp_id || ' with new salary: ' || p_salary);
END pro20_proc;
/