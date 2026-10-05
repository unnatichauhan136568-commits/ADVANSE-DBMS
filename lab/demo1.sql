SET SERVEROUTPUT ON;

DECLARE
   age NUMBER := &age;
   
   user_defined_exception EXCEPTION; 
BEGIN
   IF age < 18 THEN
      RAISE user_defined_exception;
   ELSE
      DBMS_OUTPUT.PUT_LINE('Age accepted: ' || age);
   END IF;
EXCEPTION
   WHEN user_defined_exception THEN
      DBMS_OUTPUT.PUT_LINE('Error: Underage access attempt.');
END;
/