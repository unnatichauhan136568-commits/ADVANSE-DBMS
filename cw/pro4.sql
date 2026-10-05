CREATE OR REPLACE PROCEDURE pro_add2(x IN NUMBER, y IN NUMBER, ans OUT NUMBER)
IS
BEGIN
    ans := x + y;
END pro_add2;
/