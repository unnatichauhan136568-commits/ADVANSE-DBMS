SET SERVEROUTPUT ON;

DECLARE
   v_num1   NUMBER := 10;
   v_num2   NUMBER := 2; 
   v_result NUMBER;
   
   v_err_code NUMBER;
   v_err_msg  VARCHAR2(255);
BEGIN
   v_result := v_num1 / v_num2;
   DBMS_OUTPUT.PUT_LINE('Calculation Successful! Result: ' || v_result);

EXCEPTION
   WHEN OTHERS THEN
      v_err_code := SQLCODE;
      v_err_msg  := SQLERRM;
      DBMS_OUTPUT.PUT_LINE('Error Code : ' || v_err_code);
      DBMS_OUTPUT.PUT_LINE('Error Message: ' || v_err_msg);
END;
/