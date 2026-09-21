SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE DeleteRecord (
    p_srno IN NUMBER
) AS
BEGIN
    DELETE FROM Employees
    WHERE srno = p_srno;
    
    IF SQL%FOUND THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Record with srno ' || p_srno || ' deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Error: Record with srno ' || p_srno || ' not found.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END DeleteRecord;
/

SHOW ERRORS;