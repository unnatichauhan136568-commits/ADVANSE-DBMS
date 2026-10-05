CREATE OR REPLACE PROCEDURE search_emp (
    xempid IN  NUMBER,
    enm    OUT emp.ename%TYPE
)
IS
BEGIN
    SELECT ename INTO enm 
    FROM emp 
    WHERE empno = xempid;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        enm := 'NOT FOUND';
        DBMS_OUTPUT.PUT_LINE('ID not found');
END search_emp;
/