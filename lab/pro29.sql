SET SERVEROUTPUT ON;

DECLARE
   
   v_empno emp.empno%TYPE := &p_empno; 
   v_comm  emp.comm%TYPE;
   
   
   NULL_COMMISSION EXCEPTION;
BEGIN
   
   SELECT comm 
   INTO v_comm 
   FROM emp 
   WHERE empno = v_empno;

   
   IF v_comm IS NULL THEN
      RAISE NULL_COMMISSION;
   ELSE
      DBMS_OUTPUT.PUT_LINE('EMPNO: ' || v_empno || ' | Commission: ' || v_comm);
   END IF;

EXCEPTION
   WHEN NULL_COMMISSION THEN
      DBMS_OUTPUT.PUT_LINE('Exception Raised: NULL_COMMISSION');
      DBMS_OUTPUT.PUT_LINE('Details: No commission value (NULL) is available for EMPNO ' || v_empno);
      
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Error: Employee with EMPNO ' || v_empno || ' does not exist.');
      
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Unexpected Error: ' || SQLERRM);
END;
/