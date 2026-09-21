CREATE OR REPLACE PROCEDURE put_square (p_num IN NUMBER) IS
BEGIN
   DBMS_OUTPUT.PUT_LINE('Square: ' || (p_num * p_num));
END put_square;
/