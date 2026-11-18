SET SERVEROUTPUT ON;

DECLARE
   CURSOR emp_cursor IS
      SELECT empnm, deptno, salary 
      FROM empl;
BEGIN
   FOR b IN emp_cursor LOOP
      DBMS_OUTPUT.PUT_LINE('EMPL Name:' || b.empnm || ' DEPT NO:' || b.deptno || ' SALARY:' || b.salary);
   END LOOP;
END;
/