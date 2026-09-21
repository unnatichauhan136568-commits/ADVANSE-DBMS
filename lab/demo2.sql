SET SERVEROUTPUT ON;

DECLARE
   nm CHAR(15) := '&nm';
   ename CHAR(15);
BEGIN
   ename := nm;
   DBMS_OUTPUT.PUT_LINE('Entered Name: ' || ename);
END;
/