SET SERVEROUTPUT ON;


CREATE OR REPLACE PROCEDURE UpdateBStatus (
    p_cnm     IN VARCHAR2,
    p_bstatus IN VARCHAR2
) AS
BEGIN
   
    UPDATE status
    SET BSTATUS = p_bstatus
    WHERE TRIM(CNM) = TRIM(p_cnm);

    IF SQL%FOUND THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Status updated to ''' || p_bstatus || ''' for CNM: ' || p_cnm);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Error: Record with CNM ''' || p_cnm || ''' not found.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END UpdateBStatus;
/

SHOW ERRORS;