
CREATE OR REPLACE PROCEDURE promax1 (
    x IN NUMBER,
    y IN NUMBER,
    m OUT NUMBER
) IS
BEGIN
    IF x > y THEN
        m := x;
    ELSE
        m := y;
    END IF;
END promax1;
/


SHOW ERRORS PROCEDURE promax1;


SET SERVEROUTPUT ON;

DECLARE
    v_result NUMBER;
BEGIN
    promax1(25, 40, v_result);
    DBMS_OUTPUT.PUT_LINE('Maximum value is: ' || v_result);
END;
/