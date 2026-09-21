SET SERVEROUTPUT ON;

-- Drop existing table to clear old column structures
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE Booking CASCADE CONSTRAINTS';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN 
         RAISE;
      END IF;
END;
/

CREATE TABLE Booking (
    booking_id NUMBER PRIMARY KEY,
    C_name VARCHAR2(50),
    B_status VARCHAR2(20)
);


INSERT INTO Booking VALUES (101, 'Rahul', 'Pending');
COMMIT;


CREATE OR REPLACE PROCEDURE UpdateBStatus (
    p_cname   IN VARCHAR2,
    p_bstatus IN VARCHAR2
) AS
BEGIN
    UPDATE Booking
    SET B_status = p_bstatus
    WHERE C_name = p_cname;

    IF SQL%FOUND THEN
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Status updated to ''' || p_bstatus || ''' for C_name: ' || p_cname);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Error: Record with C_name ''' || p_cname || ''' not found.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END UpdateBStatus;
/

SHOW ERRORS;