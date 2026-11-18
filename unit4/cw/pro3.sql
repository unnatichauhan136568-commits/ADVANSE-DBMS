CREATE OR REPLACE PROCEDURE pro_add(x IN NUMBER, y IN NUMBER)
IS
    ans NUMBER;
BEGIN
    ans := x + y;
    DBMS_OUTPUT.PUT_LINE('answer=' || ans);
END pro_add;
/