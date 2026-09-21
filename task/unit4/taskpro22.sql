SET SERVEROUTPUT ON;

-- Table creation block (runs only if table does not exist)
BEGIN
   EXECUTE IMMEDIATE 'CREATE TABLE Employees (
       srno NUMBER PRIMARY KEY,
       name VARCHAR2(50),
       department VARCHAR2(50)
   )';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -955 THEN
         RAISE;
      END IF;
END;
/


CREATE OR REPLACE PROCEDURE InsertRecord (
    p_srno IN NUMBER,
    p_name IN VARCHAR2,
    p_dept IN VARCHAR2
) AS
BEGIN
    INSERT INTO Employees (srno, name, department)
    VALUES (p_srno, p_name, p_dept);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Record inserted successfully.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Record with srno ' || p_srno || ' already exists.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END InsertRecord;
/

