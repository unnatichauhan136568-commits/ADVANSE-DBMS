-- Step 1: Create the procedure with a valid name (using underscore)
CREATE OR REPLACE PROCEDURE pro_show_message IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome to PL/SQL Programming!');
END pro_show_message;
/

