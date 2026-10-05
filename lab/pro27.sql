SET SERVEROUTPUT ON;

DECLARE
   v_str VARCHAR2(20) := '100'; 
   v_num NUMBER;
BEGIN
   
   SELECT TO_NUMBER(v_str) 
   INTO v_num 
   FROM dual;

   DBMS_OUTPUT.PUT_LINE('Successfully Converted Number: ' || v_num);

EXCEPTION
   WHEN INVALID_NUMBER THEN
      DBMS_OUTPUT.PUT_LINE('Exception Caught: Invalid number conversion.');
END;
/