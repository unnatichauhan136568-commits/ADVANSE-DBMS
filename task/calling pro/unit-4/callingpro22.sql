SET SERVEROUTPUT ON;

DECLARE
    id NUMBER := &id;
    nm emp.ename%TYPE;
BEGIN
    search_emp(id, nm);
    DBMS_OUTPUT.PUT_LINE('Ename: ' || nm);
END;
/