SET SERVEROUTPUT ON;

DECLARE
    
    v_student_name RESULT.student_name%TYPE := '&student_name';
    v_result_score RESULT.score%TYPE;
BEGIN
   
    SELECT score 
    INTO v_result_score
    FROM RESULT
    WHERE student_name = v_student_name;
    
    
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_student_name);
    DBMS_OUTPUT.PUT_LINE('Result Score: ' || v_result_score);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: No record found for student "' || v_student_name || '".');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Multiple records found for "' || v_student_name || '".');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
/