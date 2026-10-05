
CREATE OR REPLACE FUNCTION square_num (
    p_number IN NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_number * p_number;
END square_num;
/


SET SERVEROUTPUT ON;

DECLARE
    v_input  NUMBER := 7;
    v_result NUMBER;
BEGIN
    v_result := square_num(v_input);
    DBMS_OUTPUT.PUT_LINE('The square of ' || v_input || ' is: ' || v_result);
END;
/