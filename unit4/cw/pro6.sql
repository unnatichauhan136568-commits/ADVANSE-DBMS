CREATE OR REPLACE PROCEDURE print_complete_name (x IN VARCHAR2) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Complete Name: ' || x);
END print_complete_name;
/